; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude ModuleCalibration-request.msg.html

(cl:defclass <ModuleCalibration-request> (roslisp-msg-protocol:ros-message)
  ((module_calibrate
    :reader module_calibrate
    :initarg :module_calibrate
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ModuleCalibration-request (<ModuleCalibration-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModuleCalibration-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModuleCalibration-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<ModuleCalibration-request> is deprecated: use core_api-srv:ModuleCalibration-request instead.")))

(cl:ensure-generic-function 'module_calibrate-val :lambda-list '(m))
(cl:defmethod module_calibrate-val ((m <ModuleCalibration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:module_calibrate-val is deprecated.  Use core_api-srv:module_calibrate instead.")
  (module_calibrate m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ModuleCalibration-request>)))
    "Constants for message type '<ModuleCalibration-request>"
  '((:STOP . 0)
    (:ACCELEROMETER . 1)
    (:GYROSCOPE . 2)
    (:MAGNETOMETER . 3)
    (:RC . 4)
    (:RC_TRIM . 5)
    (:RC_STOP . 6)
    (:LEVEL . 7)
    (:AIRSPEED . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ModuleCalibration-request)))
    "Constants for message type 'ModuleCalibration-request"
  '((:STOP . 0)
    (:ACCELEROMETER . 1)
    (:GYROSCOPE . 2)
    (:MAGNETOMETER . 3)
    (:RC . 4)
    (:RC_TRIM . 5)
    (:RC_STOP . 6)
    (:LEVEL . 7)
    (:AIRSPEED . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModuleCalibration-request>) ostream)
  "Serializes a message object of type '<ModuleCalibration-request>"
  (cl:let* ((signed (cl:slot-value msg 'module_calibrate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModuleCalibration-request>) istream)
  "Deserializes a message object of type '<ModuleCalibration-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'module_calibrate) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModuleCalibration-request>)))
  "Returns string type for a service object of type '<ModuleCalibration-request>"
  "core_api/ModuleCalibrationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModuleCalibration-request)))
  "Returns string type for a service object of type 'ModuleCalibration-request"
  "core_api/ModuleCalibrationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModuleCalibration-request>)))
  "Returns md5sum for a message object of type '<ModuleCalibration-request>"
  "9928bcb1099b5b3fb4ae123e92f7d55b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModuleCalibration-request)))
  "Returns md5sum for a message object of type 'ModuleCalibration-request"
  "9928bcb1099b5b3fb4ae123e92f7d55b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModuleCalibration-request>)))
  "Returns full string definition for message of type '<ModuleCalibration-request>"
  (cl:format cl:nil "uint8 STOP = 0~%uint8 ACCELEROMETER = 1~%uint8 GYROSCOPE = 2~%uint8 MAGNETOMETER = 3~%uint8 RC = 4~%uint8 RC_TRIM = 5~%uint8 RC_STOP = 6~%uint8 LEVEL = 7~%uint8 AIRSPEED = 8~%~%int8 module_calibrate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModuleCalibration-request)))
  "Returns full string definition for message of type 'ModuleCalibration-request"
  (cl:format cl:nil "uint8 STOP = 0~%uint8 ACCELEROMETER = 1~%uint8 GYROSCOPE = 2~%uint8 MAGNETOMETER = 3~%uint8 RC = 4~%uint8 RC_TRIM = 5~%uint8 RC_STOP = 6~%uint8 LEVEL = 7~%uint8 AIRSPEED = 8~%~%int8 module_calibrate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModuleCalibration-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModuleCalibration-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ModuleCalibration-request
    (cl:cons ':module_calibrate (module_calibrate msg))
))
;//! \htmlinclude ModuleCalibration-response.msg.html

(cl:defclass <ModuleCalibration-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ModuleCalibration-response (<ModuleCalibration-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModuleCalibration-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModuleCalibration-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<ModuleCalibration-response> is deprecated: use core_api-srv:ModuleCalibration-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ModuleCalibration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ModuleCalibration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModuleCalibration-response>) ostream)
  "Serializes a message object of type '<ModuleCalibration-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModuleCalibration-response>) istream)
  "Deserializes a message object of type '<ModuleCalibration-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModuleCalibration-response>)))
  "Returns string type for a service object of type '<ModuleCalibration-response>"
  "core_api/ModuleCalibrationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModuleCalibration-response)))
  "Returns string type for a service object of type 'ModuleCalibration-response"
  "core_api/ModuleCalibrationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModuleCalibration-response>)))
  "Returns md5sum for a message object of type '<ModuleCalibration-response>"
  "9928bcb1099b5b3fb4ae123e92f7d55b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModuleCalibration-response)))
  "Returns md5sum for a message object of type 'ModuleCalibration-response"
  "9928bcb1099b5b3fb4ae123e92f7d55b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModuleCalibration-response>)))
  "Returns full string definition for message of type '<ModuleCalibration-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModuleCalibration-response)))
  "Returns full string definition for message of type 'ModuleCalibration-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModuleCalibration-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModuleCalibration-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ModuleCalibration-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ModuleCalibration)))
  'ModuleCalibration-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ModuleCalibration)))
  'ModuleCalibration-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModuleCalibration)))
  "Returns string type for a service object of type '<ModuleCalibration>"
  "core_api/ModuleCalibration")