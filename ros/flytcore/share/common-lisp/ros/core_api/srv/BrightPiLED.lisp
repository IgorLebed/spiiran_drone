; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude BrightPiLED-request.msg.html

(cl:defclass <BrightPiLED-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil)
   (gain
    :reader gain
    :initarg :gain
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BrightPiLED-request (<BrightPiLED-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrightPiLED-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrightPiLED-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<BrightPiLED-request> is deprecated: use core_api-srv:BrightPiLED-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <BrightPiLED-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:mode-val is deprecated.  Use core_api-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <BrightPiLED-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:state-val is deprecated.  Use core_api-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'gain-val :lambda-list '(m))
(cl:defmethod gain-val ((m <BrightPiLED-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:gain-val is deprecated.  Use core_api-srv:gain instead.")
  (gain m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BrightPiLED-request>)))
    "Constants for message type '<BrightPiLED-request>"
  '((:MODE_GET_LED_STATUS . 1)
    (:MODE_SET_LED_STATUS . 2)
    (:MODE_SET_LED_GAIN . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BrightPiLED-request)))
    "Constants for message type 'BrightPiLED-request"
  '((:MODE_GET_LED_STATUS . 1)
    (:MODE_SET_LED_STATUS . 2)
    (:MODE_SET_LED_GAIN . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrightPiLED-request>) ostream)
  "Serializes a message object of type '<BrightPiLED-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gain)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrightPiLED-request>) istream)
  "Deserializes a message object of type '<BrightPiLED-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gain)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrightPiLED-request>)))
  "Returns string type for a service object of type '<BrightPiLED-request>"
  "core_api/BrightPiLEDRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrightPiLED-request)))
  "Returns string type for a service object of type 'BrightPiLED-request"
  "core_api/BrightPiLEDRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrightPiLED-request>)))
  "Returns md5sum for a message object of type '<BrightPiLED-request>"
  "17e462bdcd84d82b4992ac5262b3fcf8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrightPiLED-request)))
  "Returns md5sum for a message object of type 'BrightPiLED-request"
  "17e462bdcd84d82b4992ac5262b3fcf8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrightPiLED-request>)))
  "Returns full string definition for message of type '<BrightPiLED-request>"
  (cl:format cl:nil "~%~%~%uint8 MODE_GET_LED_STATUS = 1~%uint8 MODE_SET_LED_STATUS = 2~%uint8 MODE_SET_LED_GAIN = 3~%~%uint8 mode~%bool state~%uint8 gain~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrightPiLED-request)))
  "Returns full string definition for message of type 'BrightPiLED-request"
  (cl:format cl:nil "~%~%~%uint8 MODE_GET_LED_STATUS = 1~%uint8 MODE_SET_LED_STATUS = 2~%uint8 MODE_SET_LED_GAIN = 3~%~%uint8 mode~%bool state~%uint8 gain~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrightPiLED-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrightPiLED-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BrightPiLED-request
    (cl:cons ':mode (mode msg))
    (cl:cons ':state (state msg))
    (cl:cons ':gain (gain msg))
))
;//! \htmlinclude BrightPiLED-response.msg.html

(cl:defclass <BrightPiLED-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass BrightPiLED-response (<BrightPiLED-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrightPiLED-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrightPiLED-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<BrightPiLED-response> is deprecated: use core_api-srv:BrightPiLED-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <BrightPiLED-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <BrightPiLED-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:state-val is deprecated.  Use core_api-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <BrightPiLED-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrightPiLED-response>) ostream)
  "Serializes a message object of type '<BrightPiLED-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrightPiLED-response>) istream)
  "Deserializes a message object of type '<BrightPiLED-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrightPiLED-response>)))
  "Returns string type for a service object of type '<BrightPiLED-response>"
  "core_api/BrightPiLEDResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrightPiLED-response)))
  "Returns string type for a service object of type 'BrightPiLED-response"
  "core_api/BrightPiLEDResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrightPiLED-response>)))
  "Returns md5sum for a message object of type '<BrightPiLED-response>"
  "17e462bdcd84d82b4992ac5262b3fcf8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrightPiLED-response)))
  "Returns md5sum for a message object of type 'BrightPiLED-response"
  "17e462bdcd84d82b4992ac5262b3fcf8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrightPiLED-response>)))
  "Returns full string definition for message of type '<BrightPiLED-response>"
  (cl:format cl:nil "bool success~%bool state~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrightPiLED-response)))
  "Returns full string definition for message of type 'BrightPiLED-response"
  (cl:format cl:nil "bool success~%bool state~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrightPiLED-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrightPiLED-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BrightPiLED-response
    (cl:cons ':success (success msg))
    (cl:cons ':state (state msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BrightPiLED)))
  'BrightPiLED-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BrightPiLED)))
  'BrightPiLED-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrightPiLED)))
  "Returns string type for a service object of type '<BrightPiLED>"
  "core_api/BrightPiLED")