; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude ParamReset-request.msg.html

(cl:defclass <ParamReset-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ParamReset-request (<ParamReset-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamReset-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamReset-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<ParamReset-request> is deprecated: use core_api-srv:ParamReset-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamReset-request>) ostream)
  "Serializes a message object of type '<ParamReset-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamReset-request>) istream)
  "Deserializes a message object of type '<ParamReset-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamReset-request>)))
  "Returns string type for a service object of type '<ParamReset-request>"
  "core_api/ParamResetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamReset-request)))
  "Returns string type for a service object of type 'ParamReset-request"
  "core_api/ParamResetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamReset-request>)))
  "Returns md5sum for a message object of type '<ParamReset-request>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamReset-request)))
  "Returns md5sum for a message object of type 'ParamReset-request"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamReset-request>)))
  "Returns full string definition for message of type '<ParamReset-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamReset-request)))
  "Returns full string definition for message of type 'ParamReset-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamReset-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamReset-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamReset-request
))
;//! \htmlinclude ParamReset-response.msg.html

(cl:defclass <ParamReset-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ParamReset-response (<ParamReset-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamReset-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamReset-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<ParamReset-response> is deprecated: use core_api-srv:ParamReset-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ParamReset-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ParamReset-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamReset-response>) ostream)
  "Serializes a message object of type '<ParamReset-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamReset-response>) istream)
  "Deserializes a message object of type '<ParamReset-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamReset-response>)))
  "Returns string type for a service object of type '<ParamReset-response>"
  "core_api/ParamResetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamReset-response)))
  "Returns string type for a service object of type 'ParamReset-response"
  "core_api/ParamResetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamReset-response>)))
  "Returns md5sum for a message object of type '<ParamReset-response>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamReset-response)))
  "Returns md5sum for a message object of type 'ParamReset-response"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamReset-response>)))
  "Returns full string definition for message of type '<ParamReset-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamReset-response)))
  "Returns full string definition for message of type 'ParamReset-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamReset-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamReset-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamReset-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ParamReset)))
  'ParamReset-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ParamReset)))
  'ParamReset-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamReset)))
  "Returns string type for a service object of type '<ParamReset>"
  "core_api/ParamReset")