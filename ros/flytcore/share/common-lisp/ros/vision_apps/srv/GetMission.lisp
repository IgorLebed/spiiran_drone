; Auto-generated. Do not edit!


(cl:in-package vision_apps-srv)


;//! \htmlinclude GetMission-request.msg.html

(cl:defclass <GetMission-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetMission-request (<GetMission-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMission-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMission-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<GetMission-request> is deprecated: use vision_apps-srv:GetMission-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMission-request>) ostream)
  "Serializes a message object of type '<GetMission-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMission-request>) istream)
  "Deserializes a message object of type '<GetMission-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMission-request>)))
  "Returns string type for a service object of type '<GetMission-request>"
  "vision_apps/GetMissionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMission-request)))
  "Returns string type for a service object of type 'GetMission-request"
  "vision_apps/GetMissionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMission-request>)))
  "Returns md5sum for a message object of type '<GetMission-request>"
  "4c91735d5d503efc35ae27424f54b09b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMission-request)))
  "Returns md5sum for a message object of type 'GetMission-request"
  "4c91735d5d503efc35ae27424f54b09b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMission-request>)))
  "Returns full string definition for message of type '<GetMission-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMission-request)))
  "Returns full string definition for message of type 'GetMission-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMission-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMission-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMission-request
))
;//! \htmlinclude GetMission-response.msg.html

(cl:defclass <GetMission-response> (roslisp-msg-protocol:ros-message)
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
   (no_of_missionpoints
    :reader no_of_missionpoints
    :initarg :no_of_missionpoints
    :type cl:fixnum
    :initform 0)
   (missionpoints
    :reader missionpoints
    :initarg :missionpoints
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass GetMission-response (<GetMission-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMission-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMission-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<GetMission-response> is deprecated: use vision_apps-srv:GetMission-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetMission-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:success-val is deprecated.  Use vision_apps-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GetMission-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:error_code-val is deprecated.  Use vision_apps-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetMission-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:message-val is deprecated.  Use vision_apps-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'no_of_missionpoints-val :lambda-list '(m))
(cl:defmethod no_of_missionpoints-val ((m <GetMission-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:no_of_missionpoints-val is deprecated.  Use vision_apps-srv:no_of_missionpoints instead.")
  (no_of_missionpoints m))

(cl:ensure-generic-function 'missionpoints-val :lambda-list '(m))
(cl:defmethod missionpoints-val ((m <GetMission-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:missionpoints-val is deprecated.  Use vision_apps-srv:missionpoints instead.")
  (missionpoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMission-response>) ostream)
  "Serializes a message object of type '<GetMission-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'no_of_missionpoints)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'missionpoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'missionpoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMission-response>) istream)
  "Deserializes a message object of type '<GetMission-response>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'no_of_missionpoints)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'missionpoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'missionpoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMission-response>)))
  "Returns string type for a service object of type '<GetMission-response>"
  "vision_apps/GetMissionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMission-response)))
  "Returns string type for a service object of type 'GetMission-response"
  "vision_apps/GetMissionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMission-response>)))
  "Returns md5sum for a message object of type '<GetMission-response>"
  "4c91735d5d503efc35ae27424f54b09b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMission-response)))
  "Returns md5sum for a message object of type 'GetMission-response"
  "4c91735d5d503efc35ae27424f54b09b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMission-response>)))
  "Returns full string definition for message of type '<GetMission-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%uint8 no_of_missionpoints~%uint8[] missionpoints~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMission-response)))
  "Returns full string definition for message of type 'GetMission-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%uint8 no_of_missionpoints~%uint8[] missionpoints~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMission-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'missionpoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMission-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMission-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
    (cl:cons ':no_of_missionpoints (no_of_missionpoints msg))
    (cl:cons ':missionpoints (missionpoints msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetMission)))
  'GetMission-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetMission)))
  'GetMission-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMission)))
  "Returns string type for a service object of type '<GetMission>"
  "vision_apps/GetMission")