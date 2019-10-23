; Auto-generated. Do not edit!


(cl:in-package vision_apps-srv)


;//! \htmlinclude StopStream-request.msg.html

(cl:defclass <StopStream-request> (roslisp-msg-protocol:ros-message)
  ((pid
    :reader pid
    :initarg :pid
    :type cl:integer
    :initform 0))
)

(cl:defclass StopStream-request (<StopStream-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopStream-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopStream-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<StopStream-request> is deprecated: use vision_apps-srv:StopStream-request instead.")))

(cl:ensure-generic-function 'pid-val :lambda-list '(m))
(cl:defmethod pid-val ((m <StopStream-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:pid-val is deprecated.  Use vision_apps-srv:pid instead.")
  (pid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopStream-request>) ostream)
  "Serializes a message object of type '<StopStream-request>"
  (cl:let* ((signed (cl:slot-value msg 'pid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopStream-request>) istream)
  "Deserializes a message object of type '<StopStream-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopStream-request>)))
  "Returns string type for a service object of type '<StopStream-request>"
  "vision_apps/StopStreamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopStream-request)))
  "Returns string type for a service object of type 'StopStream-request"
  "vision_apps/StopStreamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopStream-request>)))
  "Returns md5sum for a message object of type '<StopStream-request>"
  "e68f3fbbba669be19f5e738564807335")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopStream-request)))
  "Returns md5sum for a message object of type 'StopStream-request"
  "e68f3fbbba669be19f5e738564807335")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopStream-request>)))
  "Returns full string definition for message of type '<StopStream-request>"
  (cl:format cl:nil "int32 pid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopStream-request)))
  "Returns full string definition for message of type 'StopStream-request"
  (cl:format cl:nil "int32 pid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopStream-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopStream-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopStream-request
    (cl:cons ':pid (pid msg))
))
;//! \htmlinclude StopStream-response.msg.html

(cl:defclass <StopStream-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StopStream-response (<StopStream-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopStream-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopStream-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<StopStream-response> is deprecated: use vision_apps-srv:StopStream-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <StopStream-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:success-val is deprecated.  Use vision_apps-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopStream-response>) ostream)
  "Serializes a message object of type '<StopStream-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopStream-response>) istream)
  "Deserializes a message object of type '<StopStream-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopStream-response>)))
  "Returns string type for a service object of type '<StopStream-response>"
  "vision_apps/StopStreamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopStream-response)))
  "Returns string type for a service object of type 'StopStream-response"
  "vision_apps/StopStreamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopStream-response>)))
  "Returns md5sum for a message object of type '<StopStream-response>"
  "e68f3fbbba669be19f5e738564807335")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopStream-response)))
  "Returns md5sum for a message object of type 'StopStream-response"
  "e68f3fbbba669be19f5e738564807335")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopStream-response>)))
  "Returns full string definition for message of type '<StopStream-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopStream-response)))
  "Returns full string definition for message of type 'StopStream-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopStream-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopStream-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopStream-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopStream)))
  'StopStream-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopStream)))
  'StopStream-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopStream)))
  "Returns string type for a service object of type '<StopStream>"
  "vision_apps/StopStream")