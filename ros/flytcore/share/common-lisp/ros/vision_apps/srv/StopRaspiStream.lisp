; Auto-generated. Do not edit!


(cl:in-package vision_apps-srv)


;//! \htmlinclude StopRaspiStream-request.msg.html

(cl:defclass <StopRaspiStream-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StopRaspiStream-request (<StopRaspiStream-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopRaspiStream-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopRaspiStream-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<StopRaspiStream-request> is deprecated: use vision_apps-srv:StopRaspiStream-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopRaspiStream-request>) ostream)
  "Serializes a message object of type '<StopRaspiStream-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopRaspiStream-request>) istream)
  "Deserializes a message object of type '<StopRaspiStream-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopRaspiStream-request>)))
  "Returns string type for a service object of type '<StopRaspiStream-request>"
  "vision_apps/StopRaspiStreamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopRaspiStream-request)))
  "Returns string type for a service object of type 'StopRaspiStream-request"
  "vision_apps/StopRaspiStreamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopRaspiStream-request>)))
  "Returns md5sum for a message object of type '<StopRaspiStream-request>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopRaspiStream-request)))
  "Returns md5sum for a message object of type 'StopRaspiStream-request"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopRaspiStream-request>)))
  "Returns full string definition for message of type '<StopRaspiStream-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopRaspiStream-request)))
  "Returns full string definition for message of type 'StopRaspiStream-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopRaspiStream-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopRaspiStream-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopRaspiStream-request
))
;//! \htmlinclude StopRaspiStream-response.msg.html

(cl:defclass <StopRaspiStream-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass StopRaspiStream-response (<StopRaspiStream-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopRaspiStream-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopRaspiStream-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<StopRaspiStream-response> is deprecated: use vision_apps-srv:StopRaspiStream-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <StopRaspiStream-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:success-val is deprecated.  Use vision_apps-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <StopRaspiStream-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:message-val is deprecated.  Use vision_apps-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopRaspiStream-response>) ostream)
  "Serializes a message object of type '<StopRaspiStream-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopRaspiStream-response>) istream)
  "Deserializes a message object of type '<StopRaspiStream-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopRaspiStream-response>)))
  "Returns string type for a service object of type '<StopRaspiStream-response>"
  "vision_apps/StopRaspiStreamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopRaspiStream-response)))
  "Returns string type for a service object of type 'StopRaspiStream-response"
  "vision_apps/StopRaspiStreamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopRaspiStream-response>)))
  "Returns md5sum for a message object of type '<StopRaspiStream-response>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopRaspiStream-response)))
  "Returns md5sum for a message object of type 'StopRaspiStream-response"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopRaspiStream-response>)))
  "Returns full string definition for message of type '<StopRaspiStream-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopRaspiStream-response)))
  "Returns full string definition for message of type 'StopRaspiStream-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopRaspiStream-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopRaspiStream-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopRaspiStream-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopRaspiStream)))
  'StopRaspiStream-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopRaspiStream)))
  'StopRaspiStream-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopRaspiStream)))
  "Returns string type for a service object of type '<StopRaspiStream>"
  "vision_apps/StopRaspiStream")