#!/usr/bin/env python
import time
from flyt_python import api

#connect to drone
#drone = api.navigation(timeout=120000)  # instance of flyt droneigation class
drone = api.navigation()
# at least 3sec sleep time for the drone interface to initialize properly
time.sleep(2)

def pre_fligth_check():
        bat = drone.get_battery_status()
        print bat.remaining, bat.current, bat.voltage # Print the data
        time.sleep(2)

def flight_task():
        print 'Arming...'
        drone.arm()
        print 'Comlete arming'
        time.sleep(2)

        print 'Taking off on 5m...'
        drone.take_off(5.0)
        print 'Position hold on 5sec...'
        drone.position_hold()
        time.sleep(5)

        print 'Landing...'
        drone.land(async=False)
        time.sleep(5) 

        drone.disarm()
        print 'Ending test'

        drone.disconnect()      # shutdown the instance

pre_fligth_check()
flight_task()