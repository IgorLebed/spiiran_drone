; Auto-generated. Do not edit!


(cl:in-package maxbotix-srv)


;//! \htmlinclude ChangeAddress-request.msg.html

(cl:defclass <ChangeAddress-request> (roslisp-msg-protocol:ros-message)
  ((target_sensor_id
    :reader target_sensor_id
    :initarg :target_sensor_id
    :type cl:string
    :initform "")
   (source_sensor_addr
    :reader source_sensor_addr
    :initarg :source_sensor_addr
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ChangeAddress-request (<ChangeAddress-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeAddress-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeAddress-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name maxbotix-srv:<ChangeAddress-request> is deprecated: use maxbotix-srv:ChangeAddress-request instead.")))

(cl:ensure-generic-function 'target_sensor_id-val :lambda-list '(m))
(cl:defmethod target_sensor_id-val ((m <ChangeAddress-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader maxbotix-srv:target_sensor_id-val is deprecated.  Use maxbotix-srv:target_sensor_id instead.")
  (target_sensor_id m))

(cl:ensure-generic-function 'source_sensor_addr-val :lambda-list '(m))
(cl:defmethod source_sensor_addr-val ((m <ChangeAddress-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader maxbotix-srv:source_sensor_addr-val is deprecated.  Use maxbotix-srv:source_sensor_addr instead.")
  (source_sensor_addr m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeAddress-request>) ostream)
  "Serializes a message object of type '<ChangeAddress-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_sensor_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_sensor_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source_sensor_addr)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeAddress-request>) istream)
  "Deserializes a message object of type '<ChangeAddress-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_sensor_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_sensor_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source_sensor_addr)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeAddress-request>)))
  "Returns string type for a service object of type '<ChangeAddress-request>"
  "maxbotix/ChangeAddressRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeAddress-request)))
  "Returns string type for a service object of type 'ChangeAddress-request"
  "maxbotix/ChangeAddressRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeAddress-request>)))
  "Returns md5sum for a message object of type '<ChangeAddress-request>"
  "679a57e3b3b49facc4662b8ff5dd2743")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeAddress-request)))
  "Returns md5sum for a message object of type 'ChangeAddress-request"
  "679a57e3b3b49facc4662b8ff5dd2743")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeAddress-request>)))
  "Returns full string definition for message of type '<ChangeAddress-request>"
  (cl:format cl:nil "~%~%~%~%string target_sensor_id~%uint8 source_sensor_addr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeAddress-request)))
  "Returns full string definition for message of type 'ChangeAddress-request"
  (cl:format cl:nil "~%~%~%~%string target_sensor_id~%uint8 source_sensor_addr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeAddress-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'target_sensor_id))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeAddress-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeAddress-request
    (cl:cons ':target_sensor_id (target_sensor_id msg))
    (cl:cons ':source_sensor_addr (source_sensor_addr msg))
))
;//! \htmlinclude ChangeAddress-response.msg.html

(cl:defclass <ChangeAddress-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (range
    :reader range
    :initarg :range
    :type cl:float
    :initform 0.0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass ChangeAddress-response (<ChangeAddress-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeAddress-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeAddress-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name maxbotix-srv:<ChangeAddress-response> is deprecated: use maxbotix-srv:ChangeAddress-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ChangeAddress-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader maxbotix-srv:success-val is deprecated.  Use maxbotix-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'range-val :lambda-list '(m))
(cl:defmethod range-val ((m <ChangeAddress-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader maxbotix-srv:range-val is deprecated.  Use maxbotix-srv:range instead.")
  (range m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ChangeAddress-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader maxbotix-srv:message-val is deprecated.  Use maxbotix-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeAddress-response>) ostream)
  "Serializes a message object of type '<ChangeAddress-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeAddress-response>) istream)
  "Deserializes a message object of type '<ChangeAddress-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'range) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeAddress-response>)))
  "Returns string type for a service object of type '<ChangeAddress-response>"
  "maxbotix/ChangeAddressResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeAddress-response)))
  "Returns string type for a service object of type 'ChangeAddress-response"
  "maxbotix/ChangeAddressResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeAddress-response>)))
  "Returns md5sum for a message object of type '<ChangeAddress-response>"
  "679a57e3b3b49facc4662b8ff5dd2743")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeAddress-response)))
  "Returns md5sum for a message object of type 'ChangeAddress-response"
  "679a57e3b3b49facc4662b8ff5dd2743")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeAddress-response>)))
  "Returns full string definition for message of type '<ChangeAddress-response>"
  (cl:format cl:nil "bool success~%float32 range~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeAddress-response)))
  "Returns full string definition for message of type 'ChangeAddress-response"
  (cl:format cl:nil "bool success~%float32 range~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeAddress-response>))
  (cl:+ 0
     1
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeAddress-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeAddress-response
    (cl:cons ':success (success msg))
    (cl:cons ':range (range msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeAddress)))
  'ChangeAddress-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeAddress)))
  'ChangeAddress-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeAddress)))
  "Returns string type for a service object of type '<ChangeAddress>"
  "maxbotix/ChangeAddress")