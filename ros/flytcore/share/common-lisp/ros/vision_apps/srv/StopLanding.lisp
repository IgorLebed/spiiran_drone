; Auto-generated. Do not edit!


(cl:in-package vision_apps-srv)


;//! \htmlinclude StopLanding-request.msg.html

(cl:defclass <StopLanding-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StopLanding-request (<StopLanding-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopLanding-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopLanding-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<StopLanding-request> is deprecated: use vision_apps-srv:StopLanding-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopLanding-request>) ostream)
  "Serializes a message object of type '<StopLanding-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopLanding-request>) istream)
  "Deserializes a message object of type '<StopLanding-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopLanding-request>)))
  "Returns string type for a service object of type '<StopLanding-request>"
  "vision_apps/StopLandingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopLanding-request)))
  "Returns string type for a service object of type 'StopLanding-request"
  "vision_apps/StopLandingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopLanding-request>)))
  "Returns md5sum for a message object of type '<StopLanding-request>"
  "4ad76664b0717ddbf6142456d7398288")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopLanding-request)))
  "Returns md5sum for a message object of type 'StopLanding-request"
  "4ad76664b0717ddbf6142456d7398288")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopLanding-request>)))
  "Returns full string definition for message of type '<StopLanding-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopLanding-request)))
  "Returns full string definition for message of type 'StopLanding-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopLanding-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopLanding-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopLanding-request
))
;//! \htmlinclude StopLanding-response.msg.html

(cl:defclass <StopLanding-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass StopLanding-response (<StopLanding-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopLanding-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopLanding-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<StopLanding-response> is deprecated: use vision_apps-srv:StopLanding-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <StopLanding-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:success-val is deprecated.  Use vision_apps-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <StopLanding-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:error_code-val is deprecated.  Use vision_apps-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <StopLanding-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:message-val is deprecated.  Use vision_apps-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopLanding-response>) ostream)
  "Serializes a message object of type '<StopLanding-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopLanding-response>) istream)
  "Deserializes a message object of type '<StopLanding-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopLanding-response>)))
  "Returns string type for a service object of type '<StopLanding-response>"
  "vision_apps/StopLandingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopLanding-response)))
  "Returns string type for a service object of type 'StopLanding-response"
  "vision_apps/StopLandingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopLanding-response>)))
  "Returns md5sum for a message object of type '<StopLanding-response>"
  "4ad76664b0717ddbf6142456d7398288")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopLanding-response)))
  "Returns md5sum for a message object of type 'StopLanding-response"
  "4ad76664b0717ddbf6142456d7398288")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopLanding-response>)))
  "Returns full string definition for message of type '<StopLanding-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopLanding-response)))
  "Returns full string definition for message of type 'StopLanding-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopLanding-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopLanding-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopLanding-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopLanding)))
  'StopLanding-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopLanding)))
  'StopLanding-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopLanding)))
  "Returns string type for a service object of type '<StopLanding>"
  "vision_apps/StopLanding")