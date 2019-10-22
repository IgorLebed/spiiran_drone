; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude ParamDelete-request.msg.html

(cl:defclass <ParamDelete-request> (roslisp-msg-protocol:ros-message)
  ((param_id
    :reader param_id
    :initarg :param_id
    :type cl:string
    :initform ""))
)

(cl:defclass ParamDelete-request (<ParamDelete-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamDelete-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamDelete-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<ParamDelete-request> is deprecated: use core_api-srv:ParamDelete-request instead.")))

(cl:ensure-generic-function 'param_id-val :lambda-list '(m))
(cl:defmethod param_id-val ((m <ParamDelete-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:param_id-val is deprecated.  Use core_api-srv:param_id instead.")
  (param_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamDelete-request>) ostream)
  "Serializes a message object of type '<ParamDelete-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'param_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'param_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamDelete-request>) istream)
  "Deserializes a message object of type '<ParamDelete-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'param_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'param_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamDelete-request>)))
  "Returns string type for a service object of type '<ParamDelete-request>"
  "core_api/ParamDeleteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamDelete-request)))
  "Returns string type for a service object of type 'ParamDelete-request"
  "core_api/ParamDeleteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamDelete-request>)))
  "Returns md5sum for a message object of type '<ParamDelete-request>"
  "6c6fef353684dfb4c5b339c04372255d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamDelete-request)))
  "Returns md5sum for a message object of type 'ParamDelete-request"
  "6c6fef353684dfb4c5b339c04372255d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamDelete-request>)))
  "Returns full string definition for message of type '<ParamDelete-request>"
  (cl:format cl:nil "string param_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamDelete-request)))
  "Returns full string definition for message of type 'ParamDelete-request"
  (cl:format cl:nil "string param_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamDelete-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'param_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamDelete-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamDelete-request
    (cl:cons ':param_id (param_id msg))
))
;//! \htmlinclude ParamDelete-response.msg.html

(cl:defclass <ParamDelete-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ParamDelete-response (<ParamDelete-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamDelete-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamDelete-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<ParamDelete-response> is deprecated: use core_api-srv:ParamDelete-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ParamDelete-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ParamDelete-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamDelete-response>) ostream)
  "Serializes a message object of type '<ParamDelete-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamDelete-response>) istream)
  "Deserializes a message object of type '<ParamDelete-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamDelete-response>)))
  "Returns string type for a service object of type '<ParamDelete-response>"
  "core_api/ParamDeleteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamDelete-response)))
  "Returns string type for a service object of type 'ParamDelete-response"
  "core_api/ParamDeleteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamDelete-response>)))
  "Returns md5sum for a message object of type '<ParamDelete-response>"
  "6c6fef353684dfb4c5b339c04372255d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamDelete-response)))
  "Returns md5sum for a message object of type 'ParamDelete-response"
  "6c6fef353684dfb4c5b339c04372255d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamDelete-response>)))
  "Returns full string definition for message of type '<ParamDelete-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamDelete-response)))
  "Returns full string definition for message of type 'ParamDelete-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamDelete-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamDelete-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamDelete-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ParamDelete)))
  'ParamDelete-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ParamDelete)))
  'ParamDelete-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamDelete)))
  "Returns string type for a service object of type '<ParamDelete>"
  "core_api/ParamDelete")