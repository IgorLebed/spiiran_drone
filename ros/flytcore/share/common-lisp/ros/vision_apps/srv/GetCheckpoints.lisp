; Auto-generated. Do not edit!


(cl:in-package vision_apps-srv)


;//! \htmlinclude GetCheckpoints-request.msg.html

(cl:defclass <GetCheckpoints-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetCheckpoints-request (<GetCheckpoints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCheckpoints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCheckpoints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<GetCheckpoints-request> is deprecated: use vision_apps-srv:GetCheckpoints-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCheckpoints-request>) ostream)
  "Serializes a message object of type '<GetCheckpoints-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCheckpoints-request>) istream)
  "Deserializes a message object of type '<GetCheckpoints-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCheckpoints-request>)))
  "Returns string type for a service object of type '<GetCheckpoints-request>"
  "vision_apps/GetCheckpointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCheckpoints-request)))
  "Returns string type for a service object of type 'GetCheckpoints-request"
  "vision_apps/GetCheckpointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCheckpoints-request>)))
  "Returns md5sum for a message object of type '<GetCheckpoints-request>"
  "0716ca053acdca4ffd9f1606f16f3814")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCheckpoints-request)))
  "Returns md5sum for a message object of type 'GetCheckpoints-request"
  "0716ca053acdca4ffd9f1606f16f3814")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCheckpoints-request>)))
  "Returns full string definition for message of type '<GetCheckpoints-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCheckpoints-request)))
  "Returns full string definition for message of type 'GetCheckpoints-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCheckpoints-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCheckpoints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCheckpoints-request
))
;//! \htmlinclude GetCheckpoints-response.msg.html

(cl:defclass <GetCheckpoints-response> (roslisp-msg-protocol:ros-message)
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
    :initform 0)
   (checkpoints
    :reader checkpoints
    :initarg :checkpoints
    :type (cl:vector vision_apps-msg:Checkpoint)
   :initform (cl:make-array 0 :element-type 'vision_apps-msg:Checkpoint :initial-element (cl:make-instance 'vision_apps-msg:Checkpoint))))
)

(cl:defclass GetCheckpoints-response (<GetCheckpoints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCheckpoints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCheckpoints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<GetCheckpoints-response> is deprecated: use vision_apps-srv:GetCheckpoints-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetCheckpoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:success-val is deprecated.  Use vision_apps-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GetCheckpoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:error_code-val is deprecated.  Use vision_apps-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetCheckpoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:message-val is deprecated.  Use vision_apps-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'no_of_checkpoints-val :lambda-list '(m))
(cl:defmethod no_of_checkpoints-val ((m <GetCheckpoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:no_of_checkpoints-val is deprecated.  Use vision_apps-srv:no_of_checkpoints instead.")
  (no_of_checkpoints m))

(cl:ensure-generic-function 'checkpoints-val :lambda-list '(m))
(cl:defmethod checkpoints-val ((m <GetCheckpoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:checkpoints-val is deprecated.  Use vision_apps-srv:checkpoints instead.")
  (checkpoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCheckpoints-response>) ostream)
  "Serializes a message object of type '<GetCheckpoints-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'no_of_checkpoints)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'checkpoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'checkpoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCheckpoints-response>) istream)
  "Deserializes a message object of type '<GetCheckpoints-response>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'checkpoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'checkpoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'vision_apps-msg:Checkpoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCheckpoints-response>)))
  "Returns string type for a service object of type '<GetCheckpoints-response>"
  "vision_apps/GetCheckpointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCheckpoints-response)))
  "Returns string type for a service object of type 'GetCheckpoints-response"
  "vision_apps/GetCheckpointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCheckpoints-response>)))
  "Returns md5sum for a message object of type '<GetCheckpoints-response>"
  "0716ca053acdca4ffd9f1606f16f3814")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCheckpoints-response)))
  "Returns md5sum for a message object of type 'GetCheckpoints-response"
  "0716ca053acdca4ffd9f1606f16f3814")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCheckpoints-response>)))
  "Returns full string definition for message of type '<GetCheckpoints-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%uint8 no_of_checkpoints~%vision_apps/Checkpoint[] checkpoints~%~%~%================================================================================~%MSG: vision_apps/Checkpoint~%uint8 checkpoint_id~%uint8 tag_id~%float32 tag_x~%float32 tag_y~%float32 tag_z~%float32 tag_yaw~%float32 tag_size~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCheckpoints-response)))
  "Returns full string definition for message of type 'GetCheckpoints-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%uint8 no_of_checkpoints~%vision_apps/Checkpoint[] checkpoints~%~%~%================================================================================~%MSG: vision_apps/Checkpoint~%uint8 checkpoint_id~%uint8 tag_id~%float32 tag_x~%float32 tag_y~%float32 tag_z~%float32 tag_yaw~%float32 tag_size~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCheckpoints-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'checkpoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCheckpoints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCheckpoints-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
    (cl:cons ':no_of_checkpoints (no_of_checkpoints msg))
    (cl:cons ':checkpoints (checkpoints msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCheckpoints)))
  'GetCheckpoints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCheckpoints)))
  'GetCheckpoints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCheckpoints)))
  "Returns string type for a service object of type '<GetCheckpoints>"
  "vision_apps/GetCheckpoints")