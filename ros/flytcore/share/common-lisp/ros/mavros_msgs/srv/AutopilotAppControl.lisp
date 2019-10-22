; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude AutopilotAppControl-request.msg.html

(cl:defclass <AutopilotAppControl-request> (roslisp-msg-protocol:ros-message)
  ((app_name
    :reader app_name
    :initarg :app_name
    :type cl:string
    :initform "")
   (arguments
    :reader arguments
    :initarg :arguments
    :type cl:string
    :initform ""))
)

(cl:defclass AutopilotAppControl-request (<AutopilotAppControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutopilotAppControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutopilotAppControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<AutopilotAppControl-request> is deprecated: use mavros_msgs-srv:AutopilotAppControl-request instead.")))

(cl:ensure-generic-function 'app_name-val :lambda-list '(m))
(cl:defmethod app_name-val ((m <AutopilotAppControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:app_name-val is deprecated.  Use mavros_msgs-srv:app_name instead.")
  (app_name m))

(cl:ensure-generic-function 'arguments-val :lambda-list '(m))
(cl:defmethod arguments-val ((m <AutopilotAppControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:arguments-val is deprecated.  Use mavros_msgs-srv:arguments instead.")
  (arguments m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutopilotAppControl-request>) ostream)
  "Serializes a message object of type '<AutopilotAppControl-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'app_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'app_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'arguments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'arguments))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutopilotAppControl-request>) istream)
  "Deserializes a message object of type '<AutopilotAppControl-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'app_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'app_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arguments) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'arguments) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutopilotAppControl-request>)))
  "Returns string type for a service object of type '<AutopilotAppControl-request>"
  "mavros_msgs/AutopilotAppControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutopilotAppControl-request)))
  "Returns string type for a service object of type 'AutopilotAppControl-request"
  "mavros_msgs/AutopilotAppControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutopilotAppControl-request>)))
  "Returns md5sum for a message object of type '<AutopilotAppControl-request>"
  "04950ad0083546b156a464893d073280")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutopilotAppControl-request)))
  "Returns md5sum for a message object of type 'AutopilotAppControl-request"
  "04950ad0083546b156a464893d073280")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutopilotAppControl-request>)))
  "Returns full string definition for message of type '<AutopilotAppControl-request>"
  (cl:format cl:nil "~%~%string app_name~%string arguments~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutopilotAppControl-request)))
  "Returns full string definition for message of type 'AutopilotAppControl-request"
  (cl:format cl:nil "~%~%string app_name~%string arguments~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutopilotAppControl-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'app_name))
     4 (cl:length (cl:slot-value msg 'arguments))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutopilotAppControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AutopilotAppControl-request
    (cl:cons ':app_name (app_name msg))
    (cl:cons ':arguments (arguments msg))
))
;//! \htmlinclude AutopilotAppControl-response.msg.html

(cl:defclass <AutopilotAppControl-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AutopilotAppControl-response (<AutopilotAppControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutopilotAppControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutopilotAppControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<AutopilotAppControl-response> is deprecated: use mavros_msgs-srv:AutopilotAppControl-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AutopilotAppControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutopilotAppControl-response>) ostream)
  "Serializes a message object of type '<AutopilotAppControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutopilotAppControl-response>) istream)
  "Deserializes a message object of type '<AutopilotAppControl-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutopilotAppControl-response>)))
  "Returns string type for a service object of type '<AutopilotAppControl-response>"
  "mavros_msgs/AutopilotAppControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutopilotAppControl-response)))
  "Returns string type for a service object of type 'AutopilotAppControl-response"
  "mavros_msgs/AutopilotAppControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutopilotAppControl-response>)))
  "Returns md5sum for a message object of type '<AutopilotAppControl-response>"
  "04950ad0083546b156a464893d073280")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutopilotAppControl-response)))
  "Returns md5sum for a message object of type 'AutopilotAppControl-response"
  "04950ad0083546b156a464893d073280")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutopilotAppControl-response>)))
  "Returns full string definition for message of type '<AutopilotAppControl-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutopilotAppControl-response)))
  "Returns full string definition for message of type 'AutopilotAppControl-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutopilotAppControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutopilotAppControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AutopilotAppControl-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AutopilotAppControl)))
  'AutopilotAppControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AutopilotAppControl)))
  'AutopilotAppControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutopilotAppControl)))
  "Returns string type for a service object of type '<AutopilotAppControl>"
  "mavros_msgs/AutopilotAppControl")