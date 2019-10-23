; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude GPSGlobalOrigin.msg.html

(cl:defclass <GPSGlobalOrigin> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (x_lat
    :reader x_lat
    :initarg :x_lat
    :type cl:float
    :initform 0.0)
   (y_long
    :reader y_long
    :initarg :y_long
    :type cl:float
    :initform 0.0)
   (z_alt
    :reader z_alt
    :initarg :z_alt
    :type cl:float
    :initform 0.0))
)

(cl:defclass GPSGlobalOrigin (<GPSGlobalOrigin>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GPSGlobalOrigin>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GPSGlobalOrigin)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<GPSGlobalOrigin> is deprecated: use mavros_msgs-msg:GPSGlobalOrigin instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GPSGlobalOrigin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'x_lat-val :lambda-list '(m))
(cl:defmethod x_lat-val ((m <GPSGlobalOrigin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:x_lat-val is deprecated.  Use mavros_msgs-msg:x_lat instead.")
  (x_lat m))

(cl:ensure-generic-function 'y_long-val :lambda-list '(m))
(cl:defmethod y_long-val ((m <GPSGlobalOrigin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:y_long-val is deprecated.  Use mavros_msgs-msg:y_long instead.")
  (y_long m))

(cl:ensure-generic-function 'z_alt-val :lambda-list '(m))
(cl:defmethod z_alt-val ((m <GPSGlobalOrigin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:z_alt-val is deprecated.  Use mavros_msgs-msg:z_alt instead.")
  (z_alt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GPSGlobalOrigin>) ostream)
  "Serializes a message object of type '<GPSGlobalOrigin>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y_long))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z_alt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GPSGlobalOrigin>) istream)
  "Deserializes a message object of type '<GPSGlobalOrigin>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_lat) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_long) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z_alt) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GPSGlobalOrigin>)))
  "Returns string type for a message object of type '<GPSGlobalOrigin>"
  "mavros_msgs/GPSGlobalOrigin")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GPSGlobalOrigin)))
  "Returns string type for a message object of type 'GPSGlobalOrigin"
  "mavros_msgs/GPSGlobalOrigin")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GPSGlobalOrigin>)))
  "Returns md5sum for a message object of type '<GPSGlobalOrigin>"
  "97beaea8077a69778b64e4ec4e002893")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GPSGlobalOrigin)))
  "Returns md5sum for a message object of type 'GPSGlobalOrigin"
  "97beaea8077a69778b64e4ec4e002893")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GPSGlobalOrigin>)))
  "Returns full string definition for message of type '<GPSGlobalOrigin>"
  (cl:format cl:nil "# GPS_GLOBAL_ORIGIN message data~%~%Header header~%~%float32 x_lat~%float32 y_long~%float32 z_alt~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GPSGlobalOrigin)))
  "Returns full string definition for message of type 'GPSGlobalOrigin"
  (cl:format cl:nil "# GPS_GLOBAL_ORIGIN message data~%~%Header header~%~%float32 x_lat~%float32 y_long~%float32 z_alt~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GPSGlobalOrigin>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GPSGlobalOrigin>))
  "Converts a ROS message object to a list"
  (cl:list 'GPSGlobalOrigin
    (cl:cons ':header (header msg))
    (cl:cons ':x_lat (x_lat msg))
    (cl:cons ':y_long (y_long msg))
    (cl:cons ':z_alt (z_alt msg))
))
