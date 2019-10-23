; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude AutopilotReboot-request.msg.html

(cl:defclass <AutopilotReboot-request> (roslisp-msg-protocol:ros-message)
  ((reboot_mode
    :reader reboot_mode
    :initarg :reboot_mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AutopilotReboot-request (<AutopilotReboot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutopilotReboot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutopilotReboot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<AutopilotReboot-request> is deprecated: use core_api-srv:AutopilotReboot-request instead.")))

(cl:ensure-generic-function 'reboot_mode-val :lambda-list '(m))
(cl:defmethod reboot_mode-val ((m <AutopilotReboot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:reboot_mode-val is deprecated.  Use core_api-srv:reboot_mode instead.")
  (reboot_mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AutopilotReboot-request>)))
    "Constants for message type '<AutopilotReboot-request>"
  '((:REBOOT . 1)
    (:REBOOT_TO_SLEEP . 3)
    (:REBOOT_FROM_SLEEP . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AutopilotReboot-request)))
    "Constants for message type 'AutopilotReboot-request"
  '((:REBOOT . 1)
    (:REBOOT_TO_SLEEP . 3)
    (:REBOOT_FROM_SLEEP . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutopilotReboot-request>) ostream)
  "Serializes a message object of type '<AutopilotReboot-request>"
  (cl:let* ((signed (cl:slot-value msg 'reboot_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutopilotReboot-request>) istream)
  "Deserializes a message object of type '<AutopilotReboot-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reboot_mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutopilotReboot-request>)))
  "Returns string type for a service object of type '<AutopilotReboot-request>"
  "core_api/AutopilotRebootRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutopilotReboot-request)))
  "Returns string type for a service object of type 'AutopilotReboot-request"
  "core_api/AutopilotRebootRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutopilotReboot-request>)))
  "Returns md5sum for a message object of type '<AutopilotReboot-request>"
  "fc3bd1e818efe2a00584996f3753a5c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutopilotReboot-request)))
  "Returns md5sum for a message object of type 'AutopilotReboot-request"
  "fc3bd1e818efe2a00584996f3753a5c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutopilotReboot-request>)))
  "Returns full string definition for message of type '<AutopilotReboot-request>"
  (cl:format cl:nil "int8 REBOOT=1~%int8 REBOOT_TO_SLEEP=3~%int8 REBOOT_FROM_SLEEP=4~%~%int8 reboot_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutopilotReboot-request)))
  "Returns full string definition for message of type 'AutopilotReboot-request"
  (cl:format cl:nil "int8 REBOOT=1~%int8 REBOOT_TO_SLEEP=3~%int8 REBOOT_FROM_SLEEP=4~%~%int8 reboot_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutopilotReboot-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutopilotReboot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AutopilotReboot-request
    (cl:cons ':reboot_mode (reboot_mode msg))
))
;//! \htmlinclude AutopilotReboot-response.msg.html

(cl:defclass <AutopilotReboot-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass AutopilotReboot-response (<AutopilotReboot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutopilotReboot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutopilotReboot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<AutopilotReboot-response> is deprecated: use core_api-srv:AutopilotReboot-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AutopilotReboot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <AutopilotReboot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutopilotReboot-response>) ostream)
  "Serializes a message object of type '<AutopilotReboot-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutopilotReboot-response>) istream)
  "Deserializes a message object of type '<AutopilotReboot-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutopilotReboot-response>)))
  "Returns string type for a service object of type '<AutopilotReboot-response>"
  "core_api/AutopilotRebootResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutopilotReboot-response)))
  "Returns string type for a service object of type 'AutopilotReboot-response"
  "core_api/AutopilotRebootResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutopilotReboot-response>)))
  "Returns md5sum for a message object of type '<AutopilotReboot-response>"
  "fc3bd1e818efe2a00584996f3753a5c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutopilotReboot-response)))
  "Returns md5sum for a message object of type 'AutopilotReboot-response"
  "fc3bd1e818efe2a00584996f3753a5c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutopilotReboot-response>)))
  "Returns full string definition for message of type '<AutopilotReboot-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutopilotReboot-response)))
  "Returns full string definition for message of type 'AutopilotReboot-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutopilotReboot-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutopilotReboot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AutopilotReboot-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AutopilotReboot)))
  'AutopilotReboot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AutopilotReboot)))
  'AutopilotReboot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutopilotReboot)))
  "Returns string type for a service object of type '<AutopilotReboot>"
  "core_api/AutopilotReboot")