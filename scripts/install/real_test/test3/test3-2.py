#!/usr/bin/env python
from time import time
from time import sleep
from flyt_python import api
import cv2
import pexif
import sys, os

drone = api.navigation(timeout=120000)  # instance of flyt droneigation class
sleep(3)
#drone.access_request()

cam = 0
#cam = "http://localhost:8080/stream?topic=/flytsim/flytcam/image_capture&width=320&height=240&type=ros_compressed"
stream = cv2.VideoCapture(cam)
path = "/flyt/userapps/onboard_user/install/real_test/test3/photo"
img_number = 0

def position():
    # Poll data
    gpos = drone.get_global_position()
    la = gpos.lat
    lo = gpos.lon
    al = gpos.alt
    return la, lo, al

def photo_pose(RUN = True, last_time = time(), img_counter = 0):
    def make_photo(last_time, now):
        if now - last_time > 1.5:
            return True
    while RUN:
        ret, img = stream.read()
        now = time()
        if make_photo(last_time, now):
            #f_name = str(img_counter) + ".jpg"
            f_name = str(now) + ".jpg"
            cv2.imwrite(os.path.join(path, f_name), img)
            pose_v = position()
            img_set = pexif.JpegFile.fromFile("/flyt/userapps/onboard_user/install/real_test/test3/photo/" +  str(now) + ".jpg")
            img_set.set_geo(float(pose_v[0]), float(pose_v[1]), float(pose_v[2]))
            img_set.writeFile("/flyt/userapps/onboard_user/install/"
            "real_test/test3/photo_with_geo/" + str(now) + "_with_geo" + ".jpg")
            img_counter += 1
            last_time = now
            #print(f_name + " has been saved at " + str(now))
        if img_counter // 2:
            RUN = not RUN

    #drone.position_set_global(59.943807, 30.468102, 3)
    #drone.position_set_global(59.943788, 30.468022, 3)
    #drone.position_set_global(59.943816, 30.467972, 3)
    #drone.position_set_global(59.943839, 30.468048, 3)

def point_left(RUN = True, y = 5):
    x=0
    while RUN:
        print x
        drone.position_set(0, -1, 0, relative=True)
        #drone.position_hold()
        sleep(1)
        #photo_pose()
        x = x + 1
        if x // y:
            RUN = not RUN

def point_right(RUN = True, y = 5):
    x=0
    while RUN:
        print x
        drone.position_set(0, 1, 0, relative=True)
        #drone.position_hold()
        sleep(1)
        #photo_pose()
        x = x + 1
        if x // y:
            RUN = not RUN

def point_forward(RUN = True, y = 5):
    x=0
    while RUN:
        print x
        drone.position_set(1, 0, 0, relative=True)
        #drone.position_hold()
        sleep(1)
        #photo_pose()
        x = x + 1
        if x // y:
            RUN = not RUN

def point_backwards(RUN = True, y = 5):
    x=0
    while RUN:
        print x
        drone.position_set(-1, 0, 0, relative=True)
        #drone.position_hold()
        sleep(1)
        #photo_pose()
        x = x + 1
        if x // y:
            RUN = not RUN

def flight2point():

    print "taking off"
    drone.take_off(5.0)

    print 'going along the setpoints'

    print 'first point'
    print 'forward step 5m'
    point_forward(RUN = True, y = 5)

    print 'second point'
    print 'right step 5m'
    point_right(RUN = True, y = 5)

    print '3th point'
    print 'backwards step 5m'
    point_backwards(RUN = True, y = 5)

    print '4th point'
    print 'left step 5m'
    point_left(RUN = True, y = 5)
    
    print 'Landing'
    drone.land(async=False)
    drone.disarm()
    #shutdown the instance
    drone.disconnect()

flight2point()
