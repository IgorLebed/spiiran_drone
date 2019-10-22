;; Auto-generated. Do not edit!


(when (boundp 'core_api::AttitudeSet)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'AttitudeSet (find-package "CORE_API")))
(unless (find-package "CORE_API::ATTITUDESET")
  (make-package "CORE_API::ATTITUDESET"))
(unless (find-package "CORE_API::ATTITUDESETREQUEST")
  (make-package "CORE_API::ATTITUDESETREQUEST"))
(unless (find-package "CORE_API::ATTITUDESETRESPONSE")
  (make-package "CORE_API::ATTITUDESETRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass core_api::AttitudeSetRequest
  :super ros::object
  :slots (_pose _thrust ))

(defmethod core_api::AttitudeSetRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::TwistStamped :init))
    ((:thrust __thrust) 0.0)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _thrust (float __thrust))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:thrust
   (&optional __thrust)
   (if __thrust (setq _thrust __thrust)) _thrust)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/TwistStamped _pose
    (send _pose :serialization-length)
    ;; float32 _thrust
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/TwistStamped _pose
       (send _pose :serialize s)
     ;; float32 _thrust
       (sys::poke _thrust (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/TwistStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float32 _thrust
     (setq _thrust (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass core_api::AttitudeSetResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::AttitudeSetResponse
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

(defclass core_api::AttitudeSet
  :super ros::object
  :slots ())

(setf (get core_api::AttitudeSet :md5sum-) "02ef05bc934cfab99f90890e9a9fdc80")
(setf (get core_api::AttitudeSet :datatype-) "core_api/AttitudeSet")
(setf (get core_api::AttitudeSet :request) core_api::AttitudeSetRequest)
(setf (get core_api::AttitudeSet :response) core_api::AttitudeSetResponse)

(defmethod core_api::AttitudeSetRequest
  (:response () (instance core_api::AttitudeSetResponse :init)))

(setf (get core_api::AttitudeSetRequest :md5sum-) "02ef05bc934cfab99f90890e9a9fdc80")
(setf (get core_api::AttitudeSetRequest :datatype-) "core_api/AttitudeSetRequest")
(setf (get core_api::AttitudeSetRequest :definition-)
      "


geometry_msgs/TwistStamped pose
float32 thrust


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

(setf (get core_api::AttitudeSetResponse :md5sum-) "02ef05bc934cfab99f90890e9a9fdc80")
(setf (get core_api::AttitudeSetResponse :datatype-) "core_api/AttitudeSetResponse")
(setf (get core_api::AttitudeSetResponse :definition-)
      "


geometry_msgs/TwistStamped pose
float32 thrust


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



(provide :core_api/AttitudeSet "02ef05bc934cfab99f90890e9a9fdc80")


