#!/usr/bin/env python
import time
from flyt_python import api

#connect to drone
drone = api.navigation(timeout=120000)  # instance of flyt droneigation class
# at least 3sec sleep time for the drone interface to initialize properly
time.sleep(3)

print 'taking off'
drone.take_off(3.0)

print 'Landing'
drone.land(async=False)
#drone.land(async=True)
drone.disarm()

# shutdown the instance
drone.disconnect()
