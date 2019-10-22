#!/bin/bash

#fast blink installation LED - USER-LED#1
while [ 1 ]
do
	echo 0 > /sys/class/gpio/gpio30/value #ON
	sleep 0.05
	echo 1 > /sys/class/gpio/gpio30/value #OFF
	sleep 0.05
done
exit 0