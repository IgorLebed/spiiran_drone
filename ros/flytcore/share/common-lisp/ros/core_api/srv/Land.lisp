; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude Land-request.msg.html

(cl:defclass <Land-request> (roslisp-msg-protocol:ros-message)
  ((async
    :reader async
    :initarg :async
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Land-request (<Land-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Land-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Land-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<Land-request> is deprecated: use core_api-srv:Land-request instead.")))

(cl:ensure-generic-function 'async-val :lambda-list '(m))
(cl:defmethod async-val ((m <Land-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:async-val is deprecated.  Use core_api-srv:async instead.")
  (async m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Land-request>) ostream)
  "Serializes a message object of type '<Land-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'async) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Land-request>) istream)
  "Deserializes a message object of type '<Land-request>"
    (cl:setf (cl:slot-value msg 'async) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Land-request>)))
  "Returns string type for a service object of type '<Land-request>"
  "core_api/LandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Land-request)))
  "Returns string type for a service object of type 'Land-request"
  "core_api/LandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Land-request>)))
  "Returns md5sum for a message object of type '<Land-request>"
  "69de5fed7bf47bdde23383e024152f0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Land-request)))
  "Returns md5sum for a message object of type 'Land-request"
  "69de5fed7bf47bdde23383e024152f0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Land-request>)))
  "Returns full string definition for message of type '<Land-request>"
  (cl:format cl:nil "~%~%~%bool async~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Land-request)))
  "Returns full string definition for message of type 'Land-request"
  (cl:format cl:nil "~%~%~%bool async~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Land-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Land-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Land-request
    (cl:cons ':async (async msg))
))
;//! \htmlinclude Land-response.msg.html

(cl:defclass <Land-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Land-response (<Land-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Land-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Land-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<Land-response> is deprecated: use core_api-srv:Land-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Land-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Land-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Land-response>) ostream)
  "Serializes a message object of type '<Land-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Land-response>) istream)
  "Deserializes a message object of type '<Land-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Land-response>)))
  "Returns string type for a service object of type '<Land-response>"
  "core_api/LandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Land-response)))
  "Returns string type for a service object of type 'Land-response"
  "core_api/LandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Land-response>)))
  "Returns md5sum for a message object of type '<Land-response>"
  "69de5fed7bf47bdde23383e024152f0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Land-response)))
  "Returns md5sum for a message object of type 'Land-response"
  "69de5fed7bf47bdde23383e024152f0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Land-response>)))
  "Returns full string definition for message of type '<Land-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Land-response)))
  "Returns full string definition for message of type 'Land-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Land-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Land-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Land-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Land)))
  'Land-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Land)))
  'Land-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Land)))
  "Returns string type for a service object of type '<Land>"
  "core_api/Land")