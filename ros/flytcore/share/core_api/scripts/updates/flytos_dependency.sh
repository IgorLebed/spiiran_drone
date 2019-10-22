#!/bin/bash -e
# install dependency script for FlytOS

#check if script is run as 'root' user
if [ "${EUID}" -ne "0" ]
       then
       echo -e "\n[ERROR] run this script with sudo permission"
       exit 1
fi

#installing known python dependencies
sudo apt-get update
sudo apt-get install -y ros-kinetic-opencv3 ros-kinetic-cv-bridge ros-kinetic-compressed-image-transport libtinyxml2-dev ros-kinetic-usb-cam

exit 0
