; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude FirmwareUpgrade-request.msg.html

(cl:defclass <FirmwareUpgrade-request> (roslisp-msg-protocol:ros-message)
  ((filepath
    :reader filepath
    :initarg :filepath
    :type cl:string
    :initform ""))
)

(cl:defclass FirmwareUpgrade-request (<FirmwareUpgrade-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FirmwareUpgrade-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FirmwareUpgrade-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<FirmwareUpgrade-request> is deprecated: use core_api-srv:FirmwareUpgrade-request instead.")))

(cl:ensure-generic-function 'filepath-val :lambda-list '(m))
(cl:defmethod filepath-val ((m <FirmwareUpgrade-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:filepath-val is deprecated.  Use core_api-srv:filepath instead.")
  (filepath m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FirmwareUpgrade-request>) ostream)
  "Serializes a message object of type '<FirmwareUpgrade-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filepath))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filepath))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FirmwareUpgrade-request>) istream)
  "Deserializes a message object of type '<FirmwareUpgrade-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filepath) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filepath) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FirmwareUpgrade-request>)))
  "Returns string type for a service object of type '<FirmwareUpgrade-request>"
  "core_api/FirmwareUpgradeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FirmwareUpgrade-request)))
  "Returns string type for a service object of type 'FirmwareUpgrade-request"
  "core_api/FirmwareUpgradeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FirmwareUpgrade-request>)))
  "Returns md5sum for a message object of type '<FirmwareUpgrade-request>"
  "bde267f7dad1da13b302d98acf957681")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FirmwareUpgrade-request)))
  "Returns md5sum for a message object of type 'FirmwareUpgrade-request"
  "bde267f7dad1da13b302d98acf957681")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FirmwareUpgrade-request>)))
  "Returns full string definition for message of type '<FirmwareUpgrade-request>"
  (cl:format cl:nil "string filepath~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FirmwareUpgrade-request)))
  "Returns full string definition for message of type 'FirmwareUpgrade-request"
  (cl:format cl:nil "string filepath~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FirmwareUpgrade-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filepath))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FirmwareUpgrade-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FirmwareUpgrade-request
    (cl:cons ':filepath (filepath msg))
))
;//! \htmlinclude FirmwareUpgrade-response.msg.html

(cl:defclass <FirmwareUpgrade-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass FirmwareUpgrade-response (<FirmwareUpgrade-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FirmwareUpgrade-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FirmwareUpgrade-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<FirmwareUpgrade-response> is deprecated: use core_api-srv:FirmwareUpgrade-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <FirmwareUpgrade-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <FirmwareUpgrade-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FirmwareUpgrade-response>) ostream)
  "Serializes a message object of type '<FirmwareUpgrade-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FirmwareUpgrade-response>) istream)
  "Deserializes a message object of type '<FirmwareUpgrade-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FirmwareUpgrade-response>)))
  "Returns string type for a service object of type '<FirmwareUpgrade-response>"
  "core_api/FirmwareUpgradeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FirmwareUpgrade-response)))
  "Returns string type for a service object of type 'FirmwareUpgrade-response"
  "core_api/FirmwareUpgradeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FirmwareUpgrade-response>)))
  "Returns md5sum for a message object of type '<FirmwareUpgrade-response>"
  "bde267f7dad1da13b302d98acf957681")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FirmwareUpgrade-response)))
  "Returns md5sum for a message object of type 'FirmwareUpgrade-response"
  "bde267f7dad1da13b302d98acf957681")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FirmwareUpgrade-response>)))
  "Returns full string definition for message of type '<FirmwareUpgrade-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FirmwareUpgrade-response)))
  "Returns full string definition for message of type 'FirmwareUpgrade-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FirmwareUpgrade-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FirmwareUpgrade-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FirmwareUpgrade-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FirmwareUpgrade)))
  'FirmwareUpgrade-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FirmwareUpgrade)))
  'FirmwareUpgrade-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FirmwareUpgrade)))
  "Returns string type for a service object of type '<FirmwareUpgrade>"
  "core_api/FirmwareUpgrade")