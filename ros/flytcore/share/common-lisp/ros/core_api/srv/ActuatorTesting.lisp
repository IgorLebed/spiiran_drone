; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude ActuatorTesting-request.msg.html

(cl:defclass <ActuatorTesting-request> (roslisp-msg-protocol:ros-message)
  ((actuator_id
    :reader actuator_id
    :initarg :actuator_id
    :type cl:fixnum
    :initform 0)
   (time_s
    :reader time_s
    :initarg :time_s
    :type cl:float
    :initform 0.0))
)

(cl:defclass ActuatorTesting-request (<ActuatorTesting-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActuatorTesting-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActuatorTesting-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<ActuatorTesting-request> is deprecated: use core_api-srv:ActuatorTesting-request instead.")))

(cl:ensure-generic-function 'actuator_id-val :lambda-list '(m))
(cl:defmethod actuator_id-val ((m <ActuatorTesting-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:actuator_id-val is deprecated.  Use core_api-srv:actuator_id instead.")
  (actuator_id m))

(cl:ensure-generic-function 'time_s-val :lambda-list '(m))
(cl:defmethod time_s-val ((m <ActuatorTesting-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:time_s-val is deprecated.  Use core_api-srv:time_s instead.")
  (time_s m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActuatorTesting-request>) ostream)
  "Serializes a message object of type '<ActuatorTesting-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'actuator_id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActuatorTesting-request>) istream)
  "Deserializes a message object of type '<ActuatorTesting-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'actuator_id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_s) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActuatorTesting-request>)))
  "Returns string type for a service object of type '<ActuatorTesting-request>"
  "core_api/ActuatorTestingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActuatorTesting-request)))
  "Returns string type for a service object of type 'ActuatorTesting-request"
  "core_api/ActuatorTestingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActuatorTesting-request>)))
  "Returns md5sum for a message object of type '<ActuatorTesting-request>"
  "b11d01d67fd996b3e6a87d0afb45636c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActuatorTesting-request)))
  "Returns md5sum for a message object of type 'ActuatorTesting-request"
  "b11d01d67fd996b3e6a87d0afb45636c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActuatorTesting-request>)))
  "Returns full string definition for message of type '<ActuatorTesting-request>"
  (cl:format cl:nil "uint8 actuator_id~%float32 time_s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActuatorTesting-request)))
  "Returns full string definition for message of type 'ActuatorTesting-request"
  (cl:format cl:nil "uint8 actuator_id~%float32 time_s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActuatorTesting-request>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActuatorTesting-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ActuatorTesting-request
    (cl:cons ':actuator_id (actuator_id msg))
    (cl:cons ':time_s (time_s msg))
))
;//! \htmlinclude ActuatorTesting-response.msg.html

(cl:defclass <ActuatorTesting-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ActuatorTesting-response (<ActuatorTesting-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActuatorTesting-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActuatorTesting-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<ActuatorTesting-response> is deprecated: use core_api-srv:ActuatorTesting-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ActuatorTesting-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ActuatorTesting-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActuatorTesting-response>) ostream)
  "Serializes a message object of type '<ActuatorTesting-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActuatorTesting-response>) istream)
  "Deserializes a message object of type '<ActuatorTesting-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActuatorTesting-response>)))
  "Returns string type for a service object of type '<ActuatorTesting-response>"
  "core_api/ActuatorTestingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActuatorTesting-response)))
  "Returns string type for a service object of type 'ActuatorTesting-response"
  "core_api/ActuatorTestingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActuatorTesting-response>)))
  "Returns md5sum for a message object of type '<ActuatorTesting-response>"
  "b11d01d67fd996b3e6a87d0afb45636c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActuatorTesting-response)))
  "Returns md5sum for a message object of type 'ActuatorTesting-response"
  "b11d01d67fd996b3e6a87d0afb45636c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActuatorTesting-response>)))
  "Returns full string definition for message of type '<ActuatorTesting-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActuatorTesting-response)))
  "Returns full string definition for message of type 'ActuatorTesting-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActuatorTesting-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActuatorTesting-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ActuatorTesting-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ActuatorTesting)))
  'ActuatorTesting-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ActuatorTesting)))
  'ActuatorTesting-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActuatorTesting)))
  "Returns string type for a service object of type '<ActuatorTesting>"
  "core_api/ActuatorTesting")