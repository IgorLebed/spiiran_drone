#!/usr/bin/env python
from time import time
from time import sleep
from flyt_python import api
import cv2
import sys, os

drone = api.navigation()
sleep(5)

gps_file = open("/flyt/Documents/gps_.txt", "w")

def mode_drone():
    mode_d = drone.get_vehicle_mode()

    if mode_d == 1:
        return 0

def position():
    gpos = drone.get_global_position()
    la = gpos.lat
    lo = gpos.lon
    al = gpos.alt
    return la,lo, al

def text_save(RUN=True, counter = 0):
    while RUN:
        #now = time()
        pose_v = position()
        L = [str(pose_v[0]), ", ",str(pose_v[1]), ", ", str(pose_v[2]), "\n"]
        gps_file.writelines(L)
        #last_time = now
        print "Save gps"
        counter +=1
        if counter > 5:
            RUN = not RUN


#text_save()
print mode_drone()

drone.disconnect()
