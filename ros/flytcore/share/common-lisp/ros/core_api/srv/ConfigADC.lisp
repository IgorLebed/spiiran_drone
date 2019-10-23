; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude ConfigADC-request.msg.html

(cl:defclass <ConfigADC-request> (roslisp-msg-protocol:ros-message)
  ((channel
    :reader channel
    :initarg :channel
    :type cl:integer
    :initform 0)
   (stream_rate
    :reader stream_rate
    :initarg :stream_rate
    :type cl:integer
    :initform 0))
)

(cl:defclass ConfigADC-request (<ConfigADC-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConfigADC-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConfigADC-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<ConfigADC-request> is deprecated: use core_api-srv:ConfigADC-request instead.")))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <ConfigADC-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:channel-val is deprecated.  Use core_api-srv:channel instead.")
  (channel m))

(cl:ensure-generic-function 'stream_rate-val :lambda-list '(m))
(cl:defmethod stream_rate-val ((m <ConfigADC-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:stream_rate-val is deprecated.  Use core_api-srv:stream_rate instead.")
  (stream_rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConfigADC-request>) ostream)
  "Serializes a message object of type '<ConfigADC-request>"
  (cl:let* ((signed (cl:slot-value msg 'channel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'stream_rate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConfigADC-request>) istream)
  "Deserializes a message object of type '<ConfigADC-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'channel) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stream_rate) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConfigADC-request>)))
  "Returns string type for a service object of type '<ConfigADC-request>"
  "core_api/ConfigADCRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigADC-request)))
  "Returns string type for a service object of type 'ConfigADC-request"
  "core_api/ConfigADCRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConfigADC-request>)))
  "Returns md5sum for a message object of type '<ConfigADC-request>"
  "f5076d4723a127313ec1786e0634dbd2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConfigADC-request)))
  "Returns md5sum for a message object of type 'ConfigADC-request"
  "f5076d4723a127313ec1786e0634dbd2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConfigADC-request>)))
  "Returns full string definition for message of type '<ConfigADC-request>"
  (cl:format cl:nil "~%~%~%~%~%~%int32 channel~%int32 stream_rate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConfigADC-request)))
  "Returns full string definition for message of type 'ConfigADC-request"
  (cl:format cl:nil "~%~%~%~%~%~%int32 channel~%int32 stream_rate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConfigADC-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConfigADC-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ConfigADC-request
    (cl:cons ':channel (channel msg))
    (cl:cons ':stream_rate (stream_rate msg))
))
;//! \htmlinclude ConfigADC-response.msg.html

(cl:defclass <ConfigADC-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ConfigADC-response (<ConfigADC-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConfigADC-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConfigADC-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<ConfigADC-response> is deprecated: use core_api-srv:ConfigADC-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ConfigADC-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ConfigADC-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConfigADC-response>) ostream)
  "Serializes a message object of type '<ConfigADC-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConfigADC-response>) istream)
  "Deserializes a message object of type '<ConfigADC-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConfigADC-response>)))
  "Returns string type for a service object of type '<ConfigADC-response>"
  "core_api/ConfigADCResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigADC-response)))
  "Returns string type for a service object of type 'ConfigADC-response"
  "core_api/ConfigADCResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConfigADC-response>)))
  "Returns md5sum for a message object of type '<ConfigADC-response>"
  "f5076d4723a127313ec1786e0634dbd2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConfigADC-response)))
  "Returns md5sum for a message object of type 'ConfigADC-response"
  "f5076d4723a127313ec1786e0634dbd2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConfigADC-response>)))
  "Returns full string definition for message of type '<ConfigADC-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConfigADC-response)))
  "Returns full string definition for message of type 'ConfigADC-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConfigADC-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConfigADC-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ConfigADC-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ConfigADC)))
  'ConfigADC-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ConfigADC)))
  'ConfigADC-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigADC)))
  "Returns string type for a service object of type '<ConfigADC>"
  "core_api/ConfigADC")