; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude ExecScript-request.msg.html

(cl:defclass <ExecScript-request> (roslisp-msg-protocol:ros-message)
  ((app_name
    :reader app_name
    :initarg :app_name
    :type cl:string
    :initform "")
   (arguments
    :reader arguments
    :initarg :arguments
    :type cl:string
    :initform ""))
)

(cl:defclass ExecScript-request (<ExecScript-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecScript-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecScript-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<ExecScript-request> is deprecated: use core_api-srv:ExecScript-request instead.")))

(cl:ensure-generic-function 'app_name-val :lambda-list '(m))
(cl:defmethod app_name-val ((m <ExecScript-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:app_name-val is deprecated.  Use core_api-srv:app_name instead.")
  (app_name m))

(cl:ensure-generic-function 'arguments-val :lambda-list '(m))
(cl:defmethod arguments-val ((m <ExecScript-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:arguments-val is deprecated.  Use core_api-srv:arguments instead.")
  (arguments m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecScript-request>) ostream)
  "Serializes a message object of type '<ExecScript-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'app_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'app_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'arguments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'arguments))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecScript-request>) istream)
  "Deserializes a message object of type '<ExecScript-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'app_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'app_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arguments) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'arguments) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecScript-request>)))
  "Returns string type for a service object of type '<ExecScript-request>"
  "core_api/ExecScriptRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecScript-request)))
  "Returns string type for a service object of type 'ExecScript-request"
  "core_api/ExecScriptRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecScript-request>)))
  "Returns md5sum for a message object of type '<ExecScript-request>"
  "dc0ad6b67076c8affab5d27840600a3e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecScript-request)))
  "Returns md5sum for a message object of type 'ExecScript-request"
  "dc0ad6b67076c8affab5d27840600a3e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecScript-request>)))
  "Returns full string definition for message of type '<ExecScript-request>"
  (cl:format cl:nil "~%~%~%string app_name~%string arguments~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecScript-request)))
  "Returns full string definition for message of type 'ExecScript-request"
  (cl:format cl:nil "~%~%~%string app_name~%string arguments~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecScript-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'app_name))
     4 (cl:length (cl:slot-value msg 'arguments))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecScript-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecScript-request
    (cl:cons ':app_name (app_name msg))
    (cl:cons ':arguments (arguments msg))
))
;//! \htmlinclude ExecScript-response.msg.html

(cl:defclass <ExecScript-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ExecScript-response (<ExecScript-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecScript-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecScript-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<ExecScript-response> is deprecated: use core_api-srv:ExecScript-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ExecScript-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ExecScript-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecScript-response>) ostream)
  "Serializes a message object of type '<ExecScript-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecScript-response>) istream)
  "Deserializes a message object of type '<ExecScript-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecScript-response>)))
  "Returns string type for a service object of type '<ExecScript-response>"
  "core_api/ExecScriptResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecScript-response)))
  "Returns string type for a service object of type 'ExecScript-response"
  "core_api/ExecScriptResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecScript-response>)))
  "Returns md5sum for a message object of type '<ExecScript-response>"
  "dc0ad6b67076c8affab5d27840600a3e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecScript-response)))
  "Returns md5sum for a message object of type 'ExecScript-response"
  "dc0ad6b67076c8affab5d27840600a3e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecScript-response>)))
  "Returns full string definition for message of type '<ExecScript-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecScript-response)))
  "Returns full string definition for message of type 'ExecScript-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecScript-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecScript-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecScript-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ExecScript)))
  'ExecScript-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ExecScript)))
  'ExecScript-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecScript)))
  "Returns string type for a service object of type '<ExecScript>"
  "core_api/ExecScript")