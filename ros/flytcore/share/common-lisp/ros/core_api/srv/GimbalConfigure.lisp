; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude GimbalConfigure-request.msg.html

(cl:defclass <GimbalConfigure-request> (roslisp-msg-protocol:ros-message)
  ((do_roll_compensation
    :reader do_roll_compensation
    :initarg :do_roll_compensation
    :type cl:boolean
    :initform cl:nil)
   (do_pitch_compensation
    :reader do_pitch_compensation
    :initarg :do_pitch_compensation
    :type cl:boolean
    :initform cl:nil)
   (do_yaw_compensation
    :reader do_yaw_compensation
    :initarg :do_yaw_compensation
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GimbalConfigure-request (<GimbalConfigure-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GimbalConfigure-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GimbalConfigure-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<GimbalConfigure-request> is deprecated: use core_api-srv:GimbalConfigure-request instead.")))

(cl:ensure-generic-function 'do_roll_compensation-val :lambda-list '(m))
(cl:defmethod do_roll_compensation-val ((m <GimbalConfigure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:do_roll_compensation-val is deprecated.  Use core_api-srv:do_roll_compensation instead.")
  (do_roll_compensation m))

(cl:ensure-generic-function 'do_pitch_compensation-val :lambda-list '(m))
(cl:defmethod do_pitch_compensation-val ((m <GimbalConfigure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:do_pitch_compensation-val is deprecated.  Use core_api-srv:do_pitch_compensation instead.")
  (do_pitch_compensation m))

(cl:ensure-generic-function 'do_yaw_compensation-val :lambda-list '(m))
(cl:defmethod do_yaw_compensation-val ((m <GimbalConfigure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:do_yaw_compensation-val is deprecated.  Use core_api-srv:do_yaw_compensation instead.")
  (do_yaw_compensation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GimbalConfigure-request>) ostream)
  "Serializes a message object of type '<GimbalConfigure-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'do_roll_compensation) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'do_pitch_compensation) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'do_yaw_compensation) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GimbalConfigure-request>) istream)
  "Deserializes a message object of type '<GimbalConfigure-request>"
    (cl:setf (cl:slot-value msg 'do_roll_compensation) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'do_pitch_compensation) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'do_yaw_compensation) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GimbalConfigure-request>)))
  "Returns string type for a service object of type '<GimbalConfigure-request>"
  "core_api/GimbalConfigureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GimbalConfigure-request)))
  "Returns string type for a service object of type 'GimbalConfigure-request"
  "core_api/GimbalConfigureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GimbalConfigure-request>)))
  "Returns md5sum for a message object of type '<GimbalConfigure-request>"
  "140f04545dd4676e72d880d299a0bd19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GimbalConfigure-request)))
  "Returns md5sum for a message object of type 'GimbalConfigure-request"
  "140f04545dd4676e72d880d299a0bd19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GimbalConfigure-request>)))
  "Returns full string definition for message of type '<GimbalConfigure-request>"
  (cl:format cl:nil "~%~%~%bool do_roll_compensation~%bool do_pitch_compensation~%bool do_yaw_compensation~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GimbalConfigure-request)))
  "Returns full string definition for message of type 'GimbalConfigure-request"
  (cl:format cl:nil "~%~%~%bool do_roll_compensation~%bool do_pitch_compensation~%bool do_yaw_compensation~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GimbalConfigure-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GimbalConfigure-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GimbalConfigure-request
    (cl:cons ':do_roll_compensation (do_roll_compensation msg))
    (cl:cons ':do_pitch_compensation (do_pitch_compensation msg))
    (cl:cons ':do_yaw_compensation (do_yaw_compensation msg))
))
;//! \htmlinclude GimbalConfigure-response.msg.html

(cl:defclass <GimbalConfigure-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass GimbalConfigure-response (<GimbalConfigure-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GimbalConfigure-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GimbalConfigure-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<GimbalConfigure-response> is deprecated: use core_api-srv:GimbalConfigure-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GimbalConfigure-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GimbalConfigure-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GimbalConfigure-response>) ostream)
  "Serializes a message object of type '<GimbalConfigure-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GimbalConfigure-response>) istream)
  "Deserializes a message object of type '<GimbalConfigure-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GimbalConfigure-response>)))
  "Returns string type for a service object of type '<GimbalConfigure-response>"
  "core_api/GimbalConfigureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GimbalConfigure-response)))
  "Returns string type for a service object of type 'GimbalConfigure-response"
  "core_api/GimbalConfigureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GimbalConfigure-response>)))
  "Returns md5sum for a message object of type '<GimbalConfigure-response>"
  "140f04545dd4676e72d880d299a0bd19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GimbalConfigure-response)))
  "Returns md5sum for a message object of type 'GimbalConfigure-response"
  "140f04545dd4676e72d880d299a0bd19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GimbalConfigure-response>)))
  "Returns full string definition for message of type '<GimbalConfigure-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GimbalConfigure-response)))
  "Returns full string definition for message of type 'GimbalConfigure-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GimbalConfigure-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GimbalConfigure-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GimbalConfigure-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GimbalConfigure)))
  'GimbalConfigure-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GimbalConfigure)))
  'GimbalConfigure-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GimbalConfigure)))
  "Returns string type for a service object of type '<GimbalConfigure>"
  "core_api/GimbalConfigure")