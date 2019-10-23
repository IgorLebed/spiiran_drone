; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude SetLED-request.msg.html

(cl:defclass <SetLED-request> (roslisp-msg-protocol:ros-message)
  ((led
    :reader led
    :initarg :led
    :type cl:string
    :initform "")
   (state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetLED-request (<SetLED-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLED-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLED-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<SetLED-request> is deprecated: use core_api-srv:SetLED-request instead.")))

(cl:ensure-generic-function 'led-val :lambda-list '(m))
(cl:defmethod led-val ((m <SetLED-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:led-val is deprecated.  Use core_api-srv:led instead.")
  (led m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SetLED-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:state-val is deprecated.  Use core_api-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLED-request>) ostream)
  "Serializes a message object of type '<SetLED-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'led))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'led))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLED-request>) istream)
  "Deserializes a message object of type '<SetLED-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'led) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'led) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLED-request>)))
  "Returns string type for a service object of type '<SetLED-request>"
  "core_api/SetLEDRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLED-request)))
  "Returns string type for a service object of type 'SetLED-request"
  "core_api/SetLEDRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLED-request>)))
  "Returns md5sum for a message object of type '<SetLED-request>"
  "075d5cb58a54cdd3b1eee3d0d7b9c08b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLED-request)))
  "Returns md5sum for a message object of type 'SetLED-request"
  "075d5cb58a54cdd3b1eee3d0d7b9c08b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLED-request>)))
  "Returns full string definition for message of type '<SetLED-request>"
  (cl:format cl:nil "~%~%string led~%bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLED-request)))
  "Returns full string definition for message of type 'SetLED-request"
  (cl:format cl:nil "~%~%string led~%bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLED-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'led))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLED-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLED-request
    (cl:cons ':led (led msg))
    (cl:cons ':state (state msg))
))
;//! \htmlinclude SetLED-response.msg.html

(cl:defclass <SetLED-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetLED-response (<SetLED-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLED-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLED-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<SetLED-response> is deprecated: use core_api-srv:SetLED-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetLED-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetLED-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLED-response>) ostream)
  "Serializes a message object of type '<SetLED-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLED-response>) istream)
  "Deserializes a message object of type '<SetLED-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLED-response>)))
  "Returns string type for a service object of type '<SetLED-response>"
  "core_api/SetLEDResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLED-response)))
  "Returns string type for a service object of type 'SetLED-response"
  "core_api/SetLEDResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLED-response>)))
  "Returns md5sum for a message object of type '<SetLED-response>"
  "075d5cb58a54cdd3b1eee3d0d7b9c08b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLED-response)))
  "Returns md5sum for a message object of type 'SetLED-response"
  "075d5cb58a54cdd3b1eee3d0d7b9c08b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLED-response>)))
  "Returns full string definition for message of type '<SetLED-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLED-response)))
  "Returns full string definition for message of type 'SetLED-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLED-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLED-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLED-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetLED)))
  'SetLED-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetLED)))
  'SetLED-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLED)))
  "Returns string type for a service object of type '<SetLED>"
  "core_api/SetLED")