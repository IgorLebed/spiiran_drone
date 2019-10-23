; Auto-generated. Do not edit!


(cl:in-package vision_apps-srv)


;//! \htmlinclude GetMissionStatus-request.msg.html

(cl:defclass <GetMissionStatus-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetMissionStatus-request (<GetMissionStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMissionStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMissionStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<GetMissionStatus-request> is deprecated: use vision_apps-srv:GetMissionStatus-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMissionStatus-request>) ostream)
  "Serializes a message object of type '<GetMissionStatus-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMissionStatus-request>) istream)
  "Deserializes a message object of type '<GetMissionStatus-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMissionStatus-request>)))
  "Returns string type for a service object of type '<GetMissionStatus-request>"
  "vision_apps/GetMissionStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMissionStatus-request)))
  "Returns string type for a service object of type 'GetMissionStatus-request"
  "vision_apps/GetMissionStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMissionStatus-request>)))
  "Returns md5sum for a message object of type '<GetMissionStatus-request>"
  "0d2f2420d57aa0f674fd993ccf46cc89")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMissionStatus-request)))
  "Returns md5sum for a message object of type 'GetMissionStatus-request"
  "0d2f2420d57aa0f674fd993ccf46cc89")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMissionStatus-request>)))
  "Returns full string definition for message of type '<GetMissionStatus-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMissionStatus-request)))
  "Returns full string definition for message of type 'GetMissionStatus-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMissionStatus-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMissionStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMissionStatus-request
))
;//! \htmlinclude GetMissionStatus-response.msg.html

(cl:defclass <GetMissionStatus-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass GetMissionStatus-response (<GetMissionStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMissionStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMissionStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<GetMissionStatus-response> is deprecated: use vision_apps-srv:GetMissionStatus-response instead.")))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GetMissionStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:error_code-val is deprecated.  Use vision_apps-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GetMissionStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:status-val is deprecated.  Use vision_apps-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetMissionStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:message-val is deprecated.  Use vision_apps-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMissionStatus-response>) ostream)
  "Serializes a message object of type '<GetMissionStatus-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMissionStatus-response>) istream)
  "Deserializes a message object of type '<GetMissionStatus-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMissionStatus-response>)))
  "Returns string type for a service object of type '<GetMissionStatus-response>"
  "vision_apps/GetMissionStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMissionStatus-response)))
  "Returns string type for a service object of type 'GetMissionStatus-response"
  "vision_apps/GetMissionStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMissionStatus-response>)))
  "Returns md5sum for a message object of type '<GetMissionStatus-response>"
  "0d2f2420d57aa0f674fd993ccf46cc89")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMissionStatus-response)))
  "Returns md5sum for a message object of type 'GetMissionStatus-response"
  "0d2f2420d57aa0f674fd993ccf46cc89")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMissionStatus-response>)))
  "Returns full string definition for message of type '<GetMissionStatus-response>"
  (cl:format cl:nil "uint8 error_code~%string status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMissionStatus-response)))
  "Returns full string definition for message of type 'GetMissionStatus-response"
  (cl:format cl:nil "uint8 error_code~%string status~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMissionStatus-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status))
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMissionStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMissionStatus-response
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetMissionStatus)))
  'GetMissionStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetMissionStatus)))
  'GetMissionStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMissionStatus)))
  "Returns string type for a service object of type '<GetMissionStatus>"
  "vision_apps/GetMissionStatus")