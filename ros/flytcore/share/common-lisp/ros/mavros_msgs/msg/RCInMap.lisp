; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude RCInMap.msg.html

(cl:defclass <RCInMap> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (rssi
    :reader rssi
    :initarg :rssi
    :type cl:fixnum
    :initform 0)
   (channels
    :reader channels
    :initarg :channels
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass RCInMap (<RCInMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RCInMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RCInMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<RCInMap> is deprecated: use mavros_msgs-msg:RCInMap instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RCInMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:header-val is deprecated.  Use mavros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'rssi-val :lambda-list '(m))
(cl:defmethod rssi-val ((m <RCInMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:rssi-val is deprecated.  Use mavros_msgs-msg:rssi instead.")
  (rssi m))

(cl:ensure-generic-function 'channels-val :lambda-list '(m))
(cl:defmethod channels-val ((m <RCInMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:channels-val is deprecated.  Use mavros_msgs-msg:channels instead.")
  (channels m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RCInMap>) ostream)
  "Serializes a message object of type '<RCInMap>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rssi)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'channels))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'channels))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RCInMap>) istream)
  "Deserializes a message object of type '<RCInMap>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rssi)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'channels) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'channels)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RCInMap>)))
  "Returns string type for a message object of type '<RCInMap>"
  "mavros_msgs/RCInMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RCInMap)))
  "Returns string type for a message object of type 'RCInMap"
  "mavros_msgs/RCInMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RCInMap>)))
  "Returns md5sum for a message object of type '<RCInMap>"
  "4039fa96f71dfdaad8b6946cc670fd98")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RCInMap)))
  "Returns md5sum for a message object of type 'RCInMap"
  "4039fa96f71dfdaad8b6946cc670fd98")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RCInMap>)))
  "Returns full string definition for message of type '<RCInMap>"
  (cl:format cl:nil "# RAW RC input state~%~%std_msgs/Header header~%uint8 rssi~%float32[] channels~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RCInMap)))
  "Returns full string definition for message of type 'RCInMap"
  (cl:format cl:nil "# RAW RC input state~%~%std_msgs/Header header~%uint8 rssi~%float32[] channels~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RCInMap>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'channels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RCInMap>))
  "Converts a ROS message object to a list"
  (cl:list 'RCInMap
    (cl:cons ':header (header msg))
    (cl:cons ':rssi (rssi msg))
    (cl:cons ':channels (channels msg))
))
