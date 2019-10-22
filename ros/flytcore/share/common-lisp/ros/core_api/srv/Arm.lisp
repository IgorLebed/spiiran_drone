; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude Arm-request.msg.html

(cl:defclass <Arm-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Arm-request (<Arm-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Arm-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Arm-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<Arm-request> is deprecated: use core_api-srv:Arm-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Arm-request>) ostream)
  "Serializes a message object of type '<Arm-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Arm-request>) istream)
  "Deserializes a message object of type '<Arm-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Arm-request>)))
  "Returns string type for a service object of type '<Arm-request>"
  "core_api/ArmRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Arm-request)))
  "Returns string type for a service object of type 'Arm-request"
  "core_api/ArmRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Arm-request>)))
  "Returns md5sum for a message object of type '<Arm-request>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Arm-request)))
  "Returns md5sum for a message object of type 'Arm-request"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Arm-request>)))
  "Returns full string definition for message of type '<Arm-request>"
  (cl:format cl:nil "~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Arm-request)))
  "Returns full string definition for message of type 'Arm-request"
  (cl:format cl:nil "~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Arm-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Arm-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Arm-request
))
;//! \htmlinclude Arm-response.msg.html

(cl:defclass <Arm-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Arm-response (<Arm-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Arm-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Arm-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<Arm-response> is deprecated: use core_api-srv:Arm-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Arm-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Arm-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Arm-response>) ostream)
  "Serializes a message object of type '<Arm-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Arm-response>) istream)
  "Deserializes a message object of type '<Arm-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Arm-response>)))
  "Returns string type for a service object of type '<Arm-response>"
  "core_api/ArmResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Arm-response)))
  "Returns string type for a service object of type 'Arm-response"
  "core_api/ArmResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Arm-response>)))
  "Returns md5sum for a message object of type '<Arm-response>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Arm-response)))
  "Returns md5sum for a message object of type 'Arm-response"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Arm-response>)))
  "Returns full string definition for message of type '<Arm-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Arm-response)))
  "Returns full string definition for message of type 'Arm-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Arm-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Arm-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Arm-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Arm)))
  'Arm-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Arm)))
  'Arm-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Arm)))
  "Returns string type for a service object of type '<Arm>"
  "core_api/Arm")