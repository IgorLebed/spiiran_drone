; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude WaypointSetCurrent-request.msg.html

(cl:defclass <WaypointSetCurrent-request> (roslisp-msg-protocol:ros-message)
  ((wp_seq
    :reader wp_seq
    :initarg :wp_seq
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WaypointSetCurrent-request (<WaypointSetCurrent-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointSetCurrent-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointSetCurrent-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<WaypointSetCurrent-request> is deprecated: use core_api-srv:WaypointSetCurrent-request instead.")))

(cl:ensure-generic-function 'wp_seq-val :lambda-list '(m))
(cl:defmethod wp_seq-val ((m <WaypointSetCurrent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:wp_seq-val is deprecated.  Use core_api-srv:wp_seq instead.")
  (wp_seq m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointSetCurrent-request>) ostream)
  "Serializes a message object of type '<WaypointSetCurrent-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wp_seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wp_seq)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointSetCurrent-request>) istream)
  "Deserializes a message object of type '<WaypointSetCurrent-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wp_seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wp_seq)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointSetCurrent-request>)))
  "Returns string type for a service object of type '<WaypointSetCurrent-request>"
  "core_api/WaypointSetCurrentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointSetCurrent-request)))
  "Returns string type for a service object of type 'WaypointSetCurrent-request"
  "core_api/WaypointSetCurrentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointSetCurrent-request>)))
  "Returns md5sum for a message object of type '<WaypointSetCurrent-request>"
  "655ff49a7862991ba96f0c159eea7e23")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointSetCurrent-request)))
  "Returns md5sum for a message object of type 'WaypointSetCurrent-request"
  "655ff49a7862991ba96f0c159eea7e23")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointSetCurrent-request>)))
  "Returns full string definition for message of type '<WaypointSetCurrent-request>"
  (cl:format cl:nil "~%~%~%~%uint16 wp_seq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointSetCurrent-request)))
  "Returns full string definition for message of type 'WaypointSetCurrent-request"
  (cl:format cl:nil "~%~%~%~%uint16 wp_seq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointSetCurrent-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointSetCurrent-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointSetCurrent-request
    (cl:cons ':wp_seq (wp_seq msg))
))
;//! \htmlinclude WaypointSetCurrent-response.msg.html

(cl:defclass <WaypointSetCurrent-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass WaypointSetCurrent-response (<WaypointSetCurrent-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointSetCurrent-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointSetCurrent-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<WaypointSetCurrent-response> is deprecated: use core_api-srv:WaypointSetCurrent-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <WaypointSetCurrent-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <WaypointSetCurrent-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointSetCurrent-response>) ostream)
  "Serializes a message object of type '<WaypointSetCurrent-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointSetCurrent-response>) istream)
  "Deserializes a message object of type '<WaypointSetCurrent-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointSetCurrent-response>)))
  "Returns string type for a service object of type '<WaypointSetCurrent-response>"
  "core_api/WaypointSetCurrentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointSetCurrent-response)))
  "Returns string type for a service object of type 'WaypointSetCurrent-response"
  "core_api/WaypointSetCurrentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointSetCurrent-response>)))
  "Returns md5sum for a message object of type '<WaypointSetCurrent-response>"
  "655ff49a7862991ba96f0c159eea7e23")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointSetCurrent-response)))
  "Returns md5sum for a message object of type 'WaypointSetCurrent-response"
  "655ff49a7862991ba96f0c159eea7e23")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointSetCurrent-response>)))
  "Returns full string definition for message of type '<WaypointSetCurrent-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointSetCurrent-response)))
  "Returns full string definition for message of type 'WaypointSetCurrent-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointSetCurrent-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointSetCurrent-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointSetCurrent-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WaypointSetCurrent)))
  'WaypointSetCurrent-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WaypointSetCurrent)))
  'WaypointSetCurrent-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointSetCurrent)))
  "Returns string type for a service object of type '<WaypointSetCurrent>"
  "core_api/WaypointSetCurrent")