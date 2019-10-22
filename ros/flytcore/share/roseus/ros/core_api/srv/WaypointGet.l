;; Auto-generated. Do not edit!


(when (boundp 'core_api::WaypointGet)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'WaypointGet (find-package "CORE_API")))
(unless (find-package "CORE_API::WAYPOINTGET")
  (make-package "CORE_API::WAYPOINTGET"))
(unless (find-package "CORE_API::WAYPOINTGETREQUEST")
  (make-package "CORE_API::WAYPOINTGETREQUEST"))
(unless (find-package "CORE_API::WAYPOINTGETRESPONSE")
  (make-package "CORE_API::WAYPOINTGETRESPONSE"))

(in-package "ROS")



(if (not (find-package "MAVROS_MSGS"))
  (ros::roseus-add-msgs "mavros_msgs"))


(defclass core_api::WaypointGetRequest
  :super ros::object
  :slots ())

(defmethod core_api::WaypointGetRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass core_api::WaypointGetResponse
  :super ros::object
  :slots (_success _wp_received _waypoints _message ))

(defmethod core_api::WaypointGetResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:wp_received __wp_received) 0)
    ((:waypoints __waypoints) (let (r) (dotimes (i 0) (push (instance mavros_msgs::Waypoint :init) r)) r))
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _wp_received (round __wp_received))
   (setq _waypoints __waypoints)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:wp_received
   (&optional __wp_received)
   (if __wp_received (setq _wp_received __wp_received)) _wp_received)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint32 _wp_received
    4
    ;; mavros_msgs/Waypoint[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _wp_received
       (write-long _wp_received s)
     ;; mavros_msgs/Waypoint[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _wp_received
     (setq _wp_received (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; mavros_msgs/Waypoint[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance mavros_msgs::Waypoint :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass core_api::WaypointGet
  :super ros::object
  :slots ())

(setf (get core_api::WaypointGet :md5sum-) "b38735166bb040ca6a9bf63e5c480555")
(setf (get core_api::WaypointGet :datatype-) "core_api/WaypointGet")
(setf (get core_api::WaypointGet :request) core_api::WaypointGetRequest)
(setf (get core_api::WaypointGet :response) core_api::WaypointGetResponse)

(defmethod core_api::WaypointGetRequest
  (:response () (instance core_api::WaypointGetResponse :init)))

(setf (get core_api::WaypointGetRequest :md5sum-) "b38735166bb040ca6a9bf63e5c480555")
(setf (get core_api::WaypointGetRequest :datatype-) "core_api/WaypointGetRequest")
(setf (get core_api::WaypointGetRequest :definition-)
      "



---
bool success
uint32 wp_received
mavros_msgs/Waypoint[] waypoints
string message


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
")

(setf (get core_api::WaypointGetResponse :md5sum-) "b38735166bb040ca6a9bf63e5c480555")
(setf (get core_api::WaypointGetResponse :datatype-) "core_api/WaypointGetResponse")
(setf (get core_api::WaypointGetResponse :definition-)
      "



---
bool success
uint32 wp_received
mavros_msgs/Waypoint[] waypoints
string message


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
")



(provide :core_api/WaypointGet "b38735166bb040ca6a9bf63e5c480555")


