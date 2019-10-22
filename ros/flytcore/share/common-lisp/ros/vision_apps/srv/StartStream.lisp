; Auto-generated. Do not edit!


(cl:in-package vision_apps-srv)


;//! \htmlinclude StartStream-request.msg.html

(cl:defclass <StartStream-request> (roslisp-msg-protocol:ros-message)
  ((streamer
    :reader streamer
    :initarg :streamer
    :type cl:string
    :initform "")
   (ip
    :reader ip
    :initarg :ip
    :type cl:string
    :initform "")
   (port
    :reader port
    :initarg :port
    :type cl:string
    :initform "")
   (source_type
    :reader source_type
    :initarg :source_type
    :type cl:string
    :initform "")
   (camera_alias
    :reader camera_alias
    :initarg :camera_alias
    :type cl:string
    :initform "")
   (topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform "")
   (camera_calib_file
    :reader camera_calib_file
    :initarg :camera_calib_file
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
    :initform 0))
)

(cl:defclass StartStream-request (<StartStream-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartStream-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartStream-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<StartStream-request> is deprecated: use vision_apps-srv:StartStream-request instead.")))

(cl:ensure-generic-function 'streamer-val :lambda-list '(m))
(cl:defmethod streamer-val ((m <StartStream-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:streamer-val is deprecated.  Use vision_apps-srv:streamer instead.")
  (streamer m))

(cl:ensure-generic-function 'ip-val :lambda-list '(m))
(cl:defmethod ip-val ((m <StartStream-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:ip-val is deprecated.  Use vision_apps-srv:ip instead.")
  (ip m))

(cl:ensure-generic-function 'port-val :lambda-list '(m))
(cl:defmethod port-val ((m <StartStream-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:port-val is deprecated.  Use vision_apps-srv:port instead.")
  (port m))

(cl:ensure-generic-function 'source_type-val :lambda-list '(m))
(cl:defmethod source_type-val ((m <StartStream-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:source_type-val is deprecated.  Use vision_apps-srv:source_type instead.")
  (source_type m))

(cl:ensure-generic-function 'camera_alias-val :lambda-list '(m))
(cl:defmethod camera_alias-val ((m <StartStream-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:camera_alias-val is deprecated.  Use vision_apps-srv:camera_alias instead.")
  (camera_alias m))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <StartStream-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:topic-val is deprecated.  Use vision_apps-srv:topic instead.")
  (topic m))

(cl:ensure-generic-function 'camera_calib_file-val :lambda-list '(m))
(cl:defmethod camera_calib_file-val ((m <StartStream-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:camera_calib_file-val is deprecated.  Use vision_apps-srv:camera_calib_file instead.")
  (camera_calib_file m))

(cl:ensure-generic-function 'image_width-val :lambda-list '(m))
(cl:defmethod image_width-val ((m <StartStream-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:image_width-val is deprecated.  Use vision_apps-srv:image_width instead.")
  (image_width m))

(cl:ensure-generic-function 'image_height-val :lambda-list '(m))
(cl:defmethod image_height-val ((m <StartStream-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:image_height-val is deprecated.  Use vision_apps-srv:image_height instead.")
  (image_height m))

(cl:ensure-generic-function 'framerate-val :lambda-list '(m))
(cl:defmethod framerate-val ((m <StartStream-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:framerate-val is deprecated.  Use vision_apps-srv:framerate instead.")
  (framerate m))

(cl:ensure-generic-function 'brightness-val :lambda-list '(m))
(cl:defmethod brightness-val ((m <StartStream-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:brightness-val is deprecated.  Use vision_apps-srv:brightness instead.")
  (brightness m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartStream-request>) ostream)
  "Serializes a message object of type '<StartStream-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'streamer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'streamer))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ip))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ip))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'port))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'port))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'source_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'source_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'camera_alias))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'camera_alias))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'camera_calib_file))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'camera_calib_file))
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartStream-request>) istream)
  "Deserializes a message object of type '<StartStream-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'streamer) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'streamer) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ip) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ip) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'port) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'port) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'source_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
      (cl:setf (cl:slot-value msg 'topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camera_calib_file) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'camera_calib_file) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartStream-request>)))
  "Returns string type for a service object of type '<StartStream-request>"
  "vision_apps/StartStreamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartStream-request)))
  "Returns string type for a service object of type 'StartStream-request"
  "vision_apps/StartStreamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartStream-request>)))
  "Returns md5sum for a message object of type '<StartStream-request>"
  "e80b3fbc60a44ad81af9ba0208e68957")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartStream-request)))
  "Returns md5sum for a message object of type 'StartStream-request"
  "e80b3fbc60a44ad81af9ba0208e68957")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartStream-request>)))
  "Returns full string definition for message of type '<StartStream-request>"
  (cl:format cl:nil "string streamer~%string ip~%string port~%string source_type~%string camera_alias~%string topic~%string camera_calib_file~%int64  image_width~%int64  image_height~%int64  framerate~%int64  brightness~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartStream-request)))
  "Returns full string definition for message of type 'StartStream-request"
  (cl:format cl:nil "string streamer~%string ip~%string port~%string source_type~%string camera_alias~%string topic~%string camera_calib_file~%int64  image_width~%int64  image_height~%int64  framerate~%int64  brightness~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartStream-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'streamer))
     4 (cl:length (cl:slot-value msg 'ip))
     4 (cl:length (cl:slot-value msg 'port))
     4 (cl:length (cl:slot-value msg 'source_type))
     4 (cl:length (cl:slot-value msg 'camera_alias))
     4 (cl:length (cl:slot-value msg 'topic))
     4 (cl:length (cl:slot-value msg 'camera_calib_file))
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartStream-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartStream-request
    (cl:cons ':streamer (streamer msg))
    (cl:cons ':ip (ip msg))
    (cl:cons ':port (port msg))
    (cl:cons ':source_type (source_type msg))
    (cl:cons ':camera_alias (camera_alias msg))
    (cl:cons ':topic (topic msg))
    (cl:cons ':camera_calib_file (camera_calib_file msg))
    (cl:cons ':image_width (image_width msg))
    (cl:cons ':image_height (image_height msg))
    (cl:cons ':framerate (framerate msg))
    (cl:cons ':brightness (brightness msg))
))
;//! \htmlinclude StartStream-response.msg.html

(cl:defclass <StartStream-response> (roslisp-msg-protocol:ros-message)
  ((pid
    :reader pid
    :initarg :pid
    :type cl:integer
    :initform 0))
)

(cl:defclass StartStream-response (<StartStream-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartStream-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartStream-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<StartStream-response> is deprecated: use vision_apps-srv:StartStream-response instead.")))

(cl:ensure-generic-function 'pid-val :lambda-list '(m))
(cl:defmethod pid-val ((m <StartStream-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:pid-val is deprecated.  Use vision_apps-srv:pid instead.")
  (pid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartStream-response>) ostream)
  "Serializes a message object of type '<StartStream-response>"
  (cl:let* ((signed (cl:slot-value msg 'pid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartStream-response>) istream)
  "Deserializes a message object of type '<StartStream-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartStream-response>)))
  "Returns string type for a service object of type '<StartStream-response>"
  "vision_apps/StartStreamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartStream-response)))
  "Returns string type for a service object of type 'StartStream-response"
  "vision_apps/StartStreamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartStream-response>)))
  "Returns md5sum for a message object of type '<StartStream-response>"
  "e80b3fbc60a44ad81af9ba0208e68957")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartStream-response)))
  "Returns md5sum for a message object of type 'StartStream-response"
  "e80b3fbc60a44ad81af9ba0208e68957")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartStream-response>)))
  "Returns full string definition for message of type '<StartStream-response>"
  (cl:format cl:nil "int32 pid~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartStream-response)))
  "Returns full string definition for message of type 'StartStream-response"
  (cl:format cl:nil "int32 pid~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartStream-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartStream-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartStream-response
    (cl:cons ':pid (pid msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartStream)))
  'StartStream-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartStream)))
  'StartStream-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartStream)))
  "Returns string type for a service object of type '<StartStream>"
  "vision_apps/StartStream")