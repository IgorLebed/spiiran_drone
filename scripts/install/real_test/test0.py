#!/usr/bin/env python
import time
from flyt_python import api

#connect to drone
#drone = api.navigation(timeout=120000)  # instance of flyt droneigation class
drone = api.navigation()
# at least 3sec sleep time for the drone interface to initialize properly
time.sleep(3)

bat = drone.get_battery_status()
# Print the data
print bat.remaining, bat.current, bat.voltage
time.sleep(2)

print 'arm'
drone.arm()
time.sleep(5)

drone.disarm()

# shutdown the instance
drone.disconnect()
