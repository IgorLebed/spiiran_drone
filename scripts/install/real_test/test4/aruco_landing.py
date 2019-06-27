from os import sys, path

sys.path.append(path.dirname(path.dirname(path.abspath(__file__))))

import time
import math
#import argparse

from flyt_python import api
from pymavlink import mavutil
from lib_aruco_pose import *

def get_location_metres(original_location, dNorth, dEast):

    earth_radius=6378137.0 #Radius of "spherical" earth
    #Coordinate offsets in radians
    dLat = dNorth/earth_radius
    dLon = dEast/(earth_radius*math.cos(math.pi*original_location.lat/180))

    print "dlat, dlon", dLat, dLon

    #New position in decimal degrees
    newlat = original_location.lat + (dLat * 180/math.pi)
    newlon = original_location.lon + (dLon * 180/math.pi)
    return(newlat, newlon)

def marker_position_to_angle(x, y, z):
    angle_x = math.atan2(x,z)
    angle_y = math.atan2(y,z)

    return (angle_x, angle_y)

def camera_to_uav(x_cam, y_cam):
    x_uav = -y_cam
    y_uav = x_cam
    return(x_uav, y_uav)

def uav_to_ne(x_uav, y_uav, yaw_rad):
    c = math.cos(yaw_rad)
    s = math.sin(yaw_rad)

    north = x_uav*c - y_uav*s
    east = x_uav*s + y_uav*c
    return(north, east)

def check_angle_descend(angle_x, angle_y, angle_desc):
    return(math.sqrt(angle_x**2 + angle_y**2) <= angle_desc)

#-------------------------------------------------
#-----Drone Connection
#-------------------------------------------------

print('Connecting...')
drone = api.navigation()
attitude = drone.get_attitude_euler()

gpose = drone.get_global_position()
print gpose.alt

#pos = drone.get_local_position()
#print 'Altitude: %f %s' % ((float(pos.z)*(-1))*100,' cm')
#print pos.z
#send gimbal attitude set
#drone.access_request()

#drone.take_off(3)

#drone.position_set(0, 5, 0, relative=True)

#pos = drone.get_local_position()
#print 'Altitude: %f %s' % ((float(pos.z)*(-1))*100,' cm')


#--------------------------------------------------
#-------------- PARAMETERS
#--------------------------------------------------
rad_2_deg = 180.0/math.pi
deg_2_rad = 1.0/rad_2_deg


#--------------------------------------------------
#-------------- LANDING MARKER
#--------------------------------------------------
#--- Define Tag
id_to_find      = 72
marker_size     = 4 #- [cm]
freq_send       = 1 #- Hz

land_alt_cm         = 50.0
angle_descend       = 50*deg_2_rad
land_speed_cms      = 20.0


#--- Get the camera calibration path
# Find full directory path of this script, used for loading config and other files
cwd = path.dirname(path.abspath(__file__))
calib_path = cwd+""
camera_matrix  = np.loadtxt(calib_path+'/cameraMatrix_webcam.txt', delimiter=',')
camera_distortion = np.loadtxt(calib_path+'/cameraDistortion_webcam.txt', delimiter=',')
aruco_tracker = ArucoSingleTracker(id_to_find=72, marker_size=marker_size, show_video=False,
            camera_matrix=camera_matrix, camera_distortion=camera_distortion)

time_0 = time.time()


while True:

    marker_found, x_cm, y_cm, z_cm = aruco_tracker.track(loop=False)
    if marker_found:
        x_cm, y_cm          = camera_to_uav(x_cm, y_cm)
        uav_location        = drone.get_global_position()
        uav_location_glob   = drone.get_global_position()

    	#-- If high altitude, use baro rather than visual
    	if uav_location.alt >= 5.0:      # z = alt
        	print
        	z_cm = (uav_location.alt)*100.0

    	angle_x, angle_y    = marker_position_to_angle(x_cm, y_cm, z_cm)

    	if time.time() >= time_0 + 1.0/freq_send:
        	time_0 = time.time()

        	print " "
        	print "Altitude = %.0fcm"%z_cm
        	print "Marker found x = %5.0f cm  y = %5.0f cm -> angle_x = %5f  angle_y = %5f"%(x_cm, y_cm, angle_x*rad_2_deg, angle_y*rad_2_deg)

        	north, east = uav_to_ne(x_cm, y_cm, attitude.yaw)
        	print "Marker N = %5.0f cm   E = %5.0f cm   Yaw = %.0f deg"%(north, east, attitude.yaw*rad_2_deg)

        	marker_lat, marker_lon  = get_location_metres(uav_location_glob, north*0.005, east*0.005)  
        	#print marker_lat, marker_lon, (uav_location.z*(-1))
        	#print float(marker_lat), float(marker_lon), float(uav_location.z*(-1))

            	#-- If angle is good, descend
                if check_angle_descend(angle_x, angle_y, angle_descend):
                    print "Low error: descending"
                    location_marker = drone.position_set_global(float(marker_lat), float(marker_lon), float(uav_location.alt)-(land_speed_cms*0.01/freq_send))
                else:
                    location_marker = drone.position_set_global(float(marker_lat), float(marker_lon), float(uav_location.alt))
                    #location_marker = (float(marker_lat), float(marker_lon), float(uav_location.z*(-1))

	            #location_marker
                print "UAV Location    Lat = %.7f  Lon = %.7f"%(uav_location.lat, uav_location.lon)
                #print "UAV Location    Lat = %.7f  Lon = %.7f"%(uav_location_glob.lat, uav_location_glob.lon)
                print "Commanding to   Lat = %.7f  Lon = %.7f"%(float(marker_lat), float(marker_lon))

        #--- Command to land
    	if z_cm <= land_alt_cm:
            #if drone.get_vehicle_mode() == "OFFBOARD":
            print (" -->>COMMANDING TO LAND<<")
            drone.land(async=False)
            # shutdown the instance
            drone.disconnect()
