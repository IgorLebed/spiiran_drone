; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude AccessRequest-request.msg.html

(cl:defclass <AccessRequest-request> (roslisp-msg-protocol:ros-message)
  ((enable_access
    :reader enable_access
    :initarg :enable_access
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AccessRequest-request (<AccessRequest-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AccessRequest-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AccessRequest-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<AccessRequest-request> is deprecated: use core_api-srv:AccessRequest-request instead.")))

(cl:ensure-generic-function 'enable_access-val :lambda-list '(m))
(cl:defmethod enable_access-val ((m <AccessRequest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:enable_access-val is deprecated.  Use core_api-srv:enable_access instead.")
  (enable_access m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AccessRequest-request>) ostream)
  "Serializes a message object of type '<AccessRequest-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_access) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AccessRequest-request>) istream)
  "Deserializes a message object of type '<AccessRequest-request>"
    (cl:setf (cl:slot-value msg 'enable_access) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AccessRequest-request>)))
  "Returns string type for a service object of type '<AccessRequest-request>"
  "core_api/AccessRequestRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AccessRequest-request)))
  "Returns string type for a service object of type 'AccessRequest-request"
  "core_api/AccessRequestRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AccessRequest-request>)))
  "Returns md5sum for a message object of type '<AccessRequest-request>"
  "33d3fc71797add513e6215262794d4c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AccessRequest-request)))
  "Returns md5sum for a message object of type 'AccessRequest-request"
  "33d3fc71797add513e6215262794d4c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AccessRequest-request>)))
  "Returns full string definition for message of type '<AccessRequest-request>"
  (cl:format cl:nil "~%~%bool enable_access~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AccessRequest-request)))
  "Returns full string definition for message of type 'AccessRequest-request"
  (cl:format cl:nil "~%~%bool enable_access~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AccessRequest-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AccessRequest-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AccessRequest-request
    (cl:cons ':enable_access (enable_access msg))
))
;//! \htmlinclude AccessRequest-response.msg.html

(cl:defclass <AccessRequest-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass AccessRequest-response (<AccessRequest-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AccessRequest-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AccessRequest-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<AccessRequest-response> is deprecated: use core_api-srv:AccessRequest-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AccessRequest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <AccessRequest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AccessRequest-response>) ostream)
  "Serializes a message object of type '<AccessRequest-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AccessRequest-response>) istream)
  "Deserializes a message object of type '<AccessRequest-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AccessRequest-response>)))
  "Returns string type for a service object of type '<AccessRequest-response>"
  "core_api/AccessRequestResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AccessRequest-response)))
  "Returns string type for a service object of type 'AccessRequest-response"
  "core_api/AccessRequestResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AccessRequest-response>)))
  "Returns md5sum for a message object of type '<AccessRequest-response>"
  "33d3fc71797add513e6215262794d4c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AccessRequest-response)))
  "Returns md5sum for a message object of type 'AccessRequest-response"
  "33d3fc71797add513e6215262794d4c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AccessRequest-response>)))
  "Returns full string definition for message of type '<AccessRequest-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AccessRequest-response)))
  "Returns full string definition for message of type 'AccessRequest-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AccessRequest-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AccessRequest-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AccessRequest-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AccessRequest)))
  'AccessRequest-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AccessRequest)))
  'AccessRequest-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AccessRequest)))
  "Returns string type for a service object of type '<AccessRequest>"
  "core_api/AccessRequest")