#!/bin/bash -i

#check if script is run as 'root' user
if [ "${EUID}" -ne 0 ]
	then
	echo -e "\n[ERROR] run this script with sudo permission"
	exit 1
fi

if pgrep -x flytstartup 
	then
	echo 'flytstartup instance already running'
	exit 0
fi

if pgrep -x flytlaunch
then
	echo 'flytlaunch instance already running, stop_flytOS before running this script again'
	exit 1
fi

if [ $(rospack find core_api) != "/flyt/flytos/flytcore/share/core_api" ]
	then
	python -m compileall $(rospack find core_api)/scripts/updates/startup.py
	python -m compileall $(rospack find core_api)/scripts/updates/updates.py
	python -m compileall $(rospack find core_api)/scripts/updates/autopilot_detect.py
	python -m compileall $(rospack find flyt_ms)/src/flyt_ms/log_up.py
fi

d='/flyt/temp/updates'
test -d "$d" || mkdir -p "$d" && cp -ra $(rospack find core_api)/scripts/updates/* "$d"

if ! type "flytstartup" > /dev/null
	then
	echo "flytstartup command not found, creating a symlink"
	ln -s /usr/bin/python /usr/bin/flytstartup 
fi

$(rospack find core_api)/scripts/check_md5_paramfile.sh
#restoring core_api_autopilot.launch file if found to be empty.
if [ ! -f $(rospack find core_api)/launch/core_api_autopilot.launch ]; then cp $(rospack find core_api)/launch/core_api_autopilot.launch-bak $(rospack find core_api)/launch/core_api_autopilot.launch; fi
if [ "$(stat $(rospack find core_api)/launch/core_api_autopilot.launch -c %s)" -lt "1" ]; then cp $(rospack find core_api)/launch/core_api_autopilot.launch-bak $(rospack find core_api)/launch/core_api_autopilot.launch; fi
grep "fcu_url" $(rospack find core_api)/launch/core_api_autopilot.launch > /dev/null; if [ $? -ne 0 ]; then cp $(rospack find core_api)/launch/core_api_autopilot.launch-bak $(rospack find core_api)/launch/core_api_autopilot.launch;fi

flytstartup $d/startup.pyc $*

rm -rf $d

exit 0
