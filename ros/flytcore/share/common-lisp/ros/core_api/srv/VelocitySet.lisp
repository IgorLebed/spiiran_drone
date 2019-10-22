; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude VelocitySet-request.msg.html

(cl:defclass <VelocitySet-request> (roslisp-msg-protocol:ros-message)
  ((twist
    :reader twist
    :initarg :twist
    :type geometry_msgs-msg:TwistStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TwistStamped))
   (vx
    :reader vx
    :initarg :vx
    :type cl:float
    :initform 0.0)
   (vy
    :reader vy
    :initarg :vy
    :type cl:float
    :initform 0.0)
   (vz
    :reader vz
    :initarg :vz
    :type cl:float
    :initform 0.0)
   (yaw_rate
    :reader yaw_rate
    :initarg :yaw_rate
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
   (relative
    :reader relative
    :initarg :relative
    :type cl:boolean
    :initform cl:nil)
   (yaw_rate_valid
    :reader yaw_rate_valid
    :initarg :yaw_rate_valid
    :type cl:boolean
    :initform cl:nil)
   (body_frame
    :reader body_frame
    :initarg :body_frame
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VelocitySet-request (<VelocitySet-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelocitySet-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelocitySet-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<VelocitySet-request> is deprecated: use core_api-srv:VelocitySet-request instead.")))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <VelocitySet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:twist-val is deprecated.  Use core_api-srv:twist instead.")
  (twist m))

(cl:ensure-generic-function 'vx-val :lambda-list '(m))
(cl:defmethod vx-val ((m <VelocitySet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:vx-val is deprecated.  Use core_api-srv:vx instead.")
  (vx m))

(cl:ensure-generic-function 'vy-val :lambda-list '(m))
(cl:defmethod vy-val ((m <VelocitySet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:vy-val is deprecated.  Use core_api-srv:vy instead.")
  (vy m))

(cl:ensure-generic-function 'vz-val :lambda-list '(m))
(cl:defmethod vz-val ((m <VelocitySet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:vz-val is deprecated.  Use core_api-srv:vz instead.")
  (vz m))

(cl:ensure-generic-function 'yaw_rate-val :lambda-list '(m))
(cl:defmethod yaw_rate-val ((m <VelocitySet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:yaw_rate-val is deprecated.  Use core_api-srv:yaw_rate instead.")
  (yaw_rate m))

(cl:ensure-generic-function 'tolerance-val :lambda-list '(m))
(cl:defmethod tolerance-val ((m <VelocitySet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:tolerance-val is deprecated.  Use core_api-srv:tolerance instead.")
  (tolerance m))

(cl:ensure-generic-function 'async-val :lambda-list '(m))
(cl:defmethod async-val ((m <VelocitySet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:async-val is deprecated.  Use core_api-srv:async instead.")
  (async m))

(cl:ensure-generic-function 'relative-val :lambda-list '(m))
(cl:defmethod relative-val ((m <VelocitySet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:relative-val is deprecated.  Use core_api-srv:relative instead.")
  (relative m))

(cl:ensure-generic-function 'yaw_rate_valid-val :lambda-list '(m))
(cl:defmethod yaw_rate_valid-val ((m <VelocitySet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:yaw_rate_valid-val is deprecated.  Use core_api-srv:yaw_rate_valid instead.")
  (yaw_rate_valid m))

(cl:ensure-generic-function 'body_frame-val :lambda-list '(m))
(cl:defmethod body_frame-val ((m <VelocitySet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:body_frame-val is deprecated.  Use core_api-srv:body_frame instead.")
  (body_frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelocitySet-request>) ostream)
  "Serializes a message object of type '<VelocitySet-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw_rate))))
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'relative) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'yaw_rate_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'body_frame) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelocitySet-request>) istream)
  "Deserializes a message object of type '<VelocitySet-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tolerance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'async) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'relative) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'yaw_rate_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'body_frame) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelocitySet-request>)))
  "Returns string type for a service object of type '<VelocitySet-request>"
  "core_api/VelocitySetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocitySet-request)))
  "Returns string type for a service object of type 'VelocitySet-request"
  "core_api/VelocitySetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelocitySet-request>)))
  "Returns md5sum for a message object of type '<VelocitySet-request>"
  "4d8d96be58a2a2be16d36c94c6b850a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelocitySet-request)))
  "Returns md5sum for a message object of type 'VelocitySet-request"
  "4d8d96be58a2a2be16d36c94c6b850a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelocitySet-request>)))
  "Returns full string definition for message of type '<VelocitySet-request>"
  (cl:format cl:nil "~%~%~%~%geometry_msgs/TwistStamped twist~%float32 vx~%float32 vy~%float32 vz~%float32 yaw_rate~%float32 tolerance~%bool async~%bool relative~%bool yaw_rate_valid~%bool body_frame~%~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelocitySet-request)))
  "Returns full string definition for message of type 'VelocitySet-request"
  (cl:format cl:nil "~%~%~%~%geometry_msgs/TwistStamped twist~%float32 vx~%float32 vy~%float32 vz~%float32 yaw_rate~%float32 tolerance~%bool async~%bool relative~%bool yaw_rate_valid~%bool body_frame~%~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelocitySet-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
     4
     4
     4
     4
     4
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelocitySet-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VelocitySet-request
    (cl:cons ':twist (twist msg))
    (cl:cons ':vx (vx msg))
    (cl:cons ':vy (vy msg))
    (cl:cons ':vz (vz msg))
    (cl:cons ':yaw_rate (yaw_rate msg))
    (cl:cons ':tolerance (tolerance msg))
    (cl:cons ':async (async msg))
    (cl:cons ':relative (relative msg))
    (cl:cons ':yaw_rate_valid (yaw_rate_valid msg))
    (cl:cons ':body_frame (body_frame msg))
))
;//! \htmlinclude VelocitySet-response.msg.html

(cl:defclass <VelocitySet-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass VelocitySet-response (<VelocitySet-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelocitySet-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelocitySet-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<VelocitySet-response> is deprecated: use core_api-srv:VelocitySet-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <VelocitySet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <VelocitySet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelocitySet-response>) ostream)
  "Serializes a message object of type '<VelocitySet-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelocitySet-response>) istream)
  "Deserializes a message object of type '<VelocitySet-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelocitySet-response>)))
  "Returns string type for a service object of type '<VelocitySet-response>"
  "core_api/VelocitySetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocitySet-response)))
  "Returns string type for a service object of type 'VelocitySet-response"
  "core_api/VelocitySetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelocitySet-response>)))
  "Returns md5sum for a message object of type '<VelocitySet-response>"
  "4d8d96be58a2a2be16d36c94c6b850a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelocitySet-response)))
  "Returns md5sum for a message object of type 'VelocitySet-response"
  "4d8d96be58a2a2be16d36c94c6b850a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelocitySet-response>)))
  "Returns full string definition for message of type '<VelocitySet-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelocitySet-response)))
  "Returns full string definition for message of type 'VelocitySet-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelocitySet-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelocitySet-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VelocitySet-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VelocitySet)))
  'VelocitySet-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VelocitySet)))
  'VelocitySet-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocitySet)))
  "Returns string type for a service object of type '<VelocitySet>"
  "core_api/VelocitySet")