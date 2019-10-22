; Auto-generated. Do not edit!


(cl:in-package vision_apps-srv)


;//! \htmlinclude GetLandingStatus-request.msg.html

(cl:defclass <GetLandingStatus-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetLandingStatus-request (<GetLandingStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLandingStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLandingStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<GetLandingStatus-request> is deprecated: use vision_apps-srv:GetLandingStatus-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLandingStatus-request>) ostream)
  "Serializes a message object of type '<GetLandingStatus-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLandingStatus-request>) istream)
  "Deserializes a message object of type '<GetLandingStatus-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLandingStatus-request>)))
  "Returns string type for a service object of type '<GetLandingStatus-request>"
  "vision_apps/GetLandingStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLandingStatus-request)))
  "Returns string type for a service object of type 'GetLandingStatus-request"
  "vision_apps/GetLandingStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLandingStatus-request>)))
  "Returns md5sum for a message object of type '<GetLandingStatus-request>"
  "0d2f2420d57aa0f674fd993ccf46cc89")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLandingStatus-request)))
  "Returns md5sum for a message object of type 'GetLandingStatus-request"
  "0d2f2420d57aa0f674fd993ccf46cc89")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLandingStatus-request>)))
  "Returns full string definition for message of type '<GetLandingStatus-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLandingStatus-request)))
  "Returns full string definition for message of type 'GetLandingStatus-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLandingStatus-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLandingStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLandingStatus-request
))
;//! \htmlinclude GetLandingStatus-response.msg.html

(cl:defclass <GetLandingStatus-response> (roslisp-msg-protocol:ros-message)
  ((error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass GetLandingStatus-response (<GetLandingStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLandingStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLandingStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<GetLandingStatus-response> is deprecated: use vision_apps-srv:GetLandingStatus-response instead.")))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GetLandingStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:error_code-val is deprecated.  Use vision_apps-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GetLandingStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:status-val is deprecated.  Use vision_apps-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetLandingStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:message-val is deprecated.  Use vision_apps-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLandingStatus-response>) ostream)
  "Serializes a message object of type '<GetLandingStatus-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLandingStatus-response>) istream)
  "Deserializes a message object of type '<GetLandingStatus-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLandingStatus-response>)))
  "Returns string type for a service object of type '<GetLandingStatus-response>"
  "vision_apps/GetLandingStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLandingStatus-response)))
  "Returns string type for a service object of type 'GetLandingStatus-response"
  "vision_apps/GetLandingStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLandingStatus-response>)))
  "Returns md5sum for a message object of type '<GetLandingStatus-response>"
  "0d2f2420d57aa0f674fd993ccf46cc89")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLandingStatus-response)))
  "Returns md5sum for a message object of type 'GetLandingStatus-response"
  "0d2f2420d57aa0f674fd993ccf46cc89")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLandingStatus-response>)))
  "Returns full string definition for message of type '<GetLandingStatus-response>"
  (cl:format cl:nil "uint8 error_code~%string status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLandingStatus-response)))
  "Returns full string definition for message of type 'GetLandingStatus-response"
  (cl:format cl:nil "uint8 error_code~%string status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLandingStatus-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status))
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLandingStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLandingStatus-response
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetLandingStatus)))
  'GetLandingStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetLandingStatus)))
  'GetLandingStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLandingStatus)))
  "Returns string type for a service object of type '<GetLandingStatus>"
  "vision_apps/GetLandingStatus")