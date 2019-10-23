;; Auto-generated. Do not edit!


(when (boundp 'core_api::VelocitySet)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'VelocitySet (find-package "CORE_API")))
(unless (find-package "CORE_API::VELOCITYSET")
  (make-package "CORE_API::VELOCITYSET"))
(unless (find-package "CORE_API::VELOCITYSETREQUEST")
  (make-package "CORE_API::VELOCITYSETREQUEST"))
(unless (find-package "CORE_API::VELOCITYSETRESPONSE")
  (make-package "CORE_API::VELOCITYSETRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass core_api::VelocitySetRequest
  :super ros::object
  :slots (_twist _vx _vy _vz _yaw_rate _tolerance _async _relative _yaw_rate_valid _body_frame ))

(defmethod core_api::VelocitySetRequest
  (:init
   (&key
    ((:twist __twist) (instance geometry_msgs::TwistStamped :init))
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:vz __vz) 0.0)
    ((:yaw_rate __yaw_rate) 0.0)
    ((:tolerance __tolerance) 0.0)
    ((:async __async) nil)
    ((:relative __relative) nil)
    ((:yaw_rate_valid __yaw_rate_valid) nil)
    ((:body_frame __body_frame) nil)
    )
   (send-super :init)
   (setq _twist __twist)
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _vz (float __vz))
   (setq _yaw_rate (float __yaw_rate))
   (setq _tolerance (float __tolerance))
   (setq _async __async)
   (setq _relative __relative)
   (setq _yaw_rate_valid __yaw_rate_valid)
   (setq _body_frame __body_frame)
   self)
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:vz
   (&optional __vz)
   (if __vz (setq _vz __vz)) _vz)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:tolerance
   (&optional __tolerance)
   (if __tolerance (setq _tolerance __tolerance)) _tolerance)
  (:async
   (&optional __async)
   (if __async (setq _async __async)) _async)
  (:relative
   (&optional __relative)
   (if __relative (setq _relative __relative)) _relative)
  (:yaw_rate_valid
   (&optional __yaw_rate_valid)
   (if __yaw_rate_valid (setq _yaw_rate_valid __yaw_rate_valid)) _yaw_rate_valid)
  (:body_frame
   (&optional __body_frame)
   (if __body_frame (setq _body_frame __body_frame)) _body_frame)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/TwistStamped _twist
    (send _twist :serialization-length)
    ;; float32 _vx
    4
    ;; float32 _vy
    4
    ;; float32 _vz
    4
    ;; float32 _yaw_rate
    4
    ;; float32 _tolerance
    4
    ;; bool _async
    1
    ;; bool _relative
    1
    ;; bool _yaw_rate_valid
    1
    ;; bool _body_frame
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/TwistStamped _twist
       (send _twist :serialize s)
     ;; float32 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vz
       (sys::poke _vz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_rate
       (sys::poke _yaw_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tolerance
       (sys::poke _tolerance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _async
       (if _async (write-byte -1 s) (write-byte 0 s))
     ;; bool _relative
       (if _relative (write-byte -1 s) (write-byte 0 s))
     ;; bool _yaw_rate_valid
       (if _yaw_rate_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _body_frame
       (if _body_frame (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/TwistStamped _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;; float32 _vx
     (setq _vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vy
     (setq _vy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vz
     (setq _vz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tolerance
     (setq _tolerance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _async
     (setq _async (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _relative
     (setq _relative (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _yaw_rate_valid
     (setq _yaw_rate_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _body_frame
     (setq _body_frame (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass core_api::VelocitySetResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::VelocitySetResponse
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

(defclass core_api::VelocitySet
  :super ros::object
  :slots ())

(setf (get core_api::VelocitySet :md5sum-) "4d8d96be58a2a2be16d36c94c6b850a1")
(setf (get core_api::VelocitySet :datatype-) "core_api/VelocitySet")
(setf (get core_api::VelocitySet :request) core_api::VelocitySetRequest)
(setf (get core_api::VelocitySet :response) core_api::VelocitySetResponse)

(defmethod core_api::VelocitySetRequest
  (:response () (instance core_api::VelocitySetResponse :init)))

(setf (get core_api::VelocitySetRequest :md5sum-) "4d8d96be58a2a2be16d36c94c6b850a1")
(setf (get core_api::VelocitySetRequest :datatype-) "core_api/VelocitySetRequest")
(setf (get core_api::VelocitySetRequest :definition-)
      "



geometry_msgs/TwistStamped twist
float32 vx
float32 vy
float32 vz
float32 yaw_rate
float32 tolerance
bool async
bool relative
bool yaw_rate_valid
bool body_frame

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

(setf (get core_api::VelocitySetResponse :md5sum-) "4d8d96be58a2a2be16d36c94c6b850a1")
(setf (get core_api::VelocitySetResponse :datatype-) "core_api/VelocitySetResponse")
(setf (get core_api::VelocitySetResponse :definition-)
      "



geometry_msgs/TwistStamped twist
float32 vx
float32 vy
float32 vz
float32 yaw_rate
float32 tolerance
bool async
bool relative
bool yaw_rate_valid
bool body_frame

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



(provide :core_api/VelocitySet "4d8d96be58a2a2be16d36c94c6b850a1")


