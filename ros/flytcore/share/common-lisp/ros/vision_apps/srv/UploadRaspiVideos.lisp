; Auto-generated. Do not edit!


(cl:in-package vision_apps-srv)


;//! \htmlinclude UploadRaspiVideos-request.msg.html

(cl:defclass <UploadRaspiVideos-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass UploadRaspiVideos-request (<UploadRaspiVideos-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UploadRaspiVideos-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UploadRaspiVideos-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<UploadRaspiVideos-request> is deprecated: use vision_apps-srv:UploadRaspiVideos-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UploadRaspiVideos-request>) ostream)
  "Serializes a message object of type '<UploadRaspiVideos-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UploadRaspiVideos-request>) istream)
  "Deserializes a message object of type '<UploadRaspiVideos-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UploadRaspiVideos-request>)))
  "Returns string type for a service object of type '<UploadRaspiVideos-request>"
  "vision_apps/UploadRaspiVideosRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UploadRaspiVideos-request)))
  "Returns string type for a service object of type 'UploadRaspiVideos-request"
  "vision_apps/UploadRaspiVideosRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UploadRaspiVideos-request>)))
  "Returns md5sum for a message object of type '<UploadRaspiVideos-request>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UploadRaspiVideos-request)))
  "Returns md5sum for a message object of type 'UploadRaspiVideos-request"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UploadRaspiVideos-request>)))
  "Returns full string definition for message of type '<UploadRaspiVideos-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UploadRaspiVideos-request)))
  "Returns full string definition for message of type 'UploadRaspiVideos-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UploadRaspiVideos-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UploadRaspiVideos-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UploadRaspiVideos-request
))
;//! \htmlinclude UploadRaspiVideos-response.msg.html

(cl:defclass <UploadRaspiVideos-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass UploadRaspiVideos-response (<UploadRaspiVideos-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UploadRaspiVideos-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UploadRaspiVideos-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<UploadRaspiVideos-response> is deprecated: use vision_apps-srv:UploadRaspiVideos-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <UploadRaspiVideos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:success-val is deprecated.  Use vision_apps-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <UploadRaspiVideos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:message-val is deprecated.  Use vision_apps-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UploadRaspiVideos-response>) ostream)
  "Serializes a message object of type '<UploadRaspiVideos-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UploadRaspiVideos-response>) istream)
  "Deserializes a message object of type '<UploadRaspiVideos-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UploadRaspiVideos-response>)))
  "Returns string type for a service object of type '<UploadRaspiVideos-response>"
  "vision_apps/UploadRaspiVideosResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UploadRaspiVideos-response)))
  "Returns string type for a service object of type 'UploadRaspiVideos-response"
  "vision_apps/UploadRaspiVideosResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UploadRaspiVideos-response>)))
  "Returns md5sum for a message object of type '<UploadRaspiVideos-response>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UploadRaspiVideos-response)))
  "Returns md5sum for a message object of type 'UploadRaspiVideos-response"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UploadRaspiVideos-response>)))
  "Returns full string definition for message of type '<UploadRaspiVideos-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UploadRaspiVideos-response)))
  "Returns full string definition for message of type 'UploadRaspiVideos-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UploadRaspiVideos-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UploadRaspiVideos-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UploadRaspiVideos-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UploadRaspiVideos)))
  'UploadRaspiVideos-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UploadRaspiVideos)))
  'UploadRaspiVideos-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UploadRaspiVideos)))
  "Returns string type for a service object of type '<UploadRaspiVideos>"
  "vision_apps/UploadRaspiVideos")