; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude ParamCreate-request.msg.html

(cl:defclass <ParamCreate-request> (roslisp-msg-protocol:ros-message)
  ((param_info
    :reader param_info
    :initarg :param_info
    :type core_api-msg:ParamInfo
    :initform (cl:make-instance 'core_api-msg:ParamInfo)))
)

(cl:defclass ParamCreate-request (<ParamCreate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamCreate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamCreate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<ParamCreate-request> is deprecated: use core_api-srv:ParamCreate-request instead.")))

(cl:ensure-generic-function 'param_info-val :lambda-list '(m))
(cl:defmethod param_info-val ((m <ParamCreate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:param_info-val is deprecated.  Use core_api-srv:param_info instead.")
  (param_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamCreate-request>) ostream)
  "Serializes a message object of type '<ParamCreate-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'param_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamCreate-request>) istream)
  "Deserializes a message object of type '<ParamCreate-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'param_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamCreate-request>)))
  "Returns string type for a service object of type '<ParamCreate-request>"
  "core_api/ParamCreateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamCreate-request)))
  "Returns string type for a service object of type 'ParamCreate-request"
  "core_api/ParamCreateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamCreate-request>)))
  "Returns md5sum for a message object of type '<ParamCreate-request>"
  "3139407759ce2a5b88c5244e2a57e352")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamCreate-request)))
  "Returns md5sum for a message object of type 'ParamCreate-request"
  "3139407759ce2a5b88c5244e2a57e352")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamCreate-request>)))
  "Returns full string definition for message of type '<ParamCreate-request>"
  (cl:format cl:nil "core_api/ParamInfo param_info~%~%================================================================================~%MSG: core_api/ParamInfo~%string param_id~%string param_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamCreate-request)))
  "Returns full string definition for message of type 'ParamCreate-request"
  (cl:format cl:nil "core_api/ParamInfo param_info~%~%================================================================================~%MSG: core_api/ParamInfo~%string param_id~%string param_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamCreate-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'param_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamCreate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamCreate-request
    (cl:cons ':param_info (param_info msg))
))
;//! \htmlinclude ParamCreate-response.msg.html

(cl:defclass <ParamCreate-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ParamCreate-response (<ParamCreate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamCreate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamCreate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<ParamCreate-response> is deprecated: use core_api-srv:ParamCreate-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ParamCreate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ParamCreate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamCreate-response>) ostream)
  "Serializes a message object of type '<ParamCreate-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamCreate-response>) istream)
  "Deserializes a message object of type '<ParamCreate-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamCreate-response>)))
  "Returns string type for a service object of type '<ParamCreate-response>"
  "core_api/ParamCreateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamCreate-response)))
  "Returns string type for a service object of type 'ParamCreate-response"
  "core_api/ParamCreateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamCreate-response>)))
  "Returns md5sum for a message object of type '<ParamCreate-response>"
  "3139407759ce2a5b88c5244e2a57e352")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamCreate-response)))
  "Returns md5sum for a message object of type 'ParamCreate-response"
  "3139407759ce2a5b88c5244e2a57e352")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamCreate-response>)))
  "Returns full string definition for message of type '<ParamCreate-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamCreate-response)))
  "Returns full string definition for message of type 'ParamCreate-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamCreate-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamCreate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamCreate-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ParamCreate)))
  'ParamCreate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ParamCreate)))
  'ParamCreate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamCreate)))
  "Returns string type for a service object of type '<ParamCreate>"
  "core_api/ParamCreate")