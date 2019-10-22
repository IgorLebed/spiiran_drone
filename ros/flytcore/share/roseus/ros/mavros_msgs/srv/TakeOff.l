;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::TakeOff)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'TakeOff (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::TAKEOFF")
  (make-package "MAVROS_MSGS::TAKEOFF"))
(unless (find-package "MAVROS_MSGS::TAKEOFFREQUEST")
  (make-package "MAVROS_MSGS::TAKEOFFREQUEST"))
(unless (find-package "MAVROS_MSGS::TAKEOFFRESPONSE")
  (make-package "MAVROS_MSGS::TAKEOFFRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass mavros_msgs::TakeOffRequest
  :super ros::object
  :slots (_pose ))

(defmethod mavros_msgs::TakeOffRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass mavros_msgs::TakeOffResponse
  :super ros::object
  :slots (_success ))

(defmethod mavros_msgs::TakeOffResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mavros_msgs::TakeOff
  :super ros::object
  :slots ())

(setf (get mavros_msgs::TakeOff :md5sum-) "655cad7ef82e583fafa09ef2e62b62c5")
(setf (get mavros_msgs::TakeOff :datatype-) "mavros_msgs/TakeOff")
(setf (get mavros_msgs::TakeOff :request) mavros_msgs::TakeOffRequest)
(setf (get mavros_msgs::TakeOff :response) mavros_msgs::TakeOffResponse)

(defmethod mavros_msgs::TakeOffRequest
  (:response () (instance mavros_msgs::TakeOffResponse :init)))

(setf (get mavros_msgs::TakeOffRequest :md5sum-) "655cad7ef82e583fafa09ef2e62b62c5")
(setf (get mavros_msgs::TakeOffRequest :datatype-) "mavros_msgs/TakeOffRequest")
(setf (get mavros_msgs::TakeOffRequest :definition-)
      "


geometry_msgs/PoseStamped pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool success

")

(setf (get mavros_msgs::TakeOffResponse :md5sum-) "655cad7ef82e583fafa09ef2e62b62c5")
(setf (get mavros_msgs::TakeOffResponse :datatype-) "mavros_msgs/TakeOffResponse")
(setf (get mavros_msgs::TakeOffResponse :definition-)
      "


geometry_msgs/PoseStamped pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool success

")



(provide :mavros_msgs/TakeOff "655cad7ef82e583fafa09ef2e62b62c5")


