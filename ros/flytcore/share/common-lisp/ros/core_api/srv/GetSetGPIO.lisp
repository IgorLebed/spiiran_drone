; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude GetSetGPIO-request.msg.html

(cl:defclass <GetSetGPIO-request> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:boolean
    :initform cl:nil)
   (state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetSetGPIO-request (<GetSetGPIO-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSetGPIO-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSetGPIO-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<GetSetGPIO-request> is deprecated: use core_api-srv:GetSetGPIO-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <GetSetGPIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:pin-val is deprecated.  Use core_api-srv:pin instead.")
  (pin m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <GetSetGPIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:mode-val is deprecated.  Use core_api-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GetSetGPIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:state-val is deprecated.  Use core_api-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSetGPIO-request>) ostream)
  "Serializes a message object of type '<GetSetGPIO-request>"
  (cl:let* ((signed (cl:slot-value msg 'pin)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSetGPIO-request>) istream)
  "Deserializes a message object of type '<GetSetGPIO-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pin) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSetGPIO-request>)))
  "Returns string type for a service object of type '<GetSetGPIO-request>"
  "core_api/GetSetGPIORequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSetGPIO-request)))
  "Returns string type for a service object of type 'GetSetGPIO-request"
  "core_api/GetSetGPIORequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSetGPIO-request>)))
  "Returns md5sum for a message object of type '<GetSetGPIO-request>"
  "88ce3c80d9fdfb2b8176053d0296fd4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSetGPIO-request)))
  "Returns md5sum for a message object of type 'GetSetGPIO-request"
  "88ce3c80d9fdfb2b8176053d0296fd4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSetGPIO-request>)))
  "Returns full string definition for message of type '<GetSetGPIO-request>"
  (cl:format cl:nil "~%~%int8 pin~%bool mode~%bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSetGPIO-request)))
  "Returns full string definition for message of type 'GetSetGPIO-request"
  (cl:format cl:nil "~%~%int8 pin~%bool mode~%bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSetGPIO-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSetGPIO-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSetGPIO-request
    (cl:cons ':pin (pin msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':state (state msg))
))
;//! \htmlinclude GetSetGPIO-response.msg.html

(cl:defclass <GetSetGPIO-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil)
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

(cl:defclass GetSetGPIO-response (<GetSetGPIO-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSetGPIO-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSetGPIO-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<GetSetGPIO-response> is deprecated: use core_api-srv:GetSetGPIO-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GetSetGPIO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:state-val is deprecated.  Use core_api-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetSetGPIO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetSetGPIO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSetGPIO-response>) ostream)
  "Serializes a message object of type '<GetSetGPIO-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSetGPIO-response>) istream)
  "Deserializes a message object of type '<GetSetGPIO-response>"
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSetGPIO-response>)))
  "Returns string type for a service object of type '<GetSetGPIO-response>"
  "core_api/GetSetGPIOResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSetGPIO-response)))
  "Returns string type for a service object of type 'GetSetGPIO-response"
  "core_api/GetSetGPIOResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSetGPIO-response>)))
  "Returns md5sum for a message object of type '<GetSetGPIO-response>"
  "88ce3c80d9fdfb2b8176053d0296fd4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSetGPIO-response)))
  "Returns md5sum for a message object of type 'GetSetGPIO-response"
  "88ce3c80d9fdfb2b8176053d0296fd4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSetGPIO-response>)))
  "Returns full string definition for message of type '<GetSetGPIO-response>"
  (cl:format cl:nil "bool state~%bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSetGPIO-response)))
  "Returns full string definition for message of type 'GetSetGPIO-response"
  (cl:format cl:nil "bool state~%bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSetGPIO-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSetGPIO-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSetGPIO-response
    (cl:cons ':state (state msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSetGPIO)))
  'GetSetGPIO-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSetGPIO)))
  'GetSetGPIO-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSetGPIO)))
  "Returns string type for a service object of type '<GetSetGPIO>"
  "core_api/GetSetGPIO")