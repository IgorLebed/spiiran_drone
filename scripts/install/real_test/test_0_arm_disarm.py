#!/usr/bin/env python
import time
from flyt_python import api

#connect to drone
#drone = api.navigation(timeout=120000)  # instance of flyt droneigation class
drone = api.navigation()
time.sleep(2)    # at least 3sec sleep time for the drone interface to initialize properly

def pre_fligth_check():
        bat = drone.get_battery_status()
        print bat.remaining, bat.current, bat.voltage   # Print the data
        time.sleep(2)

def arm_disarm():
        print 'Arming...'
        drone.arm()
        print 'Arm 5sec'
        time.sleep(5)

        drone.disarm()
        print 'Vehicle disarm'
        time.sleep(2)

        drone.disconnect()      # shutdown the instance

pre_fligth_check()
arm_disarm()
