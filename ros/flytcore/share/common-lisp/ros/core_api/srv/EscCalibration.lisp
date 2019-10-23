; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude EscCalibration-request.msg.html

(cl:defclass <EscCalibration-request> (roslisp-msg-protocol:ros-message)
  ((pwm_min
    :reader pwm_min
    :initarg :pwm_min
    :type cl:float
    :initform 0.0)
   (pwm_max
    :reader pwm_max
    :initarg :pwm_max
    :type cl:float
    :initform 0.0)
   (num_of_actuators
    :reader num_of_actuators
    :initarg :num_of_actuators
    :type cl:fixnum
    :initform 0)
   (calibration_state
    :reader calibration_state
    :initarg :calibration_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass EscCalibration-request (<EscCalibration-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EscCalibration-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EscCalibration-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<EscCalibration-request> is deprecated: use core_api-srv:EscCalibration-request instead.")))

(cl:ensure-generic-function 'pwm_min-val :lambda-list '(m))
(cl:defmethod pwm_min-val ((m <EscCalibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:pwm_min-val is deprecated.  Use core_api-srv:pwm_min instead.")
  (pwm_min m))

(cl:ensure-generic-function 'pwm_max-val :lambda-list '(m))
(cl:defmethod pwm_max-val ((m <EscCalibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:pwm_max-val is deprecated.  Use core_api-srv:pwm_max instead.")
  (pwm_max m))

(cl:ensure-generic-function 'num_of_actuators-val :lambda-list '(m))
(cl:defmethod num_of_actuators-val ((m <EscCalibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:num_of_actuators-val is deprecated.  Use core_api-srv:num_of_actuators instead.")
  (num_of_actuators m))

(cl:ensure-generic-function 'calibration_state-val :lambda-list '(m))
(cl:defmethod calibration_state-val ((m <EscCalibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:calibration_state-val is deprecated.  Use core_api-srv:calibration_state instead.")
  (calibration_state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EscCalibration-request>)))
    "Constants for message type '<EscCalibration-request>"
  '((:CALIBRATION_STATE_SET_PWM_MAX . 1)
    (:CALIBRATION_STATE_SET_PWM_MIN . 2)
    (:CALIBRATION_STATE_CANCEL . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EscCalibration-request)))
    "Constants for message type 'EscCalibration-request"
  '((:CALIBRATION_STATE_SET_PWM_MAX . 1)
    (:CALIBRATION_STATE_SET_PWM_MIN . 2)
    (:CALIBRATION_STATE_CANCEL . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EscCalibration-request>) ostream)
  "Serializes a message object of type '<EscCalibration-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pwm_min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pwm_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'num_of_actuators)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'calibration_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EscCalibration-request>) istream)
  "Deserializes a message object of type '<EscCalibration-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pwm_min) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pwm_max) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_of_actuators) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'calibration_state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EscCalibration-request>)))
  "Returns string type for a service object of type '<EscCalibration-request>"
  "core_api/EscCalibrationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EscCalibration-request)))
  "Returns string type for a service object of type 'EscCalibration-request"
  "core_api/EscCalibrationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EscCalibration-request>)))
  "Returns md5sum for a message object of type '<EscCalibration-request>"
  "250665cf11b7e061cef652c07d5dc46a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EscCalibration-request)))
  "Returns md5sum for a message object of type 'EscCalibration-request"
  "250665cf11b7e061cef652c07d5dc46a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EscCalibration-request>)))
  "Returns full string definition for message of type '<EscCalibration-request>"
  (cl:format cl:nil "int8 CALIBRATION_STATE_SET_PWM_MAX = 1~%int8 CALIBRATION_STATE_SET_PWM_MIN = 2~%int8 CALIBRATION_STATE_CANCEL = 3~%float32 pwm_min~%float32 pwm_max~%int8 num_of_actuators~%int8 calibration_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EscCalibration-request)))
  "Returns full string definition for message of type 'EscCalibration-request"
  (cl:format cl:nil "int8 CALIBRATION_STATE_SET_PWM_MAX = 1~%int8 CALIBRATION_STATE_SET_PWM_MIN = 2~%int8 CALIBRATION_STATE_CANCEL = 3~%float32 pwm_min~%float32 pwm_max~%int8 num_of_actuators~%int8 calibration_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EscCalibration-request>))
  (cl:+ 0
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EscCalibration-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EscCalibration-request
    (cl:cons ':pwm_min (pwm_min msg))
    (cl:cons ':pwm_max (pwm_max msg))
    (cl:cons ':num_of_actuators (num_of_actuators msg))
    (cl:cons ':calibration_state (calibration_state msg))
))
;//! \htmlinclude EscCalibration-response.msg.html

(cl:defclass <EscCalibration-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass EscCalibration-response (<EscCalibration-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EscCalibration-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EscCalibration-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<EscCalibration-response> is deprecated: use core_api-srv:EscCalibration-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <EscCalibration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <EscCalibration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EscCalibration-response>) ostream)
  "Serializes a message object of type '<EscCalibration-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EscCalibration-response>) istream)
  "Deserializes a message object of type '<EscCalibration-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EscCalibration-response>)))
  "Returns string type for a service object of type '<EscCalibration-response>"
  "core_api/EscCalibrationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EscCalibration-response)))
  "Returns string type for a service object of type 'EscCalibration-response"
  "core_api/EscCalibrationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EscCalibration-response>)))
  "Returns md5sum for a message object of type '<EscCalibration-response>"
  "250665cf11b7e061cef652c07d5dc46a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EscCalibration-response)))
  "Returns md5sum for a message object of type 'EscCalibration-response"
  "250665cf11b7e061cef652c07d5dc46a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EscCalibration-response>)))
  "Returns full string definition for message of type '<EscCalibration-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EscCalibration-response)))
  "Returns full string definition for message of type 'EscCalibration-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EscCalibration-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EscCalibration-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EscCalibration-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EscCalibration)))
  'EscCalibration-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EscCalibration)))
  'EscCalibration-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EscCalibration)))
  "Returns string type for a service object of type '<EscCalibration>"
  "core_api/EscCalibration")