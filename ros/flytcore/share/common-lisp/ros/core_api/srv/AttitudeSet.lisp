; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude AttitudeSet-request.msg.html

(cl:defclass <AttitudeSet-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:TwistStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TwistStamped))
   (thrust
    :reader thrust
    :initarg :thrust
    :type cl:float
    :initform 0.0))
)

(cl:defclass AttitudeSet-request (<AttitudeSet-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AttitudeSet-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AttitudeSet-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<AttitudeSet-request> is deprecated: use core_api-srv:AttitudeSet-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <AttitudeSet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:pose-val is deprecated.  Use core_api-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'thrust-val :lambda-list '(m))
(cl:defmethod thrust-val ((m <AttitudeSet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:thrust-val is deprecated.  Use core_api-srv:thrust instead.")
  (thrust m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AttitudeSet-request>) ostream)
  "Serializes a message object of type '<AttitudeSet-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'thrust))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AttitudeSet-request>) istream)
  "Deserializes a message object of type '<AttitudeSet-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'thrust) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AttitudeSet-request>)))
  "Returns string type for a service object of type '<AttitudeSet-request>"
  "core_api/AttitudeSetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AttitudeSet-request)))
  "Returns string type for a service object of type 'AttitudeSet-request"
  "core_api/AttitudeSetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AttitudeSet-request>)))
  "Returns md5sum for a message object of type '<AttitudeSet-request>"
  "02ef05bc934cfab99f90890e9a9fdc80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AttitudeSet-request)))
  "Returns md5sum for a message object of type 'AttitudeSet-request"
  "02ef05bc934cfab99f90890e9a9fdc80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AttitudeSet-request>)))
  "Returns full string definition for message of type '<AttitudeSet-request>"
  (cl:format cl:nil "~%~%~%geometry_msgs/TwistStamped pose~%float32 thrust~%~%~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AttitudeSet-request)))
  "Returns full string definition for message of type 'AttitudeSet-request"
  (cl:format cl:nil "~%~%~%geometry_msgs/TwistStamped pose~%float32 thrust~%~%~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AttitudeSet-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AttitudeSet-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AttitudeSet-request
    (cl:cons ':pose (pose msg))
    (cl:cons ':thrust (thrust msg))
))
;//! \htmlinclude AttitudeSet-response.msg.html

(cl:defclass <AttitudeSet-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass AttitudeSet-response (<AttitudeSet-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AttitudeSet-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AttitudeSet-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<AttitudeSet-response> is deprecated: use core_api-srv:AttitudeSet-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AttitudeSet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <AttitudeSet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AttitudeSet-response>) ostream)
  "Serializes a message object of type '<AttitudeSet-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AttitudeSet-response>) istream)
  "Deserializes a message object of type '<AttitudeSet-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AttitudeSet-response>)))
  "Returns string type for a service object of type '<AttitudeSet-response>"
  "core_api/AttitudeSetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AttitudeSet-response)))
  "Returns string type for a service object of type 'AttitudeSet-response"
  "core_api/AttitudeSetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AttitudeSet-response>)))
  "Returns md5sum for a message object of type '<AttitudeSet-response>"
  "02ef05bc934cfab99f90890e9a9fdc80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AttitudeSet-response)))
  "Returns md5sum for a message object of type 'AttitudeSet-response"
  "02ef05bc934cfab99f90890e9a9fdc80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AttitudeSet-response>)))
  "Returns full string definition for message of type '<AttitudeSet-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AttitudeSet-response)))
  "Returns full string definition for message of type 'AttitudeSet-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AttitudeSet-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AttitudeSet-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AttitudeSet-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AttitudeSet)))
  'AttitudeSet-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AttitudeSet)))
  'AttitudeSet-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AttitudeSet)))
  "Returns string type for a service object of type '<AttitudeSet>"
  "core_api/AttitudeSet")