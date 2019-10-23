; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude PositionSetGlobal-request.msg.html

(cl:defclass <PositionSetGlobal-request> (roslisp-msg-protocol:ros-message)
  ((twist
    :reader twist
    :initarg :twist
    :type geometry_msgs-msg:TwistStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TwistStamped))
   (lat_x
    :reader lat_x
    :initarg :lat_x
    :type cl:float
    :initform 0.0)
   (long_y
    :reader long_y
    :initarg :long_y
    :type cl:float
    :initform 0.0)
   (rel_alt_z
    :reader rel_alt_z
    :initarg :rel_alt_z
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (tolerance
    :reader tolerance
    :initarg :tolerance
    :type cl:float
    :initform 0.0)
   (async
    :reader async
    :initarg :async
    :type cl:boolean
    :initform cl:nil)
   (yaw_valid
    :reader yaw_valid
    :initarg :yaw_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PositionSetGlobal-request (<PositionSetGlobal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionSetGlobal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionSetGlobal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<PositionSetGlobal-request> is deprecated: use core_api-srv:PositionSetGlobal-request instead.")))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <PositionSetGlobal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:twist-val is deprecated.  Use core_api-srv:twist instead.")
  (twist m))

(cl:ensure-generic-function 'lat_x-val :lambda-list '(m))
(cl:defmethod lat_x-val ((m <PositionSetGlobal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:lat_x-val is deprecated.  Use core_api-srv:lat_x instead.")
  (lat_x m))

(cl:ensure-generic-function 'long_y-val :lambda-list '(m))
(cl:defmethod long_y-val ((m <PositionSetGlobal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:long_y-val is deprecated.  Use core_api-srv:long_y instead.")
  (long_y m))

(cl:ensure-generic-function 'rel_alt_z-val :lambda-list '(m))
(cl:defmethod rel_alt_z-val ((m <PositionSetGlobal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:rel_alt_z-val is deprecated.  Use core_api-srv:rel_alt_z instead.")
  (rel_alt_z m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <PositionSetGlobal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:yaw-val is deprecated.  Use core_api-srv:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'tolerance-val :lambda-list '(m))
(cl:defmethod tolerance-val ((m <PositionSetGlobal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:tolerance-val is deprecated.  Use core_api-srv:tolerance instead.")
  (tolerance m))

(cl:ensure-generic-function 'async-val :lambda-list '(m))
(cl:defmethod async-val ((m <PositionSetGlobal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:async-val is deprecated.  Use core_api-srv:async instead.")
  (async m))

(cl:ensure-generic-function 'yaw_valid-val :lambda-list '(m))
(cl:defmethod yaw_valid-val ((m <PositionSetGlobal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:yaw_valid-val is deprecated.  Use core_api-srv:yaw_valid instead.")
  (yaw_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionSetGlobal-request>) ostream)
  "Serializes a message object of type '<PositionSetGlobal-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lat_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'long_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rel_alt_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tolerance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'async) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'yaw_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionSetGlobal-request>) istream)
  "Deserializes a message object of type '<PositionSetGlobal-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'long_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rel_alt_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tolerance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'async) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'yaw_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionSetGlobal-request>)))
  "Returns string type for a service object of type '<PositionSetGlobal-request>"
  "core_api/PositionSetGlobalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionSetGlobal-request)))
  "Returns string type for a service object of type 'PositionSetGlobal-request"
  "core_api/PositionSetGlobalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionSetGlobal-request>)))
  "Returns md5sum for a message object of type '<PositionSetGlobal-request>"
  "6578c26fcd60d8ecd591fdca570571f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionSetGlobal-request)))
  "Returns md5sum for a message object of type 'PositionSetGlobal-request"
  "6578c26fcd60d8ecd591fdca570571f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionSetGlobal-request>)))
  "Returns full string definition for message of type '<PositionSetGlobal-request>"
  (cl:format cl:nil "~%~%~%~%geometry_msgs/TwistStamped twist~%float32 lat_x~%float32 long_y~%float32 rel_alt_z~%float32 yaw~%float32 tolerance~%bool async~%bool yaw_valid~%~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionSetGlobal-request)))
  "Returns full string definition for message of type 'PositionSetGlobal-request"
  (cl:format cl:nil "~%~%~%~%geometry_msgs/TwistStamped twist~%float32 lat_x~%float32 long_y~%float32 rel_alt_z~%float32 yaw~%float32 tolerance~%bool async~%bool yaw_valid~%~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionSetGlobal-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
     4
     4
     4
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionSetGlobal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionSetGlobal-request
    (cl:cons ':twist (twist msg))
    (cl:cons ':lat_x (lat_x msg))
    (cl:cons ':long_y (long_y msg))
    (cl:cons ':rel_alt_z (rel_alt_z msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':tolerance (tolerance msg))
    (cl:cons ':async (async msg))
    (cl:cons ':yaw_valid (yaw_valid msg))
))
;//! \htmlinclude PositionSetGlobal-response.msg.html

(cl:defclass <PositionSetGlobal-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass PositionSetGlobal-response (<PositionSetGlobal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionSetGlobal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionSetGlobal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<PositionSetGlobal-response> is deprecated: use core_api-srv:PositionSetGlobal-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PositionSetGlobal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <PositionSetGlobal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionSetGlobal-response>) ostream)
  "Serializes a message object of type '<PositionSetGlobal-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionSetGlobal-response>) istream)
  "Deserializes a message object of type '<PositionSetGlobal-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionSetGlobal-response>)))
  "Returns string type for a service object of type '<PositionSetGlobal-response>"
  "core_api/PositionSetGlobalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionSetGlobal-response)))
  "Returns string type for a service object of type 'PositionSetGlobal-response"
  "core_api/PositionSetGlobalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionSetGlobal-response>)))
  "Returns md5sum for a message object of type '<PositionSetGlobal-response>"
  "6578c26fcd60d8ecd591fdca570571f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionSetGlobal-response)))
  "Returns md5sum for a message object of type 'PositionSetGlobal-response"
  "6578c26fcd60d8ecd591fdca570571f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionSetGlobal-response>)))
  "Returns full string definition for message of type '<PositionSetGlobal-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionSetGlobal-response)))
  "Returns full string definition for message of type 'PositionSetGlobal-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionSetGlobal-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionSetGlobal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionSetGlobal-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PositionSetGlobal)))
  'PositionSetGlobal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PositionSetGlobal)))
  'PositionSetGlobal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionSetGlobal)))
  "Returns string type for a service object of type '<PositionSetGlobal>"
  "core_api/PositionSetGlobal")