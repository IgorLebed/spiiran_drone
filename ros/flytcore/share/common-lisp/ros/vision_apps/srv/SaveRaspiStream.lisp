; Auto-generated. Do not edit!


(cl:in-package vision_apps-srv)


;//! \htmlinclude SaveRaspiStream-request.msg.html

(cl:defclass <SaveRaspiStream-request> (roslisp-msg-protocol:ros-message)
  ((image_width
    :reader image_width
    :initarg :image_width
    :type cl:integer
    :initform 0)
   (image_height
    :reader image_height
    :initarg :image_height
    :type cl:integer
    :initform 0)
   (framerate
    :reader framerate
    :initarg :framerate
    :type cl:integer
    :initform 0)
   (brightness
    :reader brightness
    :initarg :brightness
    :type cl:integer
    :initform 0)
   (saturation
    :reader saturation
    :initarg :saturation
    :type cl:integer
    :initform 0)
   (flip
    :reader flip
    :initarg :flip
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SaveRaspiStream-request (<SaveRaspiStream-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveRaspiStream-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveRaspiStream-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<SaveRaspiStream-request> is deprecated: use vision_apps-srv:SaveRaspiStream-request instead.")))

(cl:ensure-generic-function 'image_width-val :lambda-list '(m))
(cl:defmethod image_width-val ((m <SaveRaspiStream-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:image_width-val is deprecated.  Use vision_apps-srv:image_width instead.")
  (image_width m))

(cl:ensure-generic-function 'image_height-val :lambda-list '(m))
(cl:defmethod image_height-val ((m <SaveRaspiStream-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:image_height-val is deprecated.  Use vision_apps-srv:image_height instead.")
  (image_height m))

(cl:ensure-generic-function 'framerate-val :lambda-list '(m))
(cl:defmethod framerate-val ((m <SaveRaspiStream-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:framerate-val is deprecated.  Use vision_apps-srv:framerate instead.")
  (framerate m))

(cl:ensure-generic-function 'brightness-val :lambda-list '(m))
(cl:defmethod brightness-val ((m <SaveRaspiStream-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:brightness-val is deprecated.  Use vision_apps-srv:brightness instead.")
  (brightness m))

(cl:ensure-generic-function 'saturation-val :lambda-list '(m))
(cl:defmethod saturation-val ((m <SaveRaspiStream-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:saturation-val is deprecated.  Use vision_apps-srv:saturation instead.")
  (saturation m))

(cl:ensure-generic-function 'flip-val :lambda-list '(m))
(cl:defmethod flip-val ((m <SaveRaspiStream-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:flip-val is deprecated.  Use vision_apps-srv:flip instead.")
  (flip m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveRaspiStream-request>) ostream)
  "Serializes a message object of type '<SaveRaspiStream-request>"
  (cl:let* ((signed (cl:slot-value msg 'image_width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'image_height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'framerate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'brightness)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'saturation)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'flip) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveRaspiStream-request>) istream)
  "Deserializes a message object of type '<SaveRaspiStream-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'image_width) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'image_height) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'framerate) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'brightness) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'saturation) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:slot-value msg 'flip) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveRaspiStream-request>)))
  "Returns string type for a service object of type '<SaveRaspiStream-request>"
  "vision_apps/SaveRaspiStreamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveRaspiStream-request)))
  "Returns string type for a service object of type 'SaveRaspiStream-request"
  "vision_apps/SaveRaspiStreamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveRaspiStream-request>)))
  "Returns md5sum for a message object of type '<SaveRaspiStream-request>"
  "1bc50cb45f8869f15d55cc109c10788a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveRaspiStream-request)))
  "Returns md5sum for a message object of type 'SaveRaspiStream-request"
  "1bc50cb45f8869f15d55cc109c10788a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveRaspiStream-request>)))
  "Returns full string definition for message of type '<SaveRaspiStream-request>"
  (cl:format cl:nil "int64  image_width~%int64  image_height~%int64  framerate~%int64  brightness~%int64  saturation~%bool 	 flip~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveRaspiStream-request)))
  "Returns full string definition for message of type 'SaveRaspiStream-request"
  (cl:format cl:nil "int64  image_width~%int64  image_height~%int64  framerate~%int64  brightness~%int64  saturation~%bool 	 flip~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveRaspiStream-request>))
  (cl:+ 0
     8
     8
     8
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveRaspiStream-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveRaspiStream-request
    (cl:cons ':image_width (image_width msg))
    (cl:cons ':image_height (image_height msg))
    (cl:cons ':framerate (framerate msg))
    (cl:cons ':brightness (brightness msg))
    (cl:cons ':saturation (saturation msg))
    (cl:cons ':flip (flip msg))
))
;//! \htmlinclude SaveRaspiStream-response.msg.html

(cl:defclass <SaveRaspiStream-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SaveRaspiStream-response (<SaveRaspiStream-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveRaspiStream-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveRaspiStream-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<SaveRaspiStream-response> is deprecated: use vision_apps-srv:SaveRaspiStream-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SaveRaspiStream-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:success-val is deprecated.  Use vision_apps-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SaveRaspiStream-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:message-val is deprecated.  Use vision_apps-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveRaspiStream-response>) ostream)
  "Serializes a message object of type '<SaveRaspiStream-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveRaspiStream-response>) istream)
  "Deserializes a message object of type '<SaveRaspiStream-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveRaspiStream-response>)))
  "Returns string type for a service object of type '<SaveRaspiStream-response>"
  "vision_apps/SaveRaspiStreamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveRaspiStream-response)))
  "Returns string type for a service object of type 'SaveRaspiStream-response"
  "vision_apps/SaveRaspiStreamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveRaspiStream-response>)))
  "Returns md5sum for a message object of type '<SaveRaspiStream-response>"
  "1bc50cb45f8869f15d55cc109c10788a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveRaspiStream-response)))
  "Returns md5sum for a message object of type 'SaveRaspiStream-response"
  "1bc50cb45f8869f15d55cc109c10788a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveRaspiStream-response>)))
  "Returns full string definition for message of type '<SaveRaspiStream-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveRaspiStream-response)))
  "Returns full string definition for message of type 'SaveRaspiStream-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveRaspiStream-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveRaspiStream-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveRaspiStream-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveRaspiStream)))
  'SaveRaspiStream-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveRaspiStream)))
  'SaveRaspiStream-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveRaspiStream)))
  "Returns string type for a service object of type '<SaveRaspiStream>"
  "vision_apps/SaveRaspiStream")