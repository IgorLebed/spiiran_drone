#!/bin/bash

#DONOT TOUCH THIS FILE

#Configure GPIOs
echo 29 > /sys/class/gpio/export
echo 30 > /sys/class/gpio/export
echo 18 > /sys/class/gpio/export
echo 19 > /sys/class/gpio/export

#input GPIOs
echo 24 > /sys/class/gpio/export
echo 25 > /sys/class/gpio/export
echo 23 > /sys/class/gpio/export
echo 33 > /sys/class/gpio/export
        
#Set the direction
echo out > /sys/class/gpio/gpio29/direction
echo out > /sys/class/gpio/gpio30/direction

echo in > /sys/class/gpio/gpio24/direction
echo in > /sys/class/gpio/gpio25/direction
echo in > /sys/class/gpio/gpio23/direction
echo in > /sys/class/gpio/gpio33/direction

#write the val 
echo 1 > /sys/class/gpio/gpio29/value
echo 1 > /sys/class/gpio/gpio30/value
exit 0
