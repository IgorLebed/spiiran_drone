;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::WaypointPull)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'WaypointPull (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::WAYPOINTPULL")
  (make-package "MAVROS_MSGS::WAYPOINTPULL"))
(unless (find-package "MAVROS_MSGS::WAYPOINTPULLREQUEST")
  (make-package "MAVROS_MSGS::WAYPOINTPULLREQUEST"))
(unless (find-package "MAVROS_MSGS::WAYPOINTPULLRESPONSE")
  (make-package "MAVROS_MSGS::WAYPOINTPULLRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::WaypointPullRequest
  :super ros::object
  :slots ())

(defmethod mavros_msgs::WaypointPullRequest
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

(defclass mavros_msgs::WaypointPullResponse
  :super ros::object
  :slots (_success _wp_received _waypoints ))

(defmethod mavros_msgs::WaypointPullResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:wp_received __wp_received) 0)
    ((:waypoints __waypoints) (let (r) (dotimes (i 0) (push (instance mavros_msgs::Waypoint :init) r)) r))
    )
   (send-super :init)
   (setq _success __success)
   (setq _wp_received (round __wp_received))
   (setq _waypoints __waypoints)
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
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint32 _wp_received
    4
    ;; mavros_msgs/Waypoint[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
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
   ;;
   self)
  )

(defclass mavros_msgs::WaypointPull
  :super ros::object
  :slots ())

(setf (get mavros_msgs::WaypointPull :md5sum-) "c95e6064e868f248dfa1b681f6c4709a")
(setf (get mavros_msgs::WaypointPull :datatype-) "mavros_msgs/WaypointPull")
(setf (get mavros_msgs::WaypointPull :request) mavros_msgs::WaypointPullRequest)
(setf (get mavros_msgs::WaypointPull :response) mavros_msgs::WaypointPullResponse)

(defmethod mavros_msgs::WaypointPullRequest
  (:response () (instance mavros_msgs::WaypointPullResponse :init)))

(setf (get mavros_msgs::WaypointPullRequest :md5sum-) "c95e6064e868f248dfa1b681f6c4709a")
(setf (get mavros_msgs::WaypointPullRequest :datatype-) "mavros_msgs/WaypointPullRequest")
(setf (get mavros_msgs::WaypointPullRequest :definition-)
      "



---
bool success
uint32 wp_received
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
")

(setf (get mavros_msgs::WaypointPullResponse :md5sum-) "c95e6064e868f248dfa1b681f6c4709a")
(setf (get mavros_msgs::WaypointPullResponse :datatype-) "mavros_msgs/WaypointPullResponse")
(setf (get mavros_msgs::WaypointPullResponse :definition-)
      "



---
bool success
uint32 wp_received
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
")



(provide :mavros_msgs/WaypointPull "c95e6064e868f248dfa1b681f6c4709a")


