; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude PositionHold-request.msg.html

(cl:defclass <PositionHold-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PositionHold-request (<PositionHold-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionHold-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionHold-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<PositionHold-request> is deprecated: use core_api-srv:PositionHold-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionHold-request>) ostream)
  "Serializes a message object of type '<PositionHold-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionHold-request>) istream)
  "Deserializes a message object of type '<PositionHold-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionHold-request>)))
  "Returns string type for a service object of type '<PositionHold-request>"
  "core_api/PositionHoldRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionHold-request)))
  "Returns string type for a service object of type 'PositionHold-request"
  "core_api/PositionHoldRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionHold-request>)))
  "Returns md5sum for a message object of type '<PositionHold-request>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionHold-request)))
  "Returns md5sum for a message object of type 'PositionHold-request"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionHold-request>)))
  "Returns full string definition for message of type '<PositionHold-request>"
  (cl:format cl:nil "~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionHold-request)))
  "Returns full string definition for message of type 'PositionHold-request"
  (cl:format cl:nil "~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionHold-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionHold-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionHold-request
))
;//! \htmlinclude PositionHold-response.msg.html

(cl:defclass <PositionHold-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass PositionHold-response (<PositionHold-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionHold-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionHold-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<PositionHold-response> is deprecated: use core_api-srv:PositionHold-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PositionHold-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <PositionHold-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionHold-response>) ostream)
  "Serializes a message object of type '<PositionHold-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionHold-response>) istream)
  "Deserializes a message object of type '<PositionHold-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionHold-response>)))
  "Returns string type for a service object of type '<PositionHold-response>"
  "core_api/PositionHoldResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionHold-response)))
  "Returns string type for a service object of type 'PositionHold-response"
  "core_api/PositionHoldResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionHold-response>)))
  "Returns md5sum for a message object of type '<PositionHold-response>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionHold-response)))
  "Returns md5sum for a message object of type 'PositionHold-response"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionHold-response>)))
  "Returns full string definition for message of type '<PositionHold-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionHold-response)))
  "Returns full string definition for message of type 'PositionHold-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionHold-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionHold-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionHold-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PositionHold)))
  'PositionHold-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PositionHold)))
  'PositionHold-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionHold)))
  "Returns string type for a service object of type '<PositionHold>"
  "core_api/PositionHold")