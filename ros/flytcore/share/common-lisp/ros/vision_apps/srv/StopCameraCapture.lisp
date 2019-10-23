; Auto-generated. Do not edit!


(cl:in-package vision_apps-srv)


;//! \htmlinclude StopCameraCapture-request.msg.html

(cl:defclass <StopCameraCapture-request> (roslisp-msg-protocol:ros-message)
  ((pid
    :reader pid
    :initarg :pid
    :type cl:integer
    :initform 0))
)

(cl:defclass StopCameraCapture-request (<StopCameraCapture-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopCameraCapture-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopCameraCapture-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<StopCameraCapture-request> is deprecated: use vision_apps-srv:StopCameraCapture-request instead.")))

(cl:ensure-generic-function 'pid-val :lambda-list '(m))
(cl:defmethod pid-val ((m <StopCameraCapture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:pid-val is deprecated.  Use vision_apps-srv:pid instead.")
  (pid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopCameraCapture-request>) ostream)
  "Serializes a message object of type '<StopCameraCapture-request>"
  (cl:let* ((signed (cl:slot-value msg 'pid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopCameraCapture-request>) istream)
  "Deserializes a message object of type '<StopCameraCapture-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopCameraCapture-request>)))
  "Returns string type for a service object of type '<StopCameraCapture-request>"
  "vision_apps/StopCameraCaptureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopCameraCapture-request)))
  "Returns string type for a service object of type 'StopCameraCapture-request"
  "vision_apps/StopCameraCaptureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopCameraCapture-request>)))
  "Returns md5sum for a message object of type '<StopCameraCapture-request>"
  "e68f3fbbba669be19f5e738564807335")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopCameraCapture-request)))
  "Returns md5sum for a message object of type 'StopCameraCapture-request"
  "e68f3fbbba669be19f5e738564807335")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopCameraCapture-request>)))
  "Returns full string definition for message of type '<StopCameraCapture-request>"
  (cl:format cl:nil "int32 pid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopCameraCapture-request)))
  "Returns full string definition for message of type 'StopCameraCapture-request"
  (cl:format cl:nil "int32 pid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopCameraCapture-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopCameraCapture-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopCameraCapture-request
    (cl:cons ':pid (pid msg))
))
;//! \htmlinclude StopCameraCapture-response.msg.html

(cl:defclass <StopCameraCapture-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StopCameraCapture-response (<StopCameraCapture-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopCameraCapture-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopCameraCapture-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<StopCameraCapture-response> is deprecated: use vision_apps-srv:StopCameraCapture-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <StopCameraCapture-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:success-val is deprecated.  Use vision_apps-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopCameraCapture-response>) ostream)
  "Serializes a message object of type '<StopCameraCapture-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopCameraCapture-response>) istream)
  "Deserializes a message object of type '<StopCameraCapture-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopCameraCapture-response>)))
  "Returns string type for a service object of type '<StopCameraCapture-response>"
  "vision_apps/StopCameraCaptureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopCameraCapture-response)))
  "Returns string type for a service object of type 'StopCameraCapture-response"
  "vision_apps/StopCameraCaptureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopCameraCapture-response>)))
  "Returns md5sum for a message object of type '<StopCameraCapture-response>"
  "e68f3fbbba669be19f5e738564807335")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopCameraCapture-response)))
  "Returns md5sum for a message object of type 'StopCameraCapture-response"
  "e68f3fbbba669be19f5e738564807335")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopCameraCapture-response>)))
  "Returns full string definition for message of type '<StopCameraCapture-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopCameraCapture-response)))
  "Returns full string definition for message of type 'StopCameraCapture-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopCameraCapture-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopCameraCapture-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopCameraCapture-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopCameraCapture)))
  'StopCameraCapture-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopCameraCapture)))
  'StopCameraCapture-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopCameraCapture)))
  "Returns string type for a service object of type '<StopCameraCapture>"
  "vision_apps/StopCameraCapture")