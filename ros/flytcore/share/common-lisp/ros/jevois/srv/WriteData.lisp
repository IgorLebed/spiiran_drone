; Auto-generated. Do not edit!


(cl:in-package jevois-srv)


;//! \htmlinclude WriteData-request.msg.html

(cl:defclass <WriteData-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform "")
   (confirmation
    :reader confirmation
    :initarg :confirmation
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WriteData-request (<WriteData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WriteData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WriteData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jevois-srv:<WriteData-request> is deprecated: use jevois-srv:WriteData-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <WriteData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jevois-srv:data-val is deprecated.  Use jevois-srv:data instead.")
  (data m))

(cl:ensure-generic-function 'confirmation-val :lambda-list '(m))
(cl:defmethod confirmation-val ((m <WriteData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jevois-srv:confirmation-val is deprecated.  Use jevois-srv:confirmation instead.")
  (confirmation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WriteData-request>) ostream)
  "Serializes a message object of type '<WriteData-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'confirmation) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WriteData-request>) istream)
  "Deserializes a message object of type '<WriteData-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'confirmation) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WriteData-request>)))
  "Returns string type for a service object of type '<WriteData-request>"
  "jevois/WriteDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteData-request)))
  "Returns string type for a service object of type 'WriteData-request"
  "jevois/WriteDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WriteData-request>)))
  "Returns md5sum for a message object of type '<WriteData-request>"
  "322ec58d02fbdfdfc173f287780bbeea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WriteData-request)))
  "Returns md5sum for a message object of type 'WriteData-request"
  "322ec58d02fbdfdfc173f287780bbeea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WriteData-request>)))
  "Returns full string definition for message of type '<WriteData-request>"
  (cl:format cl:nil "~%~%~%~%string data~%bool confirmation~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WriteData-request)))
  "Returns full string definition for message of type 'WriteData-request"
  (cl:format cl:nil "~%~%~%~%string data~%bool confirmation~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WriteData-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WriteData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WriteData-request
    (cl:cons ':data (data msg))
    (cl:cons ':confirmation (confirmation msg))
))
;//! \htmlinclude WriteData-response.msg.html

(cl:defclass <WriteData-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass WriteData-response (<WriteData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WriteData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WriteData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jevois-srv:<WriteData-response> is deprecated: use jevois-srv:WriteData-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <WriteData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jevois-srv:success-val is deprecated.  Use jevois-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <WriteData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jevois-srv:message-val is deprecated.  Use jevois-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WriteData-response>) ostream)
  "Serializes a message object of type '<WriteData-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WriteData-response>) istream)
  "Deserializes a message object of type '<WriteData-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WriteData-response>)))
  "Returns string type for a service object of type '<WriteData-response>"
  "jevois/WriteDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteData-response)))
  "Returns string type for a service object of type 'WriteData-response"
  "jevois/WriteDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WriteData-response>)))
  "Returns md5sum for a message object of type '<WriteData-response>"
  "322ec58d02fbdfdfc173f287780bbeea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WriteData-response)))
  "Returns md5sum for a message object of type 'WriteData-response"
  "322ec58d02fbdfdfc173f287780bbeea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WriteData-response>)))
  "Returns full string definition for message of type '<WriteData-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WriteData-response)))
  "Returns full string definition for message of type 'WriteData-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WriteData-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WriteData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WriteData-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WriteData)))
  'WriteData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WriteData)))
  'WriteData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteData)))
  "Returns string type for a service object of type '<WriteData>"
  "jevois/WriteData")