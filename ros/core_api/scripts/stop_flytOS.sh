#!/bin/bash -i

#shell color descriptions
YLW='\033[1;33m'
RED='\033[0;31m'
GRN='\033[1;32m'
NC='\033[0m' # No Color

#check if script is run as 'root' user
if [ "${EUID}" -ne 0 ]
	then
	echo -e "\n${RED}[ERROR]${NC}: run this script with sudo permission"
	exit 77 #signal for permission denied EX_NOPERM from /usr/include/sysexits.h
fi

runtype="FlytOS"
triggertype=""
[ ! -z $1 ] && [ $1 == "--sitl" ] && runtype="FlytSim"
[ ! -z $1 ] && [ $1 == "--deb" ] && triggertype="debian"

print_progress() {
	while true
	do
		printf "."
		sleep 1
	done
}

kill_print_progress_on_exit() {
	[ ! -z $print_progress_pid ] && kill $print_progress_pid && echo -e " ${GRN}done${NC}"
}

trap kill_print_progress_on_exit EXIT

kill_flytstartup() {
	if pgrep -x flytstartup > /dev/null
		then
			printf "${YLW}Stopping Flytstartup... ${NC}It may take a few seconds..."
			pkill -x flytstartup
			i=0
			flytstartup_killed=0
			while [ "$i" -le 40 ]
			do
				if pgrep -x flytstartup > /dev/null
				then
					sleep 1
					i=`expr $i + 1`
				else
					flytstartup_killed=1
					break
				fi
			done

			if [ $flytstartup_killed -eq 0 ]
				then
					echo -e "${RED}[ERROR]${NC}: Flytstartup could not be stopped. Execute this script again..."
					exit 75 # EX_TEMPFAIL from /usr/include/sysexits.h
			fi
			echo -e " ${GRN}done${NC}"
		else
			echo -e "${GRN}Flytstartup not running${NC}"
	fi
}

kill_flytlaunch() {
	if pgrep -x flytlaunch > /dev/null
		then
			printf "${YLW}Stopping ${runtype}... ${NC}It may take a few seconds..."
			print_progress &
			print_progress_pid=$!
			pkill -x flytlaunch
			i=0
			flytlaunch_killed=0
			while [ "$i" -le 40 ]
			do
				if pgrep -x flytlaunch > /dev/null
				then
					sleep 1
					i=`expr $i + 1`
				else
					flytlaunch_killed=1
					break
				fi
			done

			if [ $flytlaunch_killed -eq 0 ]
				then
					echo -e "\n${RED}[ERROR]${NC}: ${runtype} could not be stopped. Execute this script again..."
					exit 75 # EX_TEMPFAIL from /usr/include/sysexits.h
			fi
		else
			echo -e "${GRN}${runtype} not running${NC}"
	fi
}

if [ "$triggertype" != "debian" ]
	then
	kill_flytstartup
fi

kill_flytlaunch

username=$(echo $HOME | awk -F '/' '{print $3}')
[ -d $HOME/.ros ] && chown -R $username:$username $HOME/.ros
[ -d $HOME/.gazebo ] && chown -R $username:$username $HOME/.gazebo

exit 0
