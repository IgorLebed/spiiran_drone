#!/bin/bash -i

if [ $# -lt 1 ]
	then
		echo "USAGE: [ERROR] This script expects absolute/relative filepath of nuttx-navstik-v1-default.flyt"
		exit -1
fi

if [ "${EUID}" -ne 0 ]
	then
	echo "run this script with sudo permission"
	exit -1
fi

filepath=$1
if [ -n "$filepath" ]
	then
	if [ ! -f "$filepath" ]
		then
			echo "$filepath not found"
			exit -1
	fi
fi	

if pgrep -x flytlaunch 
	then
	$(rospack find core_api)/scripts/kill_flytOS.sh
fi
if [ $? -eq 0 ]
	then
		python $(rospack find core_api)/scripts/px_uploader.py --port /dev/ttySAC0 --baud-bootloader 921600 --baud-flightstack 921600 "$filepath"
		if [ $? -eq 0 ]
			then
				echo -e "\n\nAutoPilot Firmware Upgrade successful....Restarting FlytOS\n\n"
				$(rospack find core_api)/scripts/start_flytOS.sh
		else
			echo -e "\n\nAutoPilot Firmware Upgrade FAILED. \nSwitch OFF FlytPOD by pressing Power Button and remove PowerSupply. \nRepeat the above steps after plugging in PowerSupply and turning on FlytPOD \n\n"
			exit -1
		fi
else
	exit -1
fi

exit 0
