; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude UserModeNameSetReset-request.msg.html

(cl:defclass <UserModeNameSetReset-request> (roslisp-msg-protocol:ros-message)
  ((mode_name
    :reader mode_name
    :initarg :mode_name
    :type cl:string
    :initform ""))
)

(cl:defclass UserModeNameSetReset-request (<UserModeNameSetReset-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UserModeNameSetReset-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UserModeNameSetReset-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<UserModeNameSetReset-request> is deprecated: use core_api-srv:UserModeNameSetReset-request instead.")))

(cl:ensure-generic-function 'mode_name-val :lambda-list '(m))
(cl:defmethod mode_name-val ((m <UserModeNameSetReset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:mode_name-val is deprecated.  Use core_api-srv:mode_name instead.")
  (mode_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UserModeNameSetReset-request>) ostream)
  "Serializes a message object of type '<UserModeNameSetReset-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UserModeNameSetReset-request>) istream)
  "Deserializes a message object of type '<UserModeNameSetReset-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UserModeNameSetReset-request>)))
  "Returns string type for a service object of type '<UserModeNameSetReset-request>"
  "core_api/UserModeNameSetResetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UserModeNameSetReset-request)))
  "Returns string type for a service object of type 'UserModeNameSetReset-request"
  "core_api/UserModeNameSetResetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UserModeNameSetReset-request>)))
  "Returns md5sum for a message object of type '<UserModeNameSetReset-request>"
  "c06586fa4c917507a885a22dde0aa9b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UserModeNameSetReset-request)))
  "Returns md5sum for a message object of type 'UserModeNameSetReset-request"
  "c06586fa4c917507a885a22dde0aa9b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UserModeNameSetReset-request>)))
  "Returns full string definition for message of type '<UserModeNameSetReset-request>"
  (cl:format cl:nil "string mode_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UserModeNameSetReset-request)))
  "Returns full string definition for message of type 'UserModeNameSetReset-request"
  (cl:format cl:nil "string mode_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UserModeNameSetReset-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mode_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UserModeNameSetReset-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UserModeNameSetReset-request
    (cl:cons ':mode_name (mode_name msg))
))
;//! \htmlinclude UserModeNameSetReset-response.msg.html

(cl:defclass <UserModeNameSetReset-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass UserModeNameSetReset-response (<UserModeNameSetReset-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UserModeNameSetReset-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UserModeNameSetReset-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<UserModeNameSetReset-response> is deprecated: use core_api-srv:UserModeNameSetReset-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <UserModeNameSetReset-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <UserModeNameSetReset-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UserModeNameSetReset-response>) ostream)
  "Serializes a message object of type '<UserModeNameSetReset-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UserModeNameSetReset-response>) istream)
  "Deserializes a message object of type '<UserModeNameSetReset-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UserModeNameSetReset-response>)))
  "Returns string type for a service object of type '<UserModeNameSetReset-response>"
  "core_api/UserModeNameSetResetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UserModeNameSetReset-response)))
  "Returns string type for a service object of type 'UserModeNameSetReset-response"
  "core_api/UserModeNameSetResetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UserModeNameSetReset-response>)))
  "Returns md5sum for a message object of type '<UserModeNameSetReset-response>"
  "c06586fa4c917507a885a22dde0aa9b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UserModeNameSetReset-response)))
  "Returns md5sum for a message object of type 'UserModeNameSetReset-response"
  "c06586fa4c917507a885a22dde0aa9b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UserModeNameSetReset-response>)))
  "Returns full string definition for message of type '<UserModeNameSetReset-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UserModeNameSetReset-response)))
  "Returns full string definition for message of type 'UserModeNameSetReset-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UserModeNameSetReset-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UserModeNameSetReset-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UserModeNameSetReset-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UserModeNameSetReset)))
  'UserModeNameSetReset-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UserModeNameSetReset)))
  'UserModeNameSetReset-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UserModeNameSetReset)))
  "Returns string type for a service object of type '<UserModeNameSetReset>"
  "core_api/UserModeNameSetReset")