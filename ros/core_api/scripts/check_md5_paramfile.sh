#!/bin/bash -i

#check if script is run as 'root' user
if [ "${EUID}" -ne 0 ]
	then
	echo -e "\n[ERROR] run this script with sudo permission"
	exit 1
fi

if [ -f $(rospack find core_api)/param_files/flyt_params.md5sum ]
	then
	md5sum -c --status $(rospack find core_api)/param_files/flyt_params.md5sum
	if [ $? != "0" ]
		then
		rm $(rospack find core_api)/param_files/flyt_params.md5sum
		rm $(rospack find core_api)/param_files/flyt_params.yaml
		touch $(rospack find core_api)/param_files/flyt_params.yaml
		md5sum $(rospack find core_api)/param_files/flyt_params.yaml > $(rospack find core_api)/param_files/flyt_params.md5sum
	fi
else
	rm $(rospack find core_api)/param_files/flyt_params.yaml
	touch $(rospack find core_api)/param_files/flyt_params.yaml
	md5sum $(rospack find core_api)/param_files/flyt_params.yaml > $(rospack find core_api)/param_files/flyt_params.md5sum
fi

exit $?
