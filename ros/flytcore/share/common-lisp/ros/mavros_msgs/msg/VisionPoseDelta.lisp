; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude VisionPoseDelta.msg.html

(cl:defclass <VisionPoseDelta> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (time_delta_us
    :reader time_delta_us
    :initarg :time_delta_us
    :type cl:integer
    :initform 0)
   (angle_delta_roll
    :reader angle_delta_roll
    :initarg :angle_delta_roll
    :type cl:float
    :initform 0.0)
   (angle_delta_pitch
    :reader angle_delta_pitch
    :initarg :angle_delta_pitch
    :type cl:float
    :initform 0.0)
   (angle_delta_yaw
    :reader angle_delta_yaw
    :initarg :angle_delta_yaw
    :type cl:float
    :initform 0.0)
   (position_delta_x
    :reader position_delta_x
    :initarg :position_delta_x
    :type cl:float
    :initform 0.0)
   (position_delta_y
    :reader position_delta_y
    :initarg :position_delta_y
    :type cl:float
    :initform 0.0)
   (position_delta_z
    :reader position_delta_z
    :initarg :position_delta_z
    :type cl:float
    :initform 0.0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VisionPoseDelta (<VisionPoseDelta>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisionPoseDelta>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisionPoseDelta)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<VisionPoseDelta> is deprecated: use mavros_msgs-msg:VisionPoseDelta instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VisionPoseDelta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_delta_us-val :lambda-list '(m))
(cl:defmethod time_delta_us-val ((m <VisionPoseDelta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:time_delta_us-val is deprecated.  Use mavros_msgs-msg:time_delta_us instead.")
  (time_delta_us m))

(cl:ensure-generic-function 'angle_delta_roll-val :lambda-list '(m))
(cl:defmethod angle_delta_roll-val ((m <VisionPoseDelta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:angle_delta_roll-val is deprecated.  Use mavros_msgs-msg:angle_delta_roll instead.")
  (angle_delta_roll m))

(cl:ensure-generic-function 'angle_delta_pitch-val :lambda-list '(m))
(cl:defmethod angle_delta_pitch-val ((m <VisionPoseDelta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:angle_delta_pitch-val is deprecated.  Use mavros_msgs-msg:angle_delta_pitch instead.")
  (angle_delta_pitch m))

(cl:ensure-generic-function 'angle_delta_yaw-val :lambda-list '(m))
(cl:defmethod angle_delta_yaw-val ((m <VisionPoseDelta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:angle_delta_yaw-val is deprecated.  Use mavros_msgs-msg:angle_delta_yaw instead.")
  (angle_delta_yaw m))

(cl:ensure-generic-function 'position_delta_x-val :lambda-list '(m))
(cl:defmethod position_delta_x-val ((m <VisionPoseDelta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:position_delta_x-val is deprecated.  Use mavros_msgs-msg:position_delta_x instead.")
  (position_delta_x m))

(cl:ensure-generic-function 'position_delta_y-val :lambda-list '(m))
(cl:defmethod position_delta_y-val ((m <VisionPoseDelta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:position_delta_y-val is deprecated.  Use mavros_msgs-msg:position_delta_y instead.")
  (position_delta_y m))

(cl:ensure-generic-function 'position_delta_z-val :lambda-list '(m))
(cl:defmethod position_delta_z-val ((m <VisionPoseDelta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:position_delta_z-val is deprecated.  Use mavros_msgs-msg:position_delta_z instead.")
  (position_delta_z m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <VisionPoseDelta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:confidence-val is deprecated.  Use mavros_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisionPoseDelta>) ostream)
  "Serializes a message object of type '<VisionPoseDelta>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_delta_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_delta_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_delta_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_delta_us)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle_delta_roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle_delta_pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle_delta_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position_delta_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position_delta_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position_delta_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'confidence)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisionPoseDelta>) istream)
  "Deserializes a message object of type '<VisionPoseDelta>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_delta_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_delta_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_delta_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_delta_us)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_delta_roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_delta_pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_delta_yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_delta_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_delta_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_delta_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'confidence)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisionPoseDelta>)))
  "Returns string type for a message object of type '<VisionPoseDelta>"
  "mavros_msgs/VisionPoseDelta")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisionPoseDelta)))
  "Returns string type for a message object of type 'VisionPoseDelta"
  "mavros_msgs/VisionPoseDelta")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisionPoseDelta>)))
  "Returns md5sum for a message object of type '<VisionPoseDelta>"
  "19f289602e4e368ce290900eecb3f779")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisionPoseDelta)))
  "Returns md5sum for a message object of type 'VisionPoseDelta"
  "19f289602e4e368ce290900eecb3f779")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisionPoseDelta>)))
  "Returns full string definition for message of type '<VisionPoseDelta>"
  (cl:format cl:nil "# VISION_POSITION_DELTA message data~%~%std_msgs/Header header~%~%uint32 time_delta_us~%~%float32 angle_delta_roll~%float32 angle_delta_pitch~%float32 angle_delta_yaw~%float32 position_delta_x~%float32 position_delta_y~%float32 position_delta_z~%~%uint8 confidence~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisionPoseDelta)))
  "Returns full string definition for message of type 'VisionPoseDelta"
  (cl:format cl:nil "# VISION_POSITION_DELTA message data~%~%std_msgs/Header header~%~%uint32 time_delta_us~%~%float32 angle_delta_roll~%float32 angle_delta_pitch~%float32 angle_delta_yaw~%float32 position_delta_x~%float32 position_delta_y~%float32 position_delta_z~%~%uint8 confidence~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisionPoseDelta>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisionPoseDelta>))
  "Converts a ROS message object to a list"
  (cl:list 'VisionPoseDelta
    (cl:cons ':header (header msg))
    (cl:cons ':time_delta_us (time_delta_us msg))
    (cl:cons ':angle_delta_roll (angle_delta_roll msg))
    (cl:cons ':angle_delta_pitch (angle_delta_pitch msg))
    (cl:cons ':angle_delta_yaw (angle_delta_yaw msg))
    (cl:cons ':position_delta_x (position_delta_x msg))
    (cl:cons ':position_delta_y (position_delta_y msg))
    (cl:cons ':position_delta_z (position_delta_z msg))
    (cl:cons ':confidence (confidence msg))
))
