; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude GeofencePush-request.msg.html

(cl:defclass <GeofencePush-request> (roslisp-msg-protocol:ros-message)
  ((lat
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

(cl:defclass GeofencePush-request (<GeofencePush-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GeofencePush-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GeofencePush-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<GeofencePush-request> is deprecated: use mavros_msgs-srv:GeofencePush-request instead.")))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <GeofencePush-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:lat-val is deprecated.  Use mavros_msgs-srv:lat instead.")
  (lat m))

(cl:ensure-generic-function 'lng-val :lambda-list '(m))
(cl:defmethod lng-val ((m <GeofencePush-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:lng-val is deprecated.  Use mavros_msgs-srv:lng instead.")
  (lng m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GeofencePush-request>) ostream)
  "Serializes a message object of type '<GeofencePush-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GeofencePush-request>) istream)
  "Deserializes a message object of type '<GeofencePush-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GeofencePush-request>)))
  "Returns string type for a service object of type '<GeofencePush-request>"
  "mavros_msgs/GeofencePushRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GeofencePush-request)))
  "Returns string type for a service object of type 'GeofencePush-request"
  "mavros_msgs/GeofencePushRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GeofencePush-request>)))
  "Returns md5sum for a message object of type '<GeofencePush-request>"
  "c3af180efb144ee3fa6be1613192bb21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GeofencePush-request)))
  "Returns md5sum for a message object of type 'GeofencePush-request"
  "c3af180efb144ee3fa6be1613192bb21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GeofencePush-request>)))
  "Returns full string definition for message of type '<GeofencePush-request>"
  (cl:format cl:nil "~%~%~%~%float64[] lat~%float64[] lng~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GeofencePush-request)))
  "Returns full string definition for message of type 'GeofencePush-request"
  (cl:format cl:nil "~%~%~%~%float64[] lat~%float64[] lng~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GeofencePush-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lat) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lng) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GeofencePush-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GeofencePush-request
    (cl:cons ':lat (lat msg))
    (cl:cons ':lng (lng msg))
))
;//! \htmlinclude GeofencePush-response.msg.html

(cl:defclass <GeofencePush-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (count
    :reader count
    :initarg :count
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GeofencePush-response (<GeofencePush-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GeofencePush-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GeofencePush-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<GeofencePush-response> is deprecated: use mavros_msgs-srv:GeofencePush-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GeofencePush-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <GeofencePush-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:count-val is deprecated.  Use mavros_msgs-srv:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GeofencePush-response>) ostream)
  "Serializes a message object of type '<GeofencePush-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GeofencePush-response>) istream)
  "Deserializes a message object of type '<GeofencePush-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GeofencePush-response>)))
  "Returns string type for a service object of type '<GeofencePush-response>"
  "mavros_msgs/GeofencePushResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GeofencePush-response)))
  "Returns string type for a service object of type 'GeofencePush-response"
  "mavros_msgs/GeofencePushResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GeofencePush-response>)))
  "Returns md5sum for a message object of type '<GeofencePush-response>"
  "c3af180efb144ee3fa6be1613192bb21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GeofencePush-response)))
  "Returns md5sum for a message object of type 'GeofencePush-response"
  "c3af180efb144ee3fa6be1613192bb21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GeofencePush-response>)))
  "Returns full string definition for message of type '<GeofencePush-response>"
  (cl:format cl:nil "bool success~%uint8 count~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GeofencePush-response)))
  "Returns full string definition for message of type 'GeofencePush-response"
  (cl:format cl:nil "bool success~%uint8 count~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GeofencePush-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GeofencePush-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GeofencePush-response
    (cl:cons ':success (success msg))
    (cl:cons ':count (count msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GeofencePush)))
  'GeofencePush-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GeofencePush)))
  'GeofencePush-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GeofencePush)))
  "Returns string type for a service object of type '<GeofencePush>"
  "mavros_msgs/GeofencePush")