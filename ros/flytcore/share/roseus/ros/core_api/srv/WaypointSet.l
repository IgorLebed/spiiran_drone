;; Auto-generated. Do not edit!


(when (boundp 'core_api::WaypointSet)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'WaypointSet (find-package "CORE_API")))
(unless (find-package "CORE_API::WAYPOINTSET")
  (make-package "CORE_API::WAYPOINTSET"))
(unless (find-package "CORE_API::WAYPOINTSETREQUEST")
  (make-package "CORE_API::WAYPOINTSETREQUEST"))
(unless (find-package "CORE_API::WAYPOINTSETRESPONSE")
  (make-package "CORE_API::WAYPOINTSETRESPONSE"))

(in-package "ROS")

(if (not (find-package "MAVROS_MSGS"))
  (ros::roseus-add-msgs "mavros_msgs"))




(defclass core_api::WaypointSetRequest
  :super ros::object
  :slots (_waypoints ))

(defmethod core_api::WaypointSetRequest
  (:init
   (&key
    ((:waypoints __waypoints) (let (r) (dotimes (i 0) (push (instance mavros_msgs::Waypoint :init) r)) r))
    )
   (send-super :init)
   (setq _waypoints __waypoints)
   self)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:serialization-length
   ()
   (+
    ;; mavros_msgs/Waypoint[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mavros_msgs/Waypoint[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mavros_msgs/Waypoint[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance mavros_msgs::Waypoint :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass core_api::WaypointSetResponse
  :super ros::object
  :slots (_success _wp_transfered _message ))

(defmethod core_api::WaypointSetResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:wp_transfered __wp_transfered) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _wp_transfered (round __wp_transfered))
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:wp_transfered
   (&optional __wp_transfered)
   (if __wp_transfered (setq _wp_transfered __wp_transfered)) _wp_transfered)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint32 _wp_transfered
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _wp_transfered
       (write-long _wp_transfered s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _wp_transfered
     (setq _wp_transfered (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass core_api::WaypointSet
  :super ros::object
  :slots ())

(setf (get core_api::WaypointSet :md5sum-) "3f085b910f9f393c0159cd4cdfc61799")
(setf (get core_api::WaypointSet :datatype-) "core_api/WaypointSet")
(setf (get core_api::WaypointSet :request) core_api::WaypointSetRequest)
(setf (get core_api::WaypointSet :response) core_api::WaypointSetResponse)

(defmethod core_api::WaypointSetRequest
  (:response () (instance core_api::WaypointSetResponse :init)))

(setf (get core_api::WaypointSetRequest :md5sum-) "3f085b910f9f393c0159cd4cdfc61799")
(setf (get core_api::WaypointSetRequest :datatype-) "core_api/WaypointSetRequest")
(setf (get core_api::WaypointSetRequest :definition-)
      "



mavros_msgs/Waypoint[] waypoints

================================================================================
MSG: mavros_msgs/Waypoint
# Waypoint.msg
#
# ROS representation of MAVLink MISSION_ITEM
# See mavlink documentation



# see enum MAV_FRAME
uint8 frame
uint8 FRAME_GLOBAL = 0
uint8 FRAME_LOCAL_NED = 1
uint8 FRAME_MISSION = 2
uint8 FRAME_GLOBAL_REL_ALT = 3
uint8 FRAME_LOCAL_ENU = 4

# see enum MAV_CMD and CommandCode.msg
uint16 command

bool is_current
bool autocontinue
# meaning of this params described in enum MAV_CMD
float32 param1
float32 param2
float32 param3
float32 param4
float64 x_lat
float64 y_long
float64 z_alt
---
bool success
uint32 wp_transfered
string message

")

(setf (get core_api::WaypointSetResponse :md5sum-) "3f085b910f9f393c0159cd4cdfc61799")
(setf (get core_api::WaypointSetResponse :datatype-) "core_api/WaypointSetResponse")
(setf (get core_api::WaypointSetResponse :definition-)
      "



mavros_msgs/Waypoint[] waypoints

================================================================================
MSG: mavros_msgs/Waypoint
# Waypoint.msg
#
# ROS representation of MAVLink MISSION_ITEM
# See mavlink documentation



# see enum MAV_FRAME
uint8 frame
uint8 FRAME_GLOBAL = 0
uint8 FRAME_LOCAL_NED = 1
uint8 FRAME_MISSION = 2
uint8 FRAME_GLOBAL_REL_ALT = 3
uint8 FRAME_LOCAL_ENU = 4

# see enum MAV_CMD and CommandCode.msg
uint16 command

bool is_current
bool autocontinue
# meaning of this params described in enum MAV_CMD
float32 param1
float32 param2
float32 param3
float32 param4
float64 x_lat
float64 y_long
float64 z_alt
---
bool success
uint32 wp_transfered
string message

")



(provide :core_api/WaypointSet "3f085b910f9f393c0159cd4cdfc61799")


