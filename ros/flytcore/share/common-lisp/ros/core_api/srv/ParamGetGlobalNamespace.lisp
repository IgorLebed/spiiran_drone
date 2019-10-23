; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude ParamGetGlobalNamespace-request.msg.html

(cl:defclass <ParamGetGlobalNamespace-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ParamGetGlobalNamespace-request (<ParamGetGlobalNamespace-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamGetGlobalNamespace-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamGetGlobalNamespace-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<ParamGetGlobalNamespace-request> is deprecated: use core_api-srv:ParamGetGlobalNamespace-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamGetGlobalNamespace-request>) ostream)
  "Serializes a message object of type '<ParamGetGlobalNamespace-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamGetGlobalNamespace-request>) istream)
  "Deserializes a message object of type '<ParamGetGlobalNamespace-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamGetGlobalNamespace-request>)))
  "Returns string type for a service object of type '<ParamGetGlobalNamespace-request>"
  "core_api/ParamGetGlobalNamespaceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamGetGlobalNamespace-request)))
  "Returns string type for a service object of type 'ParamGetGlobalNamespace-request"
  "core_api/ParamGetGlobalNamespaceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamGetGlobalNamespace-request>)))
  "Returns md5sum for a message object of type '<ParamGetGlobalNamespace-request>"
  "dbd6d35ff58e7e1c082ccd13944710ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamGetGlobalNamespace-request)))
  "Returns md5sum for a message object of type 'ParamGetGlobalNamespace-request"
  "dbd6d35ff58e7e1c082ccd13944710ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamGetGlobalNamespace-request>)))
  "Returns full string definition for message of type '<ParamGetGlobalNamespace-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamGetGlobalNamespace-request)))
  "Returns full string definition for message of type 'ParamGetGlobalNamespace-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamGetGlobalNamespace-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamGetGlobalNamespace-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamGetGlobalNamespace-request
))
;//! \htmlinclude ParamGetGlobalNamespace-response.msg.html

(cl:defclass <ParamGetGlobalNamespace-response> (roslisp-msg-protocol:ros-message)
  ((param_info
    :reader param_info
    :initarg :param_info
    :type core_api-msg:ParamInfo
    :initform (cl:make-instance 'core_api-msg:ParamInfo))
   (success
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

(cl:defclass ParamGetGlobalNamespace-response (<ParamGetGlobalNamespace-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamGetGlobalNamespace-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamGetGlobalNamespace-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<ParamGetGlobalNamespace-response> is deprecated: use core_api-srv:ParamGetGlobalNamespace-response instead.")))

(cl:ensure-generic-function 'param_info-val :lambda-list '(m))
(cl:defmethod param_info-val ((m <ParamGetGlobalNamespace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:param_info-val is deprecated.  Use core_api-srv:param_info instead.")
  (param_info m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ParamGetGlobalNamespace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ParamGetGlobalNamespace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamGetGlobalNamespace-response>) ostream)
  "Serializes a message object of type '<ParamGetGlobalNamespace-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'param_info) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamGetGlobalNamespace-response>) istream)
  "Deserializes a message object of type '<ParamGetGlobalNamespace-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'param_info) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamGetGlobalNamespace-response>)))
  "Returns string type for a service object of type '<ParamGetGlobalNamespace-response>"
  "core_api/ParamGetGlobalNamespaceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamGetGlobalNamespace-response)))
  "Returns string type for a service object of type 'ParamGetGlobalNamespace-response"
  "core_api/ParamGetGlobalNamespaceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamGetGlobalNamespace-response>)))
  "Returns md5sum for a message object of type '<ParamGetGlobalNamespace-response>"
  "dbd6d35ff58e7e1c082ccd13944710ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamGetGlobalNamespace-response)))
  "Returns md5sum for a message object of type 'ParamGetGlobalNamespace-response"
  "dbd6d35ff58e7e1c082ccd13944710ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamGetGlobalNamespace-response>)))
  "Returns full string definition for message of type '<ParamGetGlobalNamespace-response>"
  (cl:format cl:nil "core_api/ParamInfo param_info~%bool success~%string message~%~%~%================================================================================~%MSG: core_api/ParamInfo~%string param_id~%string param_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamGetGlobalNamespace-response)))
  "Returns full string definition for message of type 'ParamGetGlobalNamespace-response"
  (cl:format cl:nil "core_api/ParamInfo param_info~%bool success~%string message~%~%~%================================================================================~%MSG: core_api/ParamInfo~%string param_id~%string param_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamGetGlobalNamespace-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'param_info))
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamGetGlobalNamespace-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamGetGlobalNamespace-response
    (cl:cons ':param_info (param_info msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ParamGetGlobalNamespace)))
  'ParamGetGlobalNamespace-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ParamGetGlobalNamespace)))
  'ParamGetGlobalNamespace-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamGetGlobalNamespace)))
  "Returns string type for a service object of type '<ParamGetGlobalNamespace>"
  "core_api/ParamGetGlobalNamespace")