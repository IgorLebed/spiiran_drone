; Auto-generated. Do not edit!


(cl:in-package vision_apps-srv)


;//! \htmlinclude StartCameraCapture-request.msg.html

(cl:defclass <StartCameraCapture-request> (roslisp-msg-protocol:ros-message)
  ((camera_alias
    :reader camera_alias
    :initarg :camera_alias
    :type cl:string
    :initform "")
   (pixel_format
    :reader pixel_format
    :initarg :pixel_format
    :type cl:string
    :initform "")
   (image_width
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
   (camera_info_url
    :reader camera_info_url
    :initarg :camera_info_url
    :type cl:string
    :initform ""))
)

(cl:defclass StartCameraCapture-request (<StartCameraCapture-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartCameraCapture-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartCameraCapture-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<StartCameraCapture-request> is deprecated: use vision_apps-srv:StartCameraCapture-request instead.")))

(cl:ensure-generic-function 'camera_alias-val :lambda-list '(m))
(cl:defmethod camera_alias-val ((m <StartCameraCapture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:camera_alias-val is deprecated.  Use vision_apps-srv:camera_alias instead.")
  (camera_alias m))

(cl:ensure-generic-function 'pixel_format-val :lambda-list '(m))
(cl:defmethod pixel_format-val ((m <StartCameraCapture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:pixel_format-val is deprecated.  Use vision_apps-srv:pixel_format instead.")
  (pixel_format m))

(cl:ensure-generic-function 'image_width-val :lambda-list '(m))
(cl:defmethod image_width-val ((m <StartCameraCapture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:image_width-val is deprecated.  Use vision_apps-srv:image_width instead.")
  (image_width m))

(cl:ensure-generic-function 'image_height-val :lambda-list '(m))
(cl:defmethod image_height-val ((m <StartCameraCapture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:image_height-val is deprecated.  Use vision_apps-srv:image_height instead.")
  (image_height m))

(cl:ensure-generic-function 'framerate-val :lambda-list '(m))
(cl:defmethod framerate-val ((m <StartCameraCapture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:framerate-val is deprecated.  Use vision_apps-srv:framerate instead.")
  (framerate m))

(cl:ensure-generic-function 'brightness-val :lambda-list '(m))
(cl:defmethod brightness-val ((m <StartCameraCapture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:brightness-val is deprecated.  Use vision_apps-srv:brightness instead.")
  (brightness m))

(cl:ensure-generic-function 'camera_info_url-val :lambda-list '(m))
(cl:defmethod camera_info_url-val ((m <StartCameraCapture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:camera_info_url-val is deprecated.  Use vision_apps-srv:camera_info_url instead.")
  (camera_info_url m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartCameraCapture-request>) ostream)
  "Serializes a message object of type '<StartCameraCapture-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'camera_alias))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'camera_alias))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pixel_format))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pixel_format))
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'camera_info_url))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'camera_info_url))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartCameraCapture-request>) istream)
  "Deserializes a message object of type '<StartCameraCapture-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camera_alias) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'camera_alias) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pixel_format) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pixel_format) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camera_info_url) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'camera_info_url) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartCameraCapture-request>)))
  "Returns string type for a service object of type '<StartCameraCapture-request>"
  "vision_apps/StartCameraCaptureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartCameraCapture-request)))
  "Returns string type for a service object of type 'StartCameraCapture-request"
  "vision_apps/StartCameraCaptureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartCameraCapture-request>)))
  "Returns md5sum for a message object of type '<StartCameraCapture-request>"
  "5501cdfd5da9afae41c8afd579b3c676")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartCameraCapture-request)))
  "Returns md5sum for a message object of type 'StartCameraCapture-request"
  "5501cdfd5da9afae41c8afd579b3c676")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartCameraCapture-request>)))
  "Returns full string definition for message of type '<StartCameraCapture-request>"
  (cl:format cl:nil "string camera_alias~%string pixel_format~%int64  image_width~%int64  image_height~%int64  framerate~%int64  brightness~%string camera_info_url~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartCameraCapture-request)))
  "Returns full string definition for message of type 'StartCameraCapture-request"
  (cl:format cl:nil "string camera_alias~%string pixel_format~%int64  image_width~%int64  image_height~%int64  framerate~%int64  brightness~%string camera_info_url~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartCameraCapture-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'camera_alias))
     4 (cl:length (cl:slot-value msg 'pixel_format))
     8
     8
     8
     8
     4 (cl:length (cl:slot-value msg 'camera_info_url))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartCameraCapture-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartCameraCapture-request
    (cl:cons ':camera_alias (camera_alias msg))
    (cl:cons ':pixel_format (pixel_format msg))
    (cl:cons ':image_width (image_width msg))
    (cl:cons ':image_height (image_height msg))
    (cl:cons ':framerate (framerate msg))
    (cl:cons ':brightness (brightness msg))
    (cl:cons ':camera_info_url (camera_info_url msg))
))
;//! \htmlinclude StartCameraCapture-response.msg.html

(cl:defclass <StartCameraCapture-response> (roslisp-msg-protocol:ros-message)
  ((pid
    :reader pid
    :initarg :pid
    :type cl:integer
    :initform 0))
)

(cl:defclass StartCameraCapture-response (<StartCameraCapture-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartCameraCapture-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartCameraCapture-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<StartCameraCapture-response> is deprecated: use vision_apps-srv:StartCameraCapture-response instead.")))

(cl:ensure-generic-function 'pid-val :lambda-list '(m))
(cl:defmethod pid-val ((m <StartCameraCapture-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:pid-val is deprecated.  Use vision_apps-srv:pid instead.")
  (pid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartCameraCapture-response>) ostream)
  "Serializes a message object of type '<StartCameraCapture-response>"
  (cl:let* ((signed (cl:slot-value msg 'pid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartCameraCapture-response>) istream)
  "Deserializes a message object of type '<StartCameraCapture-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartCameraCapture-response>)))
  "Returns string type for a service object of type '<StartCameraCapture-response>"
  "vision_apps/StartCameraCaptureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartCameraCapture-response)))
  "Returns string type for a service object of type 'StartCameraCapture-response"
  "vision_apps/StartCameraCaptureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartCameraCapture-response>)))
  "Returns md5sum for a message object of type '<StartCameraCapture-response>"
  "5501cdfd5da9afae41c8afd579b3c676")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartCameraCapture-response)))
  "Returns md5sum for a message object of type 'StartCameraCapture-response"
  "5501cdfd5da9afae41c8afd579b3c676")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartCameraCapture-response>)))
  "Returns full string definition for message of type '<StartCameraCapture-response>"
  (cl:format cl:nil "int32 pid~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartCameraCapture-response)))
  "Returns full string definition for message of type 'StartCameraCapture-response"
  (cl:format cl:nil "int32 pid~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartCameraCapture-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartCameraCapture-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartCameraCapture-response
    (cl:cons ':pid (pid msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartCameraCapture)))
  'StartCameraCapture-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartCameraCapture)))
  'StartCameraCapture-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartCameraCapture)))
  "Returns string type for a service object of type '<StartCameraCapture>"
  "vision_apps/StartCameraCapture")