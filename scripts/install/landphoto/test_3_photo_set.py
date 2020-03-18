#!/usr/bin/env python
from time import time
from time import sleep
from flyt_python import api
import cv2
import pexif
import sys, os

# drone = api.navigation(timeout=120000)  # instance of flyt droneigation class
drone = api.navigation()
sleep(5)

cam = -1
# cam = "http://localhost:8080/stream?topic=/flytsim/flytcam/image_capture&width=320&height=240&type=ros_compressed"
stream = cv2.VideoCapture(cam)


def link_path():
    path = "/home/flytos/Documents/photo_from_drone/photo"
    #path = "/flyt/userapps/onboard_user/install/flight_to_point_and_photo/photo"
    return path


def link_photo():
    link_photo_without_geo = "/home/flytos/Documents/photo_from_drone/photo/"
    #link_photo_without_geo = "/flyt/userapps/onboard_user/install/flight_to_point_and_photo/photo/"
    return link_photo_without_geo


def link_geo_photo():
    link_photo_with_geo = "/home/flytos/Documents/photo_from_drone/photo_with_geo/"
    #link_photo_with_geo = "/flyt/userapps/onboard_user/install/flight_to_point_and_photo/photo_with_geo/"
    return link_photo_with_geo


def point_left(RUN=True, y=1):
    x = 0
    while RUN:
        print x
        drone.position_set(0, 1, 0, relative=True)
        # drone.position_hold()
        sleep(1)
        photo_pose()
        x = x + 1
        if x // y:
            RUN = not RUN


def point_right(RUN=True, y=1):
    x = 0
    while RUN:
        print x
        drone.position_set(0, -1, 0, relative=True)
        # drone.position_hold()
        sleep(1)
        photo_pose()
        x = x + 1
        if x // y:
            RUN = not RUN


def point_forward(RUN=True, y=1):
    x = 0
    while RUN:
        print x
        drone.position_set(-1, 0, 0, relative=True)
        # drone.position_hold()
        sleep(1)
        photo_pose()
        x = x + 1
        if x // y:
            RUN = not RUN


def point_backwards(RUN=True, y=1):
    x = 0
    while RUN:
        print x
        drone.position_set(1, 0, 0, relative=True)
        # drone.position_hold()
        sleep(1)
        photo_pose()
        x = x + 1
        if x // y:
            RUN = not RUN


def position():
    # Poll data
    gpos = drone.get_global_position()
    la = gpos.lat
    lo = gpos.lon
    al = gpos.alt
    return la, lo, al


def photo_pose(RUN=True, last_time=time(), img_counter=0):
    def make_photo(last_time, now):
        if now - last_time > 1.5:
            return True

    while RUN:
        ret, img = stream.read()
        now = time()
        pose_v = position()
        path = link_path()
        if make_photo(last_time, now):
            # f_name = str(img_counter) + ".jpg"
            f_name = str(now) + ".jpg"
            cv2.imwrite(os.path.join(path, f_name), img)
            img_set = pexif.JpegFile.fromFile(str(link_photo()) + str(now) + ".jpg")
            img_set.set_geo(float(pose_v[0]), float(pose_v[1]), float(pose_v[2]))
            img_set.writeFile(str(link_geo_photo()) + str(now) + "_with_geo.jpg")
            img_counter += 1
            last_time = now
            # print(f_name + " has been saved at " + str(now))
        if img_counter // 2:
            RUN = not RUN

def arm_and_takeoff():
    print 'Arming...'
    drone.arm()
    # sleep(2)
    print "Taking off"
    drone.take_off(20.0)
    sleep(2)
    print 'Going along the setpoints'

def landing_and_disarm():
    print 'Landing...'
    drone.land(async=False)
    sleep(10)

    print 'Disarming'
    drone.disarm()
    # shutdown the instance
    drone.disconnect()

def flight2point():
    print 'First point'
    print 'Forward step 10m'
    point_forward(RUN=True, y=10)

    print 'second point'
    print 'right step 10m'
    point_right(RUN=True, y=10)

    print '3th point'
    print 'backwards step 10m'
    point_backwards(RUN=True, y=10)

    print '4th point'
    print 'left step 10m'
    point_left(RUN=True, y=10)


arm_and_takeoff()
flight2point()
landing_and_disarm()
