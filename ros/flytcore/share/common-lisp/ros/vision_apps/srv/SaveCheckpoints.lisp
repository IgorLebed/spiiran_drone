; Auto-generated. Do not edit!


(cl:in-package vision_apps-srv)


;//! \htmlinclude SaveCheckpoints-request.msg.html

(cl:defclass <SaveCheckpoints-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SaveCheckpoints-request (<SaveCheckpoints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveCheckpoints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveCheckpoints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<SaveCheckpoints-request> is deprecated: use vision_apps-srv:SaveCheckpoints-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveCheckpoints-request>) ostream)
  "Serializes a message object of type '<SaveCheckpoints-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveCheckpoints-request>) istream)
  "Deserializes a message object of type '<SaveCheckpoints-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveCheckpoints-request>)))
  "Returns string type for a service object of type '<SaveCheckpoints-request>"
  "vision_apps/SaveCheckpointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveCheckpoints-request)))
  "Returns string type for a service object of type 'SaveCheckpoints-request"
  "vision_apps/SaveCheckpointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveCheckpoints-request>)))
  "Returns md5sum for a message object of type '<SaveCheckpoints-request>"
  "711cb5d50a8f528862a3b1e99d5fe29d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveCheckpoints-request)))
  "Returns md5sum for a message object of type 'SaveCheckpoints-request"
  "711cb5d50a8f528862a3b1e99d5fe29d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveCheckpoints-request>)))
  "Returns full string definition for message of type '<SaveCheckpoints-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveCheckpoints-request)))
  "Returns full string definition for message of type 'SaveCheckpoints-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveCheckpoints-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveCheckpoints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveCheckpoints-request
))
;//! \htmlinclude SaveCheckpoints-response.msg.html

(cl:defclass <SaveCheckpoints-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (no_of_checkpoints
    :reader no_of_checkpoints
    :initarg :no_of_checkpoints
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SaveCheckpoints-response (<SaveCheckpoints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveCheckpoints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveCheckpoints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<SaveCheckpoints-response> is deprecated: use vision_apps-srv:SaveCheckpoints-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SaveCheckpoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:success-val is deprecated.  Use vision_apps-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <SaveCheckpoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:error_code-val is deprecated.  Use vision_apps-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SaveCheckpoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:message-val is deprecated.  Use vision_apps-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'no_of_checkpoints-val :lambda-list '(m))
(cl:defmethod no_of_checkpoints-val ((m <SaveCheckpoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:no_of_checkpoints-val is deprecated.  Use vision_apps-srv:no_of_checkpoints instead.")
  (no_of_checkpoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveCheckpoints-response>) ostream)
  "Serializes a message object of type '<SaveCheckpoints-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'no_of_checkpoints)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveCheckpoints-response>) istream)
  "Deserializes a message object of type '<SaveCheckpoints-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'no_of_checkpoints)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveCheckpoints-response>)))
  "Returns string type for a service object of type '<SaveCheckpoints-response>"
  "vision_apps/SaveCheckpointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveCheckpoints-response)))
  "Returns string type for a service object of type 'SaveCheckpoints-response"
  "vision_apps/SaveCheckpointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveCheckpoints-response>)))
  "Returns md5sum for a message object of type '<SaveCheckpoints-response>"
  "711cb5d50a8f528862a3b1e99d5fe29d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveCheckpoints-response)))
  "Returns md5sum for a message object of type 'SaveCheckpoints-response"
  "711cb5d50a8f528862a3b1e99d5fe29d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveCheckpoints-response>)))
  "Returns full string definition for message of type '<SaveCheckpoints-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%uint8 no_of_checkpoints~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveCheckpoints-response)))
  "Returns full string definition for message of type 'SaveCheckpoints-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%uint8 no_of_checkpoints~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveCheckpoints-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveCheckpoints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveCheckpoints-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
    (cl:cons ':no_of_checkpoints (no_of_checkpoints msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveCheckpoints)))
  'SaveCheckpoints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveCheckpoints)))
  'SaveCheckpoints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveCheckpoints)))
  "Returns string type for a service object of type '<SaveCheckpoints>"
  "vision_apps/SaveCheckpoints")