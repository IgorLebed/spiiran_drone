;; Auto-generated. Do not edit!


(when (boundp 'core_api::PositionSetGlobal)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'PositionSetGlobal (find-package "CORE_API")))
(unless (find-package "CORE_API::POSITIONSETGLOBAL")
  (make-package "CORE_API::POSITIONSETGLOBAL"))
(unless (find-package "CORE_API::POSITIONSETGLOBALREQUEST")
  (make-package "CORE_API::POSITIONSETGLOBALREQUEST"))
(unless (find-package "CORE_API::POSITIONSETGLOBALRESPONSE")
  (make-package "CORE_API::POSITIONSETGLOBALRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass core_api::PositionSetGlobalRequest
  :super ros::object
  :slots (_twist _lat_x _long_y _rel_alt_z _yaw _tolerance _async _yaw_valid ))

(defmethod core_api::PositionSetGlobalRequest
  (:init
   (&key
    ((:twist __twist) (instance geometry_msgs::TwistStamped :init))
    ((:lat_x __lat_x) 0.0)
    ((:long_y __long_y) 0.0)
    ((:rel_alt_z __rel_alt_z) 0.0)
    ((:yaw __yaw) 0.0)
    ((:tolerance __tolerance) 0.0)
    ((:async __async) nil)
    ((:yaw_valid __yaw_valid) nil)
    )
   (send-super :init)
   (setq _twist __twist)
   (setq _lat_x (float __lat_x))
   (setq _long_y (float __long_y))
   (setq _rel_alt_z (float __rel_alt_z))
   (setq _yaw (float __yaw))
   (setq _tolerance (float __tolerance))
   (setq _async __async)
   (setq _yaw_valid __yaw_valid)
   self)
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:lat_x
   (&optional __lat_x)
   (if __lat_x (setq _lat_x __lat_x)) _lat_x)
  (:long_y
   (&optional __long_y)
   (if __long_y (setq _long_y __long_y)) _long_y)
  (:rel_alt_z
   (&optional __rel_alt_z)
   (if __rel_alt_z (setq _rel_alt_z __rel_alt_z)) _rel_alt_z)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:tolerance
   (&optional __tolerance)
   (if __tolerance (setq _tolerance __tolerance)) _tolerance)
  (:async
   (&optional __async)
   (if __async (setq _async __async)) _async)
  (:yaw_valid
   (&optional __yaw_valid)
   (if __yaw_valid (setq _yaw_valid __yaw_valid)) _yaw_valid)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/TwistStamped _twist
    (send _twist :serialization-length)
    ;; float32 _lat_x
    4
    ;; float32 _long_y
    4
    ;; float32 _rel_alt_z
    4
    ;; float32 _yaw
    4
    ;; float32 _tolerance
    4
    ;; bool _async
    1
    ;; bool _yaw_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/TwistStamped _twist
       (send _twist :serialize s)
     ;; float32 _lat_x
       (sys::poke _lat_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _long_y
       (sys::poke _long_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rel_alt_z
       (sys::poke _rel_alt_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tolerance
       (sys::poke _tolerance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _async
       (if _async (write-byte -1 s) (write-byte 0 s))
     ;; bool _yaw_valid
       (if _yaw_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/TwistStamped _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;; float32 _lat_x
     (setq _lat_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _long_y
     (setq _long_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rel_alt_z
     (setq _rel_alt_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tolerance
     (setq _tolerance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _async
     (setq _async (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _yaw_valid
     (setq _yaw_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass core_api::PositionSetGlobalResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::PositionSetGlobalResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass core_api::PositionSetGlobal
  :super ros::object
  :slots ())

(setf (get core_api::PositionSetGlobal :md5sum-) "6578c26fcd60d8ecd591fdca570571f8")
(setf (get core_api::PositionSetGlobal :datatype-) "core_api/PositionSetGlobal")
(setf (get core_api::PositionSetGlobal :request) core_api::PositionSetGlobalRequest)
(setf (get core_api::PositionSetGlobal :response) core_api::PositionSetGlobalResponse)

(defmethod core_api::PositionSetGlobalRequest
  (:response () (instance core_api::PositionSetGlobalResponse :init)))

(setf (get core_api::PositionSetGlobalRequest :md5sum-) "6578c26fcd60d8ecd591fdca570571f8")
(setf (get core_api::PositionSetGlobalRequest :datatype-) "core_api/PositionSetGlobalRequest")
(setf (get core_api::PositionSetGlobalRequest :definition-)
      "



geometry_msgs/TwistStamped twist
float32 lat_x
float32 long_y
float32 rel_alt_z
float32 yaw
float32 tolerance
bool async
bool yaw_valid

================================================================================
MSG: geometry_msgs/TwistStamped
# A twist with reference coordinate frame and timestamp
Header header
Twist twist

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
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
bool success
string message

")

(setf (get core_api::PositionSetGlobalResponse :md5sum-) "6578c26fcd60d8ecd591fdca570571f8")
(setf (get core_api::PositionSetGlobalResponse :datatype-) "core_api/PositionSetGlobalResponse")
(setf (get core_api::PositionSetGlobalResponse :definition-)
      "



geometry_msgs/TwistStamped twist
float32 lat_x
float32 long_y
float32 rel_alt_z
float32 yaw
float32 tolerance
bool async
bool yaw_valid

================================================================================
MSG: geometry_msgs/TwistStamped
# A twist with reference coordinate frame and timestamp
Header header
Twist twist

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
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
bool success
string message

")



(provide :core_api/PositionSetGlobal "6578c26fcd60d8ecd591fdca570571f8")


