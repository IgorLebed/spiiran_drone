; Auto-generated. Do not edit!


(cl:in-package flyt_ms-srv)


;//! \htmlinclude DevSrv-request.msg.html

(cl:defclass <DevSrv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DevSrv-request (<DevSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DevSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DevSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flyt_ms-srv:<DevSrv-request> is deprecated: use flyt_ms-srv:DevSrv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DevSrv-request>) ostream)
  "Serializes a message object of type '<DevSrv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DevSrv-request>) istream)
  "Deserializes a message object of type '<DevSrv-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DevSrv-request>)))
  "Returns string type for a service object of type '<DevSrv-request>"
  "flyt_ms/DevSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DevSrv-request)))
  "Returns string type for a service object of type 'DevSrv-request"
  "flyt_ms/DevSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DevSrv-request>)))
  "Returns md5sum for a message object of type '<DevSrv-request>"
  "b791c1a4a4f0cee32b54dd1a73706a59")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DevSrv-request)))
  "Returns md5sum for a message object of type 'DevSrv-request"
  "b791c1a4a4f0cee32b54dd1a73706a59")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DevSrv-request>)))
  "Returns full string definition for message of type '<DevSrv-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DevSrv-request)))
  "Returns full string definition for message of type 'DevSrv-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DevSrv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DevSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DevSrv-request
))
;//! \htmlinclude DevSrv-response.msg.html

(cl:defclass <DevSrv-response> (roslisp-msg-protocol:ros-message)
  ((resp
    :reader resp
    :initarg :resp
    :type cl:string
    :initform ""))
)

(cl:defclass DevSrv-response (<DevSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DevSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DevSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flyt_ms-srv:<DevSrv-response> is deprecated: use flyt_ms-srv:DevSrv-response instead.")))

(cl:ensure-generic-function 'resp-val :lambda-list '(m))
(cl:defmethod resp-val ((m <DevSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flyt_ms-srv:resp-val is deprecated.  Use flyt_ms-srv:resp instead.")
  (resp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DevSrv-response>) ostream)
  "Serializes a message object of type '<DevSrv-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'resp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'resp))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DevSrv-response>) istream)
  "Deserializes a message object of type '<DevSrv-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'resp) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'resp) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DevSrv-response>)))
  "Returns string type for a service object of type '<DevSrv-response>"
  "flyt_ms/DevSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DevSrv-response)))
  "Returns string type for a service object of type 'DevSrv-response"
  "flyt_ms/DevSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DevSrv-response>)))
  "Returns md5sum for a message object of type '<DevSrv-response>"
  "b791c1a4a4f0cee32b54dd1a73706a59")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DevSrv-response)))
  "Returns md5sum for a message object of type 'DevSrv-response"
  "b791c1a4a4f0cee32b54dd1a73706a59")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DevSrv-response>)))
  "Returns full string definition for message of type '<DevSrv-response>"
  (cl:format cl:nil "string resp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DevSrv-response)))
  "Returns full string definition for message of type 'DevSrv-response"
  (cl:format cl:nil "string resp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DevSrv-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'resp))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DevSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DevSrv-response
    (cl:cons ':resp (resp msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DevSrv)))
  'DevSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DevSrv)))
  'DevSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DevSrv)))
  "Returns string type for a service object of type '<DevSrv>"
  "flyt_ms/DevSrv")