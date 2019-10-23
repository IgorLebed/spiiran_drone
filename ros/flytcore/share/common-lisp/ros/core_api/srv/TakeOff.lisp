; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude TakeOff-request.msg.html

(cl:defclass <TakeOff-request> (roslisp-msg-protocol:ros-message)
  ((takeoff_alt
    :reader takeoff_alt
    :initarg :takeoff_alt
    :type cl:float
    :initform 0.0))
)

(cl:defclass TakeOff-request (<TakeOff-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TakeOff-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TakeOff-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<TakeOff-request> is deprecated: use core_api-srv:TakeOff-request instead.")))

(cl:ensure-generic-function 'takeoff_alt-val :lambda-list '(m))
(cl:defmethod takeoff_alt-val ((m <TakeOff-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:takeoff_alt-val is deprecated.  Use core_api-srv:takeoff_alt instead.")
  (takeoff_alt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TakeOff-request>) ostream)
  "Serializes a message object of type '<TakeOff-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'takeoff_alt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TakeOff-request>) istream)
  "Deserializes a message object of type '<TakeOff-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'takeoff_alt) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TakeOff-request>)))
  "Returns string type for a service object of type '<TakeOff-request>"
  "core_api/TakeOffRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakeOff-request)))
  "Returns string type for a service object of type 'TakeOff-request"
  "core_api/TakeOffRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TakeOff-request>)))
  "Returns md5sum for a message object of type '<TakeOff-request>"
  "8cfca9a26364ca62689da1c045d9ce94")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TakeOff-request)))
  "Returns md5sum for a message object of type 'TakeOff-request"
  "8cfca9a26364ca62689da1c045d9ce94")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TakeOff-request>)))
  "Returns full string definition for message of type '<TakeOff-request>"
  (cl:format cl:nil "~%~%~%float32 takeoff_alt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TakeOff-request)))
  "Returns full string definition for message of type 'TakeOff-request"
  (cl:format cl:nil "~%~%~%float32 takeoff_alt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TakeOff-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TakeOff-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TakeOff-request
    (cl:cons ':takeoff_alt (takeoff_alt msg))
))
;//! \htmlinclude TakeOff-response.msg.html

(cl:defclass <TakeOff-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass TakeOff-response (<TakeOff-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TakeOff-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TakeOff-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<TakeOff-response> is deprecated: use core_api-srv:TakeOff-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TakeOff-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <TakeOff-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TakeOff-response>) ostream)
  "Serializes a message object of type '<TakeOff-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TakeOff-response>) istream)
  "Deserializes a message object of type '<TakeOff-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TakeOff-response>)))
  "Returns string type for a service object of type '<TakeOff-response>"
  "core_api/TakeOffResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakeOff-response)))
  "Returns string type for a service object of type 'TakeOff-response"
  "core_api/TakeOffResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TakeOff-response>)))
  "Returns md5sum for a message object of type '<TakeOff-response>"
  "8cfca9a26364ca62689da1c045d9ce94")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TakeOff-response)))
  "Returns md5sum for a message object of type 'TakeOff-response"
  "8cfca9a26364ca62689da1c045d9ce94")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TakeOff-response>)))
  "Returns full string definition for message of type '<TakeOff-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TakeOff-response)))
  "Returns full string definition for message of type 'TakeOff-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TakeOff-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TakeOff-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TakeOff-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TakeOff)))
  'TakeOff-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TakeOff)))
  'TakeOff-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakeOff)))
  "Returns string type for a service object of type '<TakeOff>"
  "core_api/TakeOff")