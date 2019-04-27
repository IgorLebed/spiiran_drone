#!/usr/bin/env python
from time import time
from time import sleep
from flyt_python import api
import cv2
import pexif
import os

drone = api.navigation(timeout=120000)  # instance of flyt droneigation class
# at least 3sec sleep time for the drone interface to initialize properly
sleep(3)

#send gimbal attitude set
drone.gimbal_control(0, -1.5, 0)

# Poll data
gpos = drone.get_global_position()
# Print the data
print gpos.lat, gpos.lon, gpos.alt

def photo_pose():
    cam = "http://localhost:8080/stream?topic=/flytsim/flytcam/" \
          "image_capture&width=320&height=240&type=ros_compressed"
    stream = cv2.VideoCapture(cam)
    RUN = True
    last_time = time()
    img_counter = 0
    path = "/flyt/userapps/onboard_user/install/flight_to_point_and_photo/photo"

    def make_photo(last_time, now):
        if now - last_time > 5:
            return True
    while RUN:
        ret, img = stream.read()
        now = time()
        if make_photo(last_time, now):
            f_name = str(img_counter) + ".jpg"
            cv2.imwrite(os.path.join(path, f_name), img)
            pose_v = drone.get_global_position()
            la = pose_v.lat
            lo = pose_v.lon
            al = pose_v.alt
            img_set = pexif.JpegFile.fromFile("/flyt/userapps/onboard_user/install/"
                          "flight_to_point_and_photo/photo/" +  str(img_counter) + ".jpg")
            img_set.set_geo(float(la), float(lo), float(al))
            img_set.writeFile("/flyt/userapps/onboard_user/install/"
                              "flight_to_point_and_photo/"
                              "photo_with_geo/" + str(img_counter) + "_with_geo" + ".jpg")
            img_counter += 1
            last_time = now
            print(f_name + " has been saved at " + str(now))
        if img_counter == 30:
            RUN = not RUN


def flight2point():
    print 'taking off'
    drone.take_off(5.0)
    #sleep(5)

    print 'going along the setpoints'
    drone.position_set(5, 0, 0, relative=True)
    drone.position_set(0, 5, 0, relative=True)
    drone.position_set(-5, 0, 0, relative=True)
    drone.position_set(0, -5, 0, relative=True)

    print 'Landing'
    drone.land(async=False)

    # shutdown the instance
    drone.disconnect()


th_1, th_2 = Thread(target = fligt2point), Thread(target = photo_pose)
if __name__ == '__main__':
    th_1.start(), th_2.start()
    th_1.join(), th_2.join()
