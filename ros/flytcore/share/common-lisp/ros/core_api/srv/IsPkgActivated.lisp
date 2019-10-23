; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude IsPkgActivated-request.msg.html

(cl:defclass <IsPkgActivated-request> (roslisp-msg-protocol:ros-message)
  ((pkg_name
    :reader pkg_name
    :initarg :pkg_name
    :type cl:string
    :initform ""))
)

(cl:defclass IsPkgActivated-request (<IsPkgActivated-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IsPkgActivated-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IsPkgActivated-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<IsPkgActivated-request> is deprecated: use core_api-srv:IsPkgActivated-request instead.")))

(cl:ensure-generic-function 'pkg_name-val :lambda-list '(m))
(cl:defmethod pkg_name-val ((m <IsPkgActivated-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:pkg_name-val is deprecated.  Use core_api-srv:pkg_name instead.")
  (pkg_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IsPkgActivated-request>) ostream)
  "Serializes a message object of type '<IsPkgActivated-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pkg_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pkg_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IsPkgActivated-request>) istream)
  "Deserializes a message object of type '<IsPkgActivated-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pkg_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pkg_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IsPkgActivated-request>)))
  "Returns string type for a service object of type '<IsPkgActivated-request>"
  "core_api/IsPkgActivatedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsPkgActivated-request)))
  "Returns string type for a service object of type 'IsPkgActivated-request"
  "core_api/IsPkgActivatedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IsPkgActivated-request>)))
  "Returns md5sum for a message object of type '<IsPkgActivated-request>"
  "840df30bd3d88303e2027160e9982454")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IsPkgActivated-request)))
  "Returns md5sum for a message object of type 'IsPkgActivated-request"
  "840df30bd3d88303e2027160e9982454")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IsPkgActivated-request>)))
  "Returns full string definition for message of type '<IsPkgActivated-request>"
  (cl:format cl:nil "string pkg_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IsPkgActivated-request)))
  "Returns full string definition for message of type 'IsPkgActivated-request"
  (cl:format cl:nil "string pkg_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IsPkgActivated-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'pkg_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IsPkgActivated-request>))
  "Converts a ROS message object to a list"
  (cl:list 'IsPkgActivated-request
    (cl:cons ':pkg_name (pkg_name msg))
))
;//! \htmlinclude IsPkgActivated-response.msg.html

(cl:defclass <IsPkgActivated-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (activated
    :reader activated
    :initarg :activated
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass IsPkgActivated-response (<IsPkgActivated-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IsPkgActivated-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IsPkgActivated-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<IsPkgActivated-response> is deprecated: use core_api-srv:IsPkgActivated-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <IsPkgActivated-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'activated-val :lambda-list '(m))
(cl:defmethod activated-val ((m <IsPkgActivated-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:activated-val is deprecated.  Use core_api-srv:activated instead.")
  (activated m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <IsPkgActivated-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IsPkgActivated-response>) ostream)
  "Serializes a message object of type '<IsPkgActivated-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'activated) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IsPkgActivated-response>) istream)
  "Deserializes a message object of type '<IsPkgActivated-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'activated) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IsPkgActivated-response>)))
  "Returns string type for a service object of type '<IsPkgActivated-response>"
  "core_api/IsPkgActivatedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsPkgActivated-response)))
  "Returns string type for a service object of type 'IsPkgActivated-response"
  "core_api/IsPkgActivatedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IsPkgActivated-response>)))
  "Returns md5sum for a message object of type '<IsPkgActivated-response>"
  "840df30bd3d88303e2027160e9982454")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IsPkgActivated-response)))
  "Returns md5sum for a message object of type 'IsPkgActivated-response"
  "840df30bd3d88303e2027160e9982454")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IsPkgActivated-response>)))
  "Returns full string definition for message of type '<IsPkgActivated-response>"
  (cl:format cl:nil "bool success~%bool activated~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IsPkgActivated-response)))
  "Returns full string definition for message of type 'IsPkgActivated-response"
  (cl:format cl:nil "bool success~%bool activated~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IsPkgActivated-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IsPkgActivated-response>))
  "Converts a ROS message object to a list"
  (cl:list 'IsPkgActivated-response
    (cl:cons ':success (success msg))
    (cl:cons ':activated (activated msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'IsPkgActivated)))
  'IsPkgActivated-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'IsPkgActivated)))
  'IsPkgActivated-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsPkgActivated)))
  "Returns string type for a service object of type '<IsPkgActivated>"
  "core_api/IsPkgActivated")