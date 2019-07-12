#!/usr/bin/env python
from time import time
from time import sleep
from flyt_python import api


#drone = api.navigation(timeout=120000)  # instance of flyt droneigation class
drone = api.navigation()
sleep(5)


def point_left():
    drone.position_set(0, -3, -3, relative=True)

def point_right():
    drone.position_set(0, 3, -3, relative=True)

def point_forward():
    drone.position_set(10, 0, -3, relative=True)

def point_backwards():
    drone.position_set(-15, 0, -3, relative=True)

def flight2point():

    print 'Arming...'
    drone.arm()
    sleep(2)

    print "taking off"
    drone.take_off(5.0)
    sleep(2)

    print 'going along the setpoints'
    #park
    #drone.position_set_global(59.943807, 30.468102, 3)
    #drone.position_set_global(59.943788, 30.468022, 3)
    #drone.position_set_global(59.943816, 30.467972, 3)
    #drone.position_set_global(59.943839, 30.468048, 3)
    #garage
    #drone.position_set_global(59.873537, 30.316644, 3)
    #drone.position_set_global(59.873445, 30.316638, 3)
    #drone.position_set_global(59.873445, 30.316806, 3)
    #drone.position_set_global(59.873541, 30.316806, 3)

    print 'first point'
    print 'forward step 3m'
    point_forward()

    #print 'second point'
    #print 'right step 3m'
    #point_right()

    print '3th point'
    print 'backwards step 3m'
    point_backwards()

    #print '4th point'
    #print 'left step 3m'
    #point_left()

    print 'Landing...'
    drone.land(async=False)
    sleep(5)

    print 'Disarming...'
    drone.disarm()

    print 'End task'
    #shutdown the instance
    drone.disconnect()

flight2point()

