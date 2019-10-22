#!/bin/bash -i

#check if script is run as 'root' user
if [ "${EUID}" -ne 0 ]
	then
	echo -e "\n[ERROR] run this script with sudo permission"
	exit 1
fi

run_type=$1
#restoring core_api_autopilot.launch file if found to be empty.
if [ ! -f $(rospack find core_api)/launch/core_api_autopilot.launch ]; then cp $(rospack find core_api)/launch/core_api_autopilot.launch-bak $(rospack find core_api)/launch/core_api_autopilot.launch; fi
if [ "$(stat $(rospack find core_api)/launch/core_api_autopilot.launch -c %s)" -lt "1" ]; then cp $(rospack find core_api)/launch/core_api_autopilot.launch-bak $(rospack find core_api)/launch/core_api_autopilot.launch; fi
grep "fcu_url" $(rospack find core_api)/launch/core_api_autopilot.launch > /dev/null; if [ $? -ne 0 ]; then cp $(rospack find core_api)/launch/core_api_autopilot.launch-bak $(rospack find core_api)/launch/core_api_autopilot.launch;fi

case "$run_type" in
	--apm)
		$(rospack find core_api)/scripts/launch_flytOS.sh --apm-sitl
		;;

	--px4)
		$(rospack find core_api)/scripts/launch_flytOS.sh --px4-sitl
		;;

	--cfg)
		cd $(rospack find core_api)/scripts
		sed "/\[autopilot\]/c\#\[autopilot\]" flytsim.cfg > flytsim.cfg.tmp && (mv flytsim.cfg.tmp flytsim.cfg)
		sed "/\[location\]/c\#\[location\]" flytsim.cfg > flytsim.cfg.tmp && (mv flytsim.cfg.tmp flytsim.cfg)
		sed "/\[advanced\]/c\#\[advanced\]" flytsim.cfg > flytsim.cfg.tmp && (mv flytsim.cfg.tmp flytsim.cfg)
		source flytsim.cfg
		sed "/#\[autopilot\]/c\\[autopilot\]" flytsim.cfg > flytsim.cfg.tmp && (mv flytsim.cfg.tmp flytsim.cfg)
		sed "/#\[location\]/c\\[location\]" flytsim.cfg > flytsim.cfg.tmp && (mv flytsim.cfg.tmp flytsim.cfg)
		sed "/#\[advanced\]/c\\[advanced\]" flytsim.cfg > flytsim.cfg.tmp && (mv flytsim.cfg.tmp flytsim.cfg)
		if [ "$simpilot" == "apm" ]
			then
			cd $(rospack find core_api)/launch
			sed 's/"lat" value=".*"/"lat" value="'$lat'"/g' core_api_autopilot.launch > core_api_autopilot.launch.tmp && (mv core_api_autopilot.launch.tmp core_api_autopilot.launch)
			sed 's/"lon" value=".*"/"lon" value="'$lon'"/g' core_api_autopilot.launch > core_api_autopilot.launch.tmp && (mv core_api_autopilot.launch.tmp core_api_autopilot.launch)
			sed 's/"alt" value=".*"/"alt" value="'$alt'"/g' core_api_autopilot.launch > core_api_autopilot.launch.tmp && (mv core_api_autopilot.launch.tmp core_api_autopilot.launch)
			$(rospack find core_api)/scripts/launch_flytOS.sh --apm-sitl
		else 
			if [ "$simpilot" == "px4" ]
				then
				cd $(rospack find core_api)/launch
				if [ "$gui_on" == "true" ]
					then
					sed 's/"gui" value="false"/"gui" value="true"/g' core_api_autopilot.launch > core_api_autopilot.launch.tmp && (mv core_api_autopilot.launch.tmp core_api_autopilot.launch)
				else
					sed 's/"gui" value="true"/"gui" value="false"/g' core_api_autopilot.launch > core_api_autopilot.launch.tmp && (mv core_api_autopilot.launch.tmp core_api_autopilot.launch)
				fi
				if [ "$camera_on" == "true" ]
					then
					sed 's/"camera" value="false"/"camera" value="true"/g' core_api_autopilot.launch > core_api_autopilot.launch.tmp && (mv core_api_autopilot.launch.tmp core_api_autopilot.launch)
				else
					sed 's/"camera" value="true"/"camera" value="false"/g' core_api_autopilot.launch > core_api_autopilot.launch.tmp && (mv core_api_autopilot.launch.tmp core_api_autopilot.launch)
				fi
				if [ "$world" == "city" ] || [ "$world" == "empty" ]
					then
					sed 's/"world" value=".*"/"world" value="'$world'"/g' core_api_autopilot.launch > core_api_autopilot.launch.tmp && (mv core_api_autopilot.launch.tmp core_api_autopilot.launch)
				fi
				$(rospack find core_api)/scripts/launch_flytOS.sh --px4-sitl
			else
				echo "Incorrect value set to simpilot in flytsim.cfg file at $(rospack find core_api)/scripts/flytsim.cfg. Set it to either \"px4\" or \"apm\""
				exit 1
			fi
		fi
		;;

	*)
		$(rospack find core_api)/scripts/launch_flytSim.sh --cfg
		;;
esac

exit $?
