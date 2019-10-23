#!/bin/bash -i


install_success=$1
download_path=$2

if [ -n "$install_success" ] 
then
	if [ "$install_success" == "1" ] 
	then				
		echo 'Installing flytOS with backup'
	else	
		echo 'Installing flytOS without backup'				
	fi

fi

sleep 5

exit 0
