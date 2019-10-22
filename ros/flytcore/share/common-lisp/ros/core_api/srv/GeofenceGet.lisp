; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude GeofenceGet-request.msg.html

(cl:defclass <GeofenceGet-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GeofenceGet-request (<GeofenceGet-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GeofenceGet-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GeofenceGet-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<GeofenceGet-request> is deprecated: use core_api-srv:GeofenceGet-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GeofenceGet-request>) ostream)
  "Serializes a message object of type '<GeofenceGet-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GeofenceGet-request>) istream)
  "Deserializes a message object of type '<GeofenceGet-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GeofenceGet-request>)))
  "Returns string type for a service object of type '<GeofenceGet-request>"
  "core_api/GeofenceGetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GeofenceGet-request)))
  "Returns string type for a service object of type 'GeofenceGet-request"
  "core_api/GeofenceGetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GeofenceGet-request>)))
  "Returns md5sum for a message object of type '<GeofenceGet-request>"
  "a90ed9d96938845509f17e1cccecd160")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GeofenceGet-request)))
  "Returns md5sum for a message object of type 'GeofenceGet-request"
  "a90ed9d96938845509f17e1cccecd160")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GeofenceGet-request>)))
  "Returns full string definition for message of type '<GeofenceGet-request>"
  (cl:format cl:nil "~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GeofenceGet-request)))
  "Returns full string definition for message of type 'GeofenceGet-request"
  (cl:format cl:nil "~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GeofenceGet-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GeofenceGet-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GeofenceGet-request
))
;//! \htmlinclude GeofenceGet-response.msg.html

(cl:defclass <GeofenceGet-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
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

(cl:defclass GeofenceGet-response (<GeofenceGet-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GeofenceGet-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GeofenceGet-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<GeofenceGet-response> is deprecated: use core_api-srv:GeofenceGet-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GeofenceGet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GeofenceGet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <GeofenceGet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:count-val is deprecated.  Use core_api-srv:count instead.")
  (count m))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <GeofenceGet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:lat-val is deprecated.  Use core_api-srv:lat instead.")
  (lat m))

(cl:ensure-generic-function 'lng-val :lambda-list '(m))
(cl:defmethod lng-val ((m <GeofenceGet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:lng-val is deprecated.  Use core_api-srv:lng instead.")
  (lng m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GeofenceGet-response>) ostream)
  "Serializes a message object of type '<GeofenceGet-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GeofenceGet-response>) istream)
  "Deserializes a message object of type '<GeofenceGet-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GeofenceGet-response>)))
  "Returns string type for a service object of type '<GeofenceGet-response>"
  "core_api/GeofenceGetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GeofenceGet-response)))
  "Returns string type for a service object of type 'GeofenceGet-response"
  "core_api/GeofenceGetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GeofenceGet-response>)))
  "Returns md5sum for a message object of type '<GeofenceGet-response>"
  "a90ed9d96938845509f17e1cccecd160")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GeofenceGet-response)))
  "Returns md5sum for a message object of type 'GeofenceGet-response"
  "a90ed9d96938845509f17e1cccecd160")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GeofenceGet-response>)))
  "Returns full string definition for message of type '<GeofenceGet-response>"
  (cl:format cl:nil "bool success~%string message~%uint8 count~%float64[] lat~%float64[] lng~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GeofenceGet-response)))
  "Returns full string definition for message of type 'GeofenceGet-response"
  (cl:format cl:nil "bool success~%string message~%uint8 count~%float64[] lat~%float64[] lng~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GeofenceGet-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lat) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lng) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GeofenceGet-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GeofenceGet-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':count (count msg))
    (cl:cons ':lat (lat msg))
    (cl:cons ':lng (lng msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GeofenceGet)))
  'GeofenceGet-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GeofenceGet)))
  'GeofenceGet-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GeofenceGet)))
  "Returns string type for a service object of type '<GeofenceGet>"
  "core_api/GeofenceGet")