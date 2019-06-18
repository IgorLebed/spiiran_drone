#!/usr/bin/env python
from time import time
from time import sleep
from flyt_python import api


drone = api.navigation(timeout=120000)  # instance of flyt droneigation class
sleep(3)

#add access flight to drone"OFFBOARD""
#drone.access_request(True)

def point_left():
    drone.position_set(5, 0, 0, relative=True)

def point_right():
    drone.position_set(-5, 0, 0, relative=True)

def point_forward():
    drone.position_set(0, 5, 0, relative=True)

def point_backwards():
    drone.position_set(0, -5, 0, relative=True)

def flight2point():
    print "taking off"
    drone.take_off(5.0)

    print 'going along the setpoints'

    print 'first point'
    print 'forward step 5m'
    point_forward()

    print 'second point'
    print 'right step 5m'
    point_right()

    print '3th point'
    print 'backwards step 5m'
    point_backwards()

    print '4th point'
    print 'left step 5m'
    point_left()

    print 'Landing'
    drone.land(async=False)

    print 'End task'
    #shutdown the instance
    drone.disconnect()

flight2point()

