; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude GeofencePull-request.msg.html

(cl:defclass <GeofencePull-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GeofencePull-request (<GeofencePull-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GeofencePull-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GeofencePull-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<GeofencePull-request> is deprecated: use mavros_msgs-srv:GeofencePull-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GeofencePull-request>) ostream)
  "Serializes a message object of type '<GeofencePull-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GeofencePull-request>) istream)
  "Deserializes a message object of type '<GeofencePull-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GeofencePull-request>)))
  "Returns string type for a service object of type '<GeofencePull-request>"
  "mavros_msgs/GeofencePullRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GeofencePull-request)))
  "Returns string type for a service object of type 'GeofencePull-request"
  "mavros_msgs/GeofencePullRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GeofencePull-request>)))
  "Returns md5sum for a message object of type '<GeofencePull-request>"
  "de057806094fca5534c26aac204ab4b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GeofencePull-request)))
  "Returns md5sum for a message object of type 'GeofencePull-request"
  "de057806094fca5534c26aac204ab4b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GeofencePull-request>)))
  "Returns full string definition for message of type '<GeofencePull-request>"
  (cl:format cl:nil "~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GeofencePull-request)))
  "Returns full string definition for message of type 'GeofencePull-request"
  (cl:format cl:nil "~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GeofencePull-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GeofencePull-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GeofencePull-request
))
;//! \htmlinclude GeofencePull-response.msg.html

(cl:defclass <GeofencePull-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (count
    :reader count
    :initarg :count
    :type cl:fixnum
    :initform 0)
   (lat
    :reader lat
    :initarg :lat
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (lng
    :reader lng
    :initarg :lng
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GeofencePull-response (<GeofencePull-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GeofencePull-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GeofencePull-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<GeofencePull-response> is deprecated: use mavros_msgs-srv:GeofencePull-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GeofencePull-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <GeofencePull-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:count-val is deprecated.  Use mavros_msgs-srv:count instead.")
  (count m))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <GeofencePull-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:lat-val is deprecated.  Use mavros_msgs-srv:lat instead.")
  (lat m))

(cl:ensure-generic-function 'lng-val :lambda-list '(m))
(cl:defmethod lng-val ((m <GeofencePull-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:lng-val is deprecated.  Use mavros_msgs-srv:lng instead.")
  (lng m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GeofencePull-response>) ostream)
  "Serializes a message object of type '<GeofencePull-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'lat))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lng))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'lng))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GeofencePull-response>) istream)
  "Deserializes a message object of type '<GeofencePull-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lat) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lat)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lng) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lng)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GeofencePull-response>)))
  "Returns string type for a service object of type '<GeofencePull-response>"
  "mavros_msgs/GeofencePullResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GeofencePull-response)))
  "Returns string type for a service object of type 'GeofencePull-response"
  "mavros_msgs/GeofencePullResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GeofencePull-response>)))
  "Returns md5sum for a message object of type '<GeofencePull-response>"
  "de057806094fca5534c26aac204ab4b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GeofencePull-response)))
  "Returns md5sum for a message object of type 'GeofencePull-response"
  "de057806094fca5534c26aac204ab4b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GeofencePull-response>)))
  "Returns full string definition for message of type '<GeofencePull-response>"
  (cl:format cl:nil "bool success~%uint8 count~%float64[] lat~%float64[] lng~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GeofencePull-response)))
  "Returns full string definition for message of type 'GeofencePull-response"
  (cl:format cl:nil "bool success~%uint8 count~%float64[] lat~%float64[] lng~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GeofencePull-response>))
  (cl:+ 0
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lat) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lng) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GeofencePull-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GeofencePull-response
    (cl:cons ':success (success msg))
    (cl:cons ':count (count msg))
    (cl:cons ':lat (lat msg))
    (cl:cons ':lng (lng msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GeofencePull)))
  'GeofencePull-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GeofencePull)))
  'GeofencePull-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GeofencePull)))
  "Returns string type for a service object of type '<GeofencePull>"
  "mavros_msgs/GeofencePull")