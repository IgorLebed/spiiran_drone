#!/usr/bin/env python
from time import time
from time import sleep
from flyt_python import api


#drone = api.navigation(timeout=120000)  # instance of flyt droneigation class
drone = api.navigation()
sleep(2)


def point_left():
        drone.position_set(0, 5, 0, relative=True)

def point_right():
        drone.position_set(0, -5, 0, relative=True)

def point_forward():
        drone.position_set(-5, 0, 0, relative=True)

def point_backwards():
        drone.position_set(5, 0, 0, relative=True)

def arm_and_takeoff():
        print 'Arming...'
        drone.arm()
        sleep(2)

        print 'Taking off on 5m'
        drone.take_off(10.1)
        print 'Wait 2 sec..'
        sleep(2)

def landing_and_disarm():
        print 'Landing...'
        drone.land(async=False)
        sleep(5)
        print 'Disarming...'
        drone.disarm()
        print 'End task'
        #shutdown the instance
        drone.disconnect()

def flight2point():
        print 'Going along the setpoints'
        print 'Drone fligth as square'

        print 'First point'
        print 'Forward step 5m'
        point_forward()
        sleep(5)

        print 'Second point'
        print 'right step 5m'
        point_right()
        sleep(5)

        print 'Third point'
        print 'backwards step 5m'
        point_backwards()

        print 'Fourth point'
        print 'left step 5m'
        point_left()

arm_and_takeoff()
sleep(2)
flight2point()
sleep(2)
landing_and_disarm()
