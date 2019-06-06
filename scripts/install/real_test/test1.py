#!/usr/bin/env python
import time
from flyt_python import api

#connect to drone
drone = api.navigation(timeout=120000)  # instance of flyt droneigation class
# at least 3sec sleep time for the drone interface to initialize properly
time.sleep(3)

#add access flight to drone"OFFBOARD""
#drone.access_request()

print 'taking off'
drone.take_off(5.0)

print 'Landing'
drone.land(async=False)

# shutdown the instance
drone.disconnect()
