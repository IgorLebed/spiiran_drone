; Auto-generated. Do not edit!


(cl:in-package vision_apps-srv)


;//! \htmlinclude StartMission-request.msg.html

(cl:defclass <StartMission-request> (roslisp-msg-protocol:ros-message)
  ((holding_time
    :reader holding_time
    :initarg :holding_time
    :type cl:float
    :initform 0.0)
   (holding_distance
    :reader holding_distance
    :initarg :holding_distance
    :type cl:float
    :initform 0.0)
   (from_origin
    :reader from_origin
    :initarg :from_origin
    :type cl:boolean
    :initform cl:nil)
   (async
    :reader async
    :initarg :async
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StartMission-request (<StartMission-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartMission-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartMission-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<StartMission-request> is deprecated: use vision_apps-srv:StartMission-request instead.")))

(cl:ensure-generic-function 'holding_time-val :lambda-list '(m))
(cl:defmethod holding_time-val ((m <StartMission-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:holding_time-val is deprecated.  Use vision_apps-srv:holding_time instead.")
  (holding_time m))

(cl:ensure-generic-function 'holding_distance-val :lambda-list '(m))
(cl:defmethod holding_distance-val ((m <StartMission-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:holding_distance-val is deprecated.  Use vision_apps-srv:holding_distance instead.")
  (holding_distance m))

(cl:ensure-generic-function 'from_origin-val :lambda-list '(m))
(cl:defmethod from_origin-val ((m <StartMission-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:from_origin-val is deprecated.  Use vision_apps-srv:from_origin instead.")
  (from_origin m))

(cl:ensure-generic-function 'async-val :lambda-list '(m))
(cl:defmethod async-val ((m <StartMission-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:async-val is deprecated.  Use vision_apps-srv:async instead.")
  (async m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartMission-request>) ostream)
  "Serializes a message object of type '<StartMission-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'holding_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'holding_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'from_origin) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'async) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartMission-request>) istream)
  "Deserializes a message object of type '<StartMission-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'holding_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'holding_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'from_origin) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'async) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartMission-request>)))
  "Returns string type for a service object of type '<StartMission-request>"
  "vision_apps/StartMissionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartMission-request)))
  "Returns string type for a service object of type 'StartMission-request"
  "vision_apps/StartMissionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartMission-request>)))
  "Returns md5sum for a message object of type '<StartMission-request>"
  "26e070e4fb1ebc4987d4d71d8e0de7e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartMission-request)))
  "Returns md5sum for a message object of type 'StartMission-request"
  "26e070e4fb1ebc4987d4d71d8e0de7e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartMission-request>)))
  "Returns full string definition for message of type '<StartMission-request>"
  (cl:format cl:nil "float32 holding_time~%float32 holding_distance~%bool from_origin~%bool async~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartMission-request)))
  "Returns full string definition for message of type 'StartMission-request"
  (cl:format cl:nil "float32 holding_time~%float32 holding_distance~%bool from_origin~%bool async~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartMission-request>))
  (cl:+ 0
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartMission-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartMission-request
    (cl:cons ':holding_time (holding_time msg))
    (cl:cons ':holding_distance (holding_distance msg))
    (cl:cons ':from_origin (from_origin msg))
    (cl:cons ':async (async msg))
))
;//! \htmlinclude StartMission-response.msg.html

(cl:defclass <StartMission-response> (roslisp-msg-protocol:ros-message)
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
    :initform ""))
)

(cl:defclass StartMission-response (<StartMission-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartMission-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartMission-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<StartMission-response> is deprecated: use vision_apps-srv:StartMission-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <StartMission-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:success-val is deprecated.  Use vision_apps-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <StartMission-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:error_code-val is deprecated.  Use vision_apps-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <StartMission-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:message-val is deprecated.  Use vision_apps-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartMission-response>) ostream)
  "Serializes a message object of type '<StartMission-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartMission-response>) istream)
  "Deserializes a message object of type '<StartMission-response>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartMission-response>)))
  "Returns string type for a service object of type '<StartMission-response>"
  "vision_apps/StartMissionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartMission-response)))
  "Returns string type for a service object of type 'StartMission-response"
  "vision_apps/StartMissionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartMission-response>)))
  "Returns md5sum for a message object of type '<StartMission-response>"
  "26e070e4fb1ebc4987d4d71d8e0de7e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartMission-response)))
  "Returns md5sum for a message object of type 'StartMission-response"
  "26e070e4fb1ebc4987d4d71d8e0de7e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartMission-response>)))
  "Returns full string definition for message of type '<StartMission-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartMission-response)))
  "Returns full string definition for message of type 'StartMission-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartMission-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartMission-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartMission-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartMission)))
  'StartMission-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartMission)))
  'StartMission-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartMission)))
  "Returns string type for a service object of type '<StartMission>"
  "vision_apps/StartMission")