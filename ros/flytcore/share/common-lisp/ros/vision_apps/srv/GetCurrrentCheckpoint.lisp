; Auto-generated. Do not edit!


(cl:in-package vision_apps-srv)


;//! \htmlinclude GetCurrrentCheckpoint-request.msg.html

(cl:defclass <GetCurrrentCheckpoint-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetCurrrentCheckpoint-request (<GetCurrrentCheckpoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCurrrentCheckpoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCurrrentCheckpoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<GetCurrrentCheckpoint-request> is deprecated: use vision_apps-srv:GetCurrrentCheckpoint-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCurrrentCheckpoint-request>) ostream)
  "Serializes a message object of type '<GetCurrrentCheckpoint-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCurrrentCheckpoint-request>) istream)
  "Deserializes a message object of type '<GetCurrrentCheckpoint-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCurrrentCheckpoint-request>)))
  "Returns string type for a service object of type '<GetCurrrentCheckpoint-request>"
  "vision_apps/GetCurrrentCheckpointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrrentCheckpoint-request)))
  "Returns string type for a service object of type 'GetCurrrentCheckpoint-request"
  "vision_apps/GetCurrrentCheckpointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCurrrentCheckpoint-request>)))
  "Returns md5sum for a message object of type '<GetCurrrentCheckpoint-request>"
  "7cc3faa051aab17ce96e020c0c4d1fb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCurrrentCheckpoint-request)))
  "Returns md5sum for a message object of type 'GetCurrrentCheckpoint-request"
  "7cc3faa051aab17ce96e020c0c4d1fb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCurrrentCheckpoint-request>)))
  "Returns full string definition for message of type '<GetCurrrentCheckpoint-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCurrrentCheckpoint-request)))
  "Returns full string definition for message of type 'GetCurrrentCheckpoint-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCurrrentCheckpoint-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCurrrentCheckpoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCurrrentCheckpoint-request
))
;//! \htmlinclude GetCurrrentCheckpoint-response.msg.html

(cl:defclass <GetCurrrentCheckpoint-response> (roslisp-msg-protocol:ros-message)
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
   (checkpoint_id
    :reader checkpoint_id
    :initarg :checkpoint_id
    :type cl:fixnum
    :initform 0)
   (missionpoint_number
    :reader missionpoint_number
    :initarg :missionpoint_number
    :type cl:fixnum
    :initform 0)
   (tag_id
    :reader tag_id
    :initarg :tag_id
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass GetCurrrentCheckpoint-response (<GetCurrrentCheckpoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCurrrentCheckpoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCurrrentCheckpoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<GetCurrrentCheckpoint-response> is deprecated: use vision_apps-srv:GetCurrrentCheckpoint-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetCurrrentCheckpoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:success-val is deprecated.  Use vision_apps-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GetCurrrentCheckpoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:error_code-val is deprecated.  Use vision_apps-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'checkpoint_id-val :lambda-list '(m))
(cl:defmethod checkpoint_id-val ((m <GetCurrrentCheckpoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:checkpoint_id-val is deprecated.  Use vision_apps-srv:checkpoint_id instead.")
  (checkpoint_id m))

(cl:ensure-generic-function 'missionpoint_number-val :lambda-list '(m))
(cl:defmethod missionpoint_number-val ((m <GetCurrrentCheckpoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:missionpoint_number-val is deprecated.  Use vision_apps-srv:missionpoint_number instead.")
  (missionpoint_number m))

(cl:ensure-generic-function 'tag_id-val :lambda-list '(m))
(cl:defmethod tag_id-val ((m <GetCurrrentCheckpoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:tag_id-val is deprecated.  Use vision_apps-srv:tag_id instead.")
  (tag_id m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetCurrrentCheckpoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:message-val is deprecated.  Use vision_apps-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCurrrentCheckpoint-response>) ostream)
  "Serializes a message object of type '<GetCurrrentCheckpoint-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checkpoint_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'missionpoint_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tag_id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCurrrentCheckpoint-response>) istream)
  "Deserializes a message object of type '<GetCurrrentCheckpoint-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checkpoint_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'missionpoint_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tag_id)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCurrrentCheckpoint-response>)))
  "Returns string type for a service object of type '<GetCurrrentCheckpoint-response>"
  "vision_apps/GetCurrrentCheckpointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrrentCheckpoint-response)))
  "Returns string type for a service object of type 'GetCurrrentCheckpoint-response"
  "vision_apps/GetCurrrentCheckpointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCurrrentCheckpoint-response>)))
  "Returns md5sum for a message object of type '<GetCurrrentCheckpoint-response>"
  "7cc3faa051aab17ce96e020c0c4d1fb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCurrrentCheckpoint-response)))
  "Returns md5sum for a message object of type 'GetCurrrentCheckpoint-response"
  "7cc3faa051aab17ce96e020c0c4d1fb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCurrrentCheckpoint-response>)))
  "Returns full string definition for message of type '<GetCurrrentCheckpoint-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%uint8 checkpoint_id~%uint8 missionpoint_number~%uint8 tag_id~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCurrrentCheckpoint-response)))
  "Returns full string definition for message of type 'GetCurrrentCheckpoint-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%uint8 checkpoint_id~%uint8 missionpoint_number~%uint8 tag_id~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCurrrentCheckpoint-response>))
  (cl:+ 0
     1
     1
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCurrrentCheckpoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCurrrentCheckpoint-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':checkpoint_id (checkpoint_id msg))
    (cl:cons ':missionpoint_number (missionpoint_number msg))
    (cl:cons ':tag_id (tag_id msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCurrrentCheckpoint)))
  'GetCurrrentCheckpoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCurrrentCheckpoint)))
  'GetCurrrentCheckpoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrrentCheckpoint)))
  "Returns string type for a service object of type '<GetCurrrentCheckpoint>"
  "vision_apps/GetCurrrentCheckpoint")