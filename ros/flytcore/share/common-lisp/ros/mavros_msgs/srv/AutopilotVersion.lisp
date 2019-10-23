; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude AutopilotVersion-request.msg.html

(cl:defclass <AutopilotVersion-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AutopilotVersion-request (<AutopilotVersion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutopilotVersion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutopilotVersion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<AutopilotVersion-request> is deprecated: use mavros_msgs-srv:AutopilotVersion-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutopilotVersion-request>) ostream)
  "Serializes a message object of type '<AutopilotVersion-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutopilotVersion-request>) istream)
  "Deserializes a message object of type '<AutopilotVersion-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutopilotVersion-request>)))
  "Returns string type for a service object of type '<AutopilotVersion-request>"
  "mavros_msgs/AutopilotVersionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutopilotVersion-request)))
  "Returns string type for a service object of type 'AutopilotVersion-request"
  "mavros_msgs/AutopilotVersionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutopilotVersion-request>)))
  "Returns md5sum for a message object of type '<AutopilotVersion-request>"
  "100332dc23a0380d220694dccac63ae2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutopilotVersion-request)))
  "Returns md5sum for a message object of type 'AutopilotVersion-request"
  "100332dc23a0380d220694dccac63ae2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutopilotVersion-request>)))
  "Returns full string definition for message of type '<AutopilotVersion-request>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutopilotVersion-request)))
  "Returns full string definition for message of type 'AutopilotVersion-request"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutopilotVersion-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutopilotVersion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AutopilotVersion-request
))
;//! \htmlinclude AutopilotVersion-response.msg.html

(cl:defclass <AutopilotVersion-response> (roslisp-msg-protocol:ros-message)
  ((version
    :reader version
    :initarg :version
    :type cl:string
    :initform "")
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AutopilotVersion-response (<AutopilotVersion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutopilotVersion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutopilotVersion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<AutopilotVersion-response> is deprecated: use mavros_msgs-srv:AutopilotVersion-response instead.")))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <AutopilotVersion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:version-val is deprecated.  Use mavros_msgs-srv:version instead.")
  (version m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AutopilotVersion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutopilotVersion-response>) ostream)
  "Serializes a message object of type '<AutopilotVersion-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'version))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutopilotVersion-response>) istream)
  "Deserializes a message object of type '<AutopilotVersion-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutopilotVersion-response>)))
  "Returns string type for a service object of type '<AutopilotVersion-response>"
  "mavros_msgs/AutopilotVersionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutopilotVersion-response)))
  "Returns string type for a service object of type 'AutopilotVersion-response"
  "mavros_msgs/AutopilotVersionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutopilotVersion-response>)))
  "Returns md5sum for a message object of type '<AutopilotVersion-response>"
  "100332dc23a0380d220694dccac63ae2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutopilotVersion-response)))
  "Returns md5sum for a message object of type 'AutopilotVersion-response"
  "100332dc23a0380d220694dccac63ae2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutopilotVersion-response>)))
  "Returns full string definition for message of type '<AutopilotVersion-response>"
  (cl:format cl:nil "string version~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutopilotVersion-response)))
  "Returns full string definition for message of type 'AutopilotVersion-response"
  (cl:format cl:nil "string version~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutopilotVersion-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'version))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutopilotVersion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AutopilotVersion-response
    (cl:cons ':version (version msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AutopilotVersion)))
  'AutopilotVersion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AutopilotVersion)))
  'AutopilotVersion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutopilotVersion)))
  "Returns string type for a service object of type '<AutopilotVersion>"
  "mavros_msgs/AutopilotVersion")