; Auto-generated. Do not edit!


(cl:in-package vision_apps-srv)


;//! \htmlinclude StopMission-request.msg.html

(cl:defclass <StopMission-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StopMission-request (<StopMission-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopMission-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopMission-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<StopMission-request> is deprecated: use vision_apps-srv:StopMission-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopMission-request>) ostream)
  "Serializes a message object of type '<StopMission-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopMission-request>) istream)
  "Deserializes a message object of type '<StopMission-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopMission-request>)))
  "Returns string type for a service object of type '<StopMission-request>"
  "vision_apps/StopMissionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopMission-request)))
  "Returns string type for a service object of type 'StopMission-request"
  "vision_apps/StopMissionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopMission-request>)))
  "Returns md5sum for a message object of type '<StopMission-request>"
  "4ad76664b0717ddbf6142456d7398288")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopMission-request)))
  "Returns md5sum for a message object of type 'StopMission-request"
  "4ad76664b0717ddbf6142456d7398288")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopMission-request>)))
  "Returns full string definition for message of type '<StopMission-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopMission-request)))
  "Returns full string definition for message of type 'StopMission-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopMission-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopMission-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopMission-request
))
;//! \htmlinclude StopMission-response.msg.html

(cl:defclass <StopMission-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass StopMission-response (<StopMission-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopMission-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopMission-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<StopMission-response> is deprecated: use vision_apps-srv:StopMission-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <StopMission-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:success-val is deprecated.  Use vision_apps-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <StopMission-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:error_code-val is deprecated.  Use vision_apps-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <StopMission-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:message-val is deprecated.  Use vision_apps-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopMission-response>) ostream)
  "Serializes a message object of type '<StopMission-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopMission-response>) istream)
  "Deserializes a message object of type '<StopMission-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopMission-response>)))
  "Returns string type for a service object of type '<StopMission-response>"
  "vision_apps/StopMissionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopMission-response)))
  "Returns string type for a service object of type 'StopMission-response"
  "vision_apps/StopMissionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopMission-response>)))
  "Returns md5sum for a message object of type '<StopMission-response>"
  "4ad76664b0717ddbf6142456d7398288")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopMission-response)))
  "Returns md5sum for a message object of type 'StopMission-response"
  "4ad76664b0717ddbf6142456d7398288")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopMission-response>)))
  "Returns full string definition for message of type '<StopMission-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopMission-response)))
  "Returns full string definition for message of type 'StopMission-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopMission-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopMission-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopMission-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopMission)))
  'StopMission-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopMission)))
  'StopMission-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopMission)))
  "Returns string type for a service object of type '<StopMission>"
  "vision_apps/StopMission")