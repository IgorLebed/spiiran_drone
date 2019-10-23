; Auto-generated. Do not edit!


(cl:in-package flyt_ms-srv)


;//! \htmlinclude LicChkSrv-request.msg.html

(cl:defclass <LicChkSrv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LicChkSrv-request (<LicChkSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LicChkSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LicChkSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flyt_ms-srv:<LicChkSrv-request> is deprecated: use flyt_ms-srv:LicChkSrv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LicChkSrv-request>) ostream)
  "Serializes a message object of type '<LicChkSrv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LicChkSrv-request>) istream)
  "Deserializes a message object of type '<LicChkSrv-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LicChkSrv-request>)))
  "Returns string type for a service object of type '<LicChkSrv-request>"
  "flyt_ms/LicChkSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LicChkSrv-request)))
  "Returns string type for a service object of type 'LicChkSrv-request"
  "flyt_ms/LicChkSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LicChkSrv-request>)))
  "Returns md5sum for a message object of type '<LicChkSrv-request>"
  "654af7e147b2d29af49c77584bd33b70")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LicChkSrv-request)))
  "Returns md5sum for a message object of type 'LicChkSrv-request"
  "654af7e147b2d29af49c77584bd33b70")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LicChkSrv-request>)))
  "Returns full string definition for message of type '<LicChkSrv-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LicChkSrv-request)))
  "Returns full string definition for message of type 'LicChkSrv-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LicChkSrv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LicChkSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LicChkSrv-request
))
;//! \htmlinclude LicChkSrv-response.msg.html

(cl:defclass <LicChkSrv-response> (roslisp-msg-protocol:ros-message)
  ((lic_type
    :reader lic_type
    :initarg :lic_type
    :type cl:string
    :initform "")
   (lic_valid
    :reader lic_valid
    :initarg :lic_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LicChkSrv-response (<LicChkSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LicChkSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LicChkSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flyt_ms-srv:<LicChkSrv-response> is deprecated: use flyt_ms-srv:LicChkSrv-response instead.")))

(cl:ensure-generic-function 'lic_type-val :lambda-list '(m))
(cl:defmethod lic_type-val ((m <LicChkSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flyt_ms-srv:lic_type-val is deprecated.  Use flyt_ms-srv:lic_type instead.")
  (lic_type m))

(cl:ensure-generic-function 'lic_valid-val :lambda-list '(m))
(cl:defmethod lic_valid-val ((m <LicChkSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flyt_ms-srv:lic_valid-val is deprecated.  Use flyt_ms-srv:lic_valid instead.")
  (lic_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LicChkSrv-response>) ostream)
  "Serializes a message object of type '<LicChkSrv-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lic_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lic_type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lic_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LicChkSrv-response>) istream)
  "Deserializes a message object of type '<LicChkSrv-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lic_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lic_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'lic_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LicChkSrv-response>)))
  "Returns string type for a service object of type '<LicChkSrv-response>"
  "flyt_ms/LicChkSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LicChkSrv-response)))
  "Returns string type for a service object of type 'LicChkSrv-response"
  "flyt_ms/LicChkSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LicChkSrv-response>)))
  "Returns md5sum for a message object of type '<LicChkSrv-response>"
  "654af7e147b2d29af49c77584bd33b70")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LicChkSrv-response)))
  "Returns md5sum for a message object of type 'LicChkSrv-response"
  "654af7e147b2d29af49c77584bd33b70")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LicChkSrv-response>)))
  "Returns full string definition for message of type '<LicChkSrv-response>"
  (cl:format cl:nil "string lic_type~%bool lic_valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LicChkSrv-response)))
  "Returns full string definition for message of type 'LicChkSrv-response"
  (cl:format cl:nil "string lic_type~%bool lic_valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LicChkSrv-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'lic_type))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LicChkSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LicChkSrv-response
    (cl:cons ':lic_type (lic_type msg))
    (cl:cons ':lic_valid (lic_valid msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LicChkSrv)))
  'LicChkSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LicChkSrv)))
  'LicChkSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LicChkSrv)))
  "Returns string type for a service object of type '<LicChkSrv>"
  "flyt_ms/LicChkSrv")