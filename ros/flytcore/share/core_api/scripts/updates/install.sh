#!/bin/bash -i

#check if script is run as 'root' user
if [ "${EUID}" -ne 0 ]
	then
	echo -e "\n[ERROR] run this script with sudo permission"
	exit 1
fi

#verify that minimum of 2 arguments are sent to script
if [ $# -lt 2 ]
	then
	echo -e "\nUSAGE: [ERROR] This script expects previous_installation_successful_flag and zip_file_name received as argument"
	exit 1
fi

#feeding values to variables
prev_install_flag=$1
zipfilename=$2

#static folder paths
downloaddirectory="/flyt/updates/download"
installdirectory="updates/installed"
flytpilotname="nuttx-flytpod-v1-default.flyt"
userspace="userapps"
flytbackup="/flyt_bak"
licfile="flytos/flytcore/share/core_api/scripts/lic_data.txt"
hwidfile="flytos/flytcore/share/core_api/scripts/hwid"
databasefile="flytos/flytcore/lib/python2.7/dist-packages/instance/rostful_auth.db"
filepath=$downloaddirectory/$zipfilename/$flytpilotname
dependency_list="$(rospack find core_api)/scripts/updates/flytos_dependency.sh"
post_install="$(rospack find core_api)/scripts/updates/post_install.sh"
is_dji="false"

#create backup according to prev_install_flag
if [ "$prev_install_flag" -lt "0" -o "$prev_install_flag" -gt "1" ]
	then
	echo -e "\n[ERROR] prev_install_flag value $prev_install_flag not valid"
	exit 1
else if [ $prev_install_flag = 0 ]
	then
	echo -e "\n[WARN] prev installation FAILED, not creating another backup"
else if [ $prev_install_flag = 1 ]
	then
	echo -e "\n[INFO] creating backup at $flytbackup of current flytos instance and removing previous backup"
	[ -d $flytbackup ] && rm -r $flytbackup
	cp -ra /flyt $flytbackup
fi
fi
fi

#unzip downloaded zip file into download directory
if [ ! -f $downloaddirectory/$zipfilename.zip ]
	then
	echo -e "\n[INFO] $downloaddirectory/$zipfilename.zip not found"
	exit 1
else
	echo -e "\n[INFO] $downloaddirectory/$zipfilename.zip file found, unzipping it to $downloaddirectory/$zipfilename"
	[ -d $downloaddirectory/$zipfilename ] && rm -r $downloaddirectory/$zipfilename
	unzip $downloaddirectory/$zipfilename.zip -d $downloaddirectory/$zipfilename
	if [ $? -ne 0 ]
		then
		echo -e "\n[ERROR] Failed: unzipping $downloaddirectory/$zipfilename.zip"
		exit 1
	fi
fi

#try dry-run of extracted debian
echo -e "\n[INFO] dry running installation of $downloaddirectory/$zipfilename/*.deb"
dpkg --dry-run -i $downloaddirectory/$zipfilename/*.deb
if [ $? -ne 0 ]
	then
	echo -e "\n[ERROR] Failed: dry running installation of $downloaddirectory/$zipfilename/*.deb"
	echo -e "\n[INFO] Look out for dependency related/debug messages printed in log file"
	exit 1
else
	echo -e "\n[INFO] Success: dry running installation of $downloaddirectory/$zipfilename/*.deb. Continuing with installation procedure"
fi

#kill flytos instance
if pgrep -x flytlaunch 
	then
	echo -e "\n[INFO] Killing FlytOS instance"
	$(rospack find core_api)/scripts/kill_flytOS.sh
fi

#check if flytpilot firmware is available, if YES then burn the firmware to autopilot.
if [ -f "$filepath" ]
	then
	python $(rospack find core_api)/scripts/px_uploader.py --port /dev/ttySAC0 --baud-bootloader 921600 --baud-flightstack 921600 "$filepath"
	if [ $? -eq 0 ]
		then
		echo -e "\n\n[INFO] AutoPilot Firmware Upgrade successful....\n\n"
	else
		echo -e "\n\n[FATAL] AutoPilot Firmware Upgrade FAILED. \nSwitch OFF FlytPOD by pressing Power Button and remove PowerSupply and try again. \n\n"
		exit 1
	fi
fi

#copy back user files and folders
function copybak {
	echo -e "\n[INFO] Copying userspace folder back to installspace"
	cp -ra $flytbackup/$userspace /flyt
	if [ -f $flytbackup/$hwidfile ]
		then
		echo -e "\n[INFO] Copying existing hwid file from backup"
		cp -a $flytbackup/$hwidfile /flyt/$hwidfile
	fi
	echo -e "\n[INFO] Copying existing license file from backup"
	cp -a $flytbackup/$licfile /flyt/$licfile
	if [ -f $flytbackup/$databasefile ]
		then
		echo -e "\n[INFO] Copying existing database file from backup"
		cp -a $flytbackup/$databasefile /flyt/$databasefile
	fi
	echo -e "\n[INFO] Copying installed debian to install directory"
	[ -d /flyt/$installdirectory ] && rm -r /flyt/$installdirectory
	mkdir -p /flyt/$installdirectory
}

#making sure package installer is ready and with no error
apt-get -f -y install
dpkg --configure -a
if [ `lsb_release -si` = "Debian" ]
	then
	isubuntu="false"
else
	isubuntu="true"
fi

#install FlytOS dependency
echo -e "\n[INFO] FlytOS dependencies will now be installed"
if [ $isubuntu == "false" ]
	then
	sed -i 's/ros-kinetic-[^ ]* //g' $dependency_list
fi
$dependency_list

# if [ $? -ne 0 ]
# 	then
# 	echo -e "[ERROR] FlytOS dependencies could not be installed, please check if you have a valid internet connection. Then go to docs.flytbase.com and install the dependencies"
# fi

#install FlytOS debian
dpkg --force-confnew --force-overwrite --force-confmiss -i $downloaddirectory/$zipfilename/*.deb

if [ $? -ne 0 ]
	then
	if [ -f $flytbackup/$installdirectory/*.deb ]
		then
		echo -e "\n[ERROR] FlytOS debian installation FAILED, kindly contact Flytbase admin. Reinstalling backup FlytOS"
		dpkg --force-confnew --force-overwrite -i $flytbackup/$installdirectory/*.deb

		if [ $? -eq 0 ]
			then
			apt-get -f -y install
			dpkg --configure -a
			echo -e "\n[INFO] Backup FlytOS debian installed with `flytos_version.sh`"
			copybak
			cp -ra $flytbackup/$installdirectory/*.* /flyt/$installdirectory/
			echo -e "\n[INFO] Removing downloaded corrupt debian folder and zip package"
			rm -r $downloaddirectory/$zipfilename && rm $downloaddirectory/$zipfilename.zip
			exit 1
		else
			apt-get -f -y install
			dpkg --configure -a
			echo -e "\n[FATAL] Backup FlytOS debian installation FAILED, kindly contact Flytbase admin."
			exit 1
		fi
	else
		echo -e "\n[ERROR] FlytOS debian installation FAILED, backup installation not found. Kindly contact Flytbase admin."
		apt-get -f -y install
		dpkg --configure -a
		exit 1
	fi
else
	apt-get -f -y install
	dpkg --configure -a
	echo -e "\n[INFO] FlytOS debian installed with `flytos_version.sh`"
	copybak
	cp -ra $downloaddirectory/$zipfilename/*.* /flyt/$installdirectory/
	echo -e "\n[INFO] Removing installed debian folder and zip package"
	rm -r $downloaddirectory/$zipfilename && rm $downloaddirectory/$zipfilename.zip
	$dependency_list
fi

exit 0
