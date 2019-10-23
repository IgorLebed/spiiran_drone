; Auto-generated. Do not edit!


(cl:in-package flyt_ms-srv)


;//! \htmlinclude LicSrv-request.msg.html

(cl:defclass <LicSrv-request> (roslisp-msg-protocol:ros-message)
  ((ser_id
    :reader ser_id
    :initarg :ser_id
    :type cl:string
    :initform "")
   (dev_id
    :reader dev_id
    :initarg :dev_id
    :type cl:string
    :initform ""))
)

(cl:defclass LicSrv-request (<LicSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LicSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LicSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flyt_ms-srv:<LicSrv-request> is deprecated: use flyt_ms-srv:LicSrv-request instead.")))

(cl:ensure-generic-function 'ser_id-val :lambda-list '(m))
(cl:defmethod ser_id-val ((m <LicSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flyt_ms-srv:ser_id-val is deprecated.  Use flyt_ms-srv:ser_id instead.")
  (ser_id m))

(cl:ensure-generic-function 'dev_id-val :lambda-list '(m))
(cl:defmethod dev_id-val ((m <LicSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flyt_ms-srv:dev_id-val is deprecated.  Use flyt_ms-srv:dev_id instead.")
  (dev_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LicSrv-request>) ostream)
  "Serializes a message object of type '<LicSrv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ser_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ser_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dev_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dev_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LicSrv-request>) istream)
  "Deserializes a message object of type '<LicSrv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ser_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ser_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dev_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dev_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LicSrv-request>)))
  "Returns string type for a service object of type '<LicSrv-request>"
  "flyt_ms/LicSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LicSrv-request)))
  "Returns string type for a service object of type 'LicSrv-request"
  "flyt_ms/LicSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LicSrv-request>)))
  "Returns md5sum for a message object of type '<LicSrv-request>"
  "78ae2287421c41faed757606acee0dc8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LicSrv-request)))
  "Returns md5sum for a message object of type 'LicSrv-request"
  "78ae2287421c41faed757606acee0dc8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LicSrv-request>)))
  "Returns full string definition for message of type '<LicSrv-request>"
  (cl:format cl:nil "string ser_id~%string dev_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LicSrv-request)))
  "Returns full string definition for message of type 'LicSrv-request"
  (cl:format cl:nil "string ser_id~%string dev_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LicSrv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ser_id))
     4 (cl:length (cl:slot-value msg 'dev_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LicSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LicSrv-request
    (cl:cons ':ser_id (ser_id msg))
    (cl:cons ':dev_id (dev_id msg))
))
;//! \htmlinclude LicSrv-response.msg.html

(cl:defclass <LicSrv-response> (roslisp-msg-protocol:ros-message)
  ((lic_type
    :reader lic_type
    :initarg :lic_type
    :type cl:string
    :initform "")
   (exp_date
    :reader exp_date
    :initarg :exp_date
    :type cl:string
    :initform ""))
)

(cl:defclass LicSrv-response (<LicSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LicSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LicSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flyt_ms-srv:<LicSrv-response> is deprecated: use flyt_ms-srv:LicSrv-response instead.")))

(cl:ensure-generic-function 'lic_type-val :lambda-list '(m))
(cl:defmethod lic_type-val ((m <LicSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flyt_ms-srv:lic_type-val is deprecated.  Use flyt_ms-srv:lic_type instead.")
  (lic_type m))

(cl:ensure-generic-function 'exp_date-val :lambda-list '(m))
(cl:defmethod exp_date-val ((m <LicSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flyt_ms-srv:exp_date-val is deprecated.  Use flyt_ms-srv:exp_date instead.")
  (exp_date m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LicSrv-response>) ostream)
  "Serializes a message object of type '<LicSrv-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lic_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lic_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'exp_date))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'exp_date))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LicSrv-response>) istream)
  "Deserializes a message object of type '<LicSrv-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lic_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lic_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'exp_date) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'exp_date) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LicSrv-response>)))
  "Returns string type for a service object of type '<LicSrv-response>"
  "flyt_ms/LicSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LicSrv-response)))
  "Returns string type for a service object of type 'LicSrv-response"
  "flyt_ms/LicSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LicSrv-response>)))
  "Returns md5sum for a message object of type '<LicSrv-response>"
  "78ae2287421c41faed757606acee0dc8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LicSrv-response)))
  "Returns md5sum for a message object of type 'LicSrv-response"
  "78ae2287421c41faed757606acee0dc8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LicSrv-response>)))
  "Returns full string definition for message of type '<LicSrv-response>"
  (cl:format cl:nil "string lic_type~%string exp_date~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LicSrv-response)))
  "Returns full string definition for message of type 'LicSrv-response"
  (cl:format cl:nil "string lic_type~%string exp_date~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LicSrv-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'lic_type))
     4 (cl:length (cl:slot-value msg 'exp_date))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LicSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LicSrv-response
    (cl:cons ':lic_type (lic_type msg))
    (cl:cons ':exp_date (exp_date msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LicSrv)))
  'LicSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LicSrv)))
  'LicSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LicSrv)))
  "Returns string type for a service object of type '<LicSrv>"
  "flyt_ms/LicSrv")