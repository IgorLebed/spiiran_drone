; Auto-generated. Do not edit!


(cl:in-package vision_apps-srv)


;//! \htmlinclude StartLanding-request.msg.html

(cl:defclass <StartLanding-request> (roslisp-msg-protocol:ros-message)
  ((landing_threshold
    :reader landing_threshold
    :initarg :landing_threshold
    :type cl:float
    :initform 0.0)
   (async
    :reader async
    :initarg :async
    :type cl:boolean
    :initform cl:nil)
   (hover
    :reader hover
    :initarg :hover
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StartLanding-request (<StartLanding-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartLanding-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartLanding-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<StartLanding-request> is deprecated: use vision_apps-srv:StartLanding-request instead.")))

(cl:ensure-generic-function 'landing_threshold-val :lambda-list '(m))
(cl:defmethod landing_threshold-val ((m <StartLanding-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:landing_threshold-val is deprecated.  Use vision_apps-srv:landing_threshold instead.")
  (landing_threshold m))

(cl:ensure-generic-function 'async-val :lambda-list '(m))
(cl:defmethod async-val ((m <StartLanding-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:async-val is deprecated.  Use vision_apps-srv:async instead.")
  (async m))

(cl:ensure-generic-function 'hover-val :lambda-list '(m))
(cl:defmethod hover-val ((m <StartLanding-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:hover-val is deprecated.  Use vision_apps-srv:hover instead.")
  (hover m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartLanding-request>) ostream)
  "Serializes a message object of type '<StartLanding-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'landing_threshold))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'async) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'hover) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartLanding-request>) istream)
  "Deserializes a message object of type '<StartLanding-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'landing_threshold) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'async) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'hover) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartLanding-request>)))
  "Returns string type for a service object of type '<StartLanding-request>"
  "vision_apps/StartLandingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartLanding-request)))
  "Returns string type for a service object of type 'StartLanding-request"
  "vision_apps/StartLandingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartLanding-request>)))
  "Returns md5sum for a message object of type '<StartLanding-request>"
  "f7ef1928f21c1b26b6ad552eeaf0c4ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartLanding-request)))
  "Returns md5sum for a message object of type 'StartLanding-request"
  "f7ef1928f21c1b26b6ad552eeaf0c4ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartLanding-request>)))
  "Returns full string definition for message of type '<StartLanding-request>"
  (cl:format cl:nil "float32 landing_threshold~%bool async~%bool hover~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartLanding-request)))
  "Returns full string definition for message of type 'StartLanding-request"
  (cl:format cl:nil "float32 landing_threshold~%bool async~%bool hover~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartLanding-request>))
  (cl:+ 0
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartLanding-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartLanding-request
    (cl:cons ':landing_threshold (landing_threshold msg))
    (cl:cons ':async (async msg))
    (cl:cons ':hover (hover msg))
))
;//! \htmlinclude StartLanding-response.msg.html

(cl:defclass <StartLanding-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass StartLanding-response (<StartLanding-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartLanding-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartLanding-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<StartLanding-response> is deprecated: use vision_apps-srv:StartLanding-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <StartLanding-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:success-val is deprecated.  Use vision_apps-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <StartLanding-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:error_code-val is deprecated.  Use vision_apps-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <StartLanding-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:message-val is deprecated.  Use vision_apps-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartLanding-response>) ostream)
  "Serializes a message object of type '<StartLanding-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartLanding-response>) istream)
  "Deserializes a message object of type '<StartLanding-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartLanding-response>)))
  "Returns string type for a service object of type '<StartLanding-response>"
  "vision_apps/StartLandingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartLanding-response)))
  "Returns string type for a service object of type 'StartLanding-response"
  "vision_apps/StartLandingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartLanding-response>)))
  "Returns md5sum for a message object of type '<StartLanding-response>"
  "f7ef1928f21c1b26b6ad552eeaf0c4ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartLanding-response)))
  "Returns md5sum for a message object of type 'StartLanding-response"
  "f7ef1928f21c1b26b6ad552eeaf0c4ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartLanding-response>)))
  "Returns full string definition for message of type '<StartLanding-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartLanding-response)))
  "Returns full string definition for message of type 'StartLanding-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartLanding-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartLanding-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartLanding-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartLanding)))
  'StartLanding-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartLanding)))
  'StartLanding-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartLanding)))
  "Returns string type for a service object of type '<StartLanding>"
  "vision_apps/StartLanding")