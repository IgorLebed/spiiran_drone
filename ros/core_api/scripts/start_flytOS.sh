#!/bin/bash -i

#check if script is run as 'root' user
if [ "${EUID}" -ne 0 ]
	then
	echo -e "\n[ERROR] run this script with sudo permission"
	exit 1
fi

[ -d /flyt/logs/runlogs ] || mkdir -p /flyt/logs/runlogs
[ -f /flyt/logs/runlogs/flyt_runlogs.log ] && date=$(echo `date --reference=/flyt/logs/runlogs/flyt_runlogs.log -I'minutes'` | awk -F '+' '{print $1}' | tr "T" _ | tr ":" -) && cp /flyt/logs/runlogs/flyt_runlogs.log /flyt/logs/runlogs/flyt_runlogs_${date}.log

[ -d /flyt/logs/runlogs ] && cd /flyt/logs/runlogs && ls -1tr | head -n -10 | xargs -d '\n' rm -f --
exec > >(tee -i /flyt/logs/runlogs/flyt_runlogs.log)
exec 2>&1

run_type=$1
if ! type "flytlaunch" > /dev/null 
	then
	echo "flytlaunch command not found, creating a symlink to roslaunch"
	ln -s /opt/ros/kinetic/bin/roslaunch /opt/ros/kinetic/bin/flytlaunch
fi

if pgrep -x flytlaunch
then
	echo 'flytlaunch instance already running, stop_flytOS before running this script again'
	exit 1
fi

if [ -f $(rospack find core_api)/launch/user.launch ]
	then
	echo 'User launch file found'
	user_launch_exists=1
else
	echo 'User launch file not found'
	user_launch_exists=0
fi

read namespace < $(rospack find core_api)/param_files/global_namespace.yaml

case "$run_type" in
	--sitl | --px4-sitl)
			stdbuf -oL -eL flytlaunch core_api core_api_autopilot.launch global_namespace:=$namespace is_px4_sitl:=true user_launch_exists:=$user_launch_exists &
		;;

	--apm-sitl)
			stdbuf -oL -eL flytlaunch core_api core_api_autopilot.launch global_namespace:=$namespace is_apm_sitl:=true user_launch_exists:=$user_launch_exists &
		;;

	--px4)
			cd $(rospack find core_api)/launch
			sed 's|/apm.launch|/px4.launch|g' core_api_autopilot.launch > core_api_autopilot.launch.tmp && (mv core_api_autopilot.launch.tmp core_api_autopilot.launch)
			stdbuf -oL -eL flytlaunch core_api core_api_autopilot.launch global_namespace:=$namespace user_launch_exists:=$user_launch_exists &
		;;

	--apm)
			cd $(rospack find core_api)/launch
			sed 's|/px4.launch|/apm.launch|g' core_api_autopilot.launch > core_api_autopilot.launch.tmp && (mv core_api_autopilot.launch.tmp core_api_autopilot.launch)
			stdbuf -oL -eL flytlaunch core_api core_api_autopilot.launch global_namespace:=$namespace user_launch_exists:=$user_launch_exists &
		;;

	--dji)
			stdbuf -oL -eL flytlaunch core_api core_api_autopilot.launch global_namespace:=$namespace is_dji:=true dji_enc_key_c:=$2 dji_app_id_c:=$3 user_launch_exists:=$user_launch_exists &
		;;

  *)
			cd $(rospack find core_api)/launch
			stdbuf -oL -eL flytlaunch core_api core_api_autopilot.launch global_namespace:=$namespace user_launch_exists:=$user_launch_exists &
		;;
esac

exit 0
