; Auto-generated. Do not edit!


(cl:in-package vision_apps-srv)


;//! \htmlinclude SetCheckpoints-request.msg.html

(cl:defclass <SetCheckpoints-request> (roslisp-msg-protocol:ros-message)
  ((checkpoint_list
    :reader checkpoint_list
    :initarg :checkpoint_list
    :type (cl:vector vision_apps-msg:Checkpoint)
   :initform (cl:make-array 0 :element-type 'vision_apps-msg:Checkpoint :initial-element (cl:make-instance 'vision_apps-msg:Checkpoint)))
   (save
    :reader save
    :initarg :save
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetCheckpoints-request (<SetCheckpoints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCheckpoints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCheckpoints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<SetCheckpoints-request> is deprecated: use vision_apps-srv:SetCheckpoints-request instead.")))

(cl:ensure-generic-function 'checkpoint_list-val :lambda-list '(m))
(cl:defmethod checkpoint_list-val ((m <SetCheckpoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:checkpoint_list-val is deprecated.  Use vision_apps-srv:checkpoint_list instead.")
  (checkpoint_list m))

(cl:ensure-generic-function 'save-val :lambda-list '(m))
(cl:defmethod save-val ((m <SetCheckpoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:save-val is deprecated.  Use vision_apps-srv:save instead.")
  (save m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCheckpoints-request>) ostream)
  "Serializes a message object of type '<SetCheckpoints-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'checkpoint_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'checkpoint_list))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'save) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCheckpoints-request>) istream)
  "Deserializes a message object of type '<SetCheckpoints-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'checkpoint_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'checkpoint_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'vision_apps-msg:Checkpoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'save) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCheckpoints-request>)))
  "Returns string type for a service object of type '<SetCheckpoints-request>"
  "vision_apps/SetCheckpointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCheckpoints-request)))
  "Returns string type for a service object of type 'SetCheckpoints-request"
  "vision_apps/SetCheckpointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCheckpoints-request>)))
  "Returns md5sum for a message object of type '<SetCheckpoints-request>"
  "5b6a36f86958efb1c0227d47b297cadc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCheckpoints-request)))
  "Returns md5sum for a message object of type 'SetCheckpoints-request"
  "5b6a36f86958efb1c0227d47b297cadc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCheckpoints-request>)))
  "Returns full string definition for message of type '<SetCheckpoints-request>"
  (cl:format cl:nil "vision_apps/Checkpoint[] checkpoint_list~%bool save~%~%================================================================================~%MSG: vision_apps/Checkpoint~%uint8 checkpoint_id~%uint8 tag_id~%float32 tag_x~%float32 tag_y~%float32 tag_z~%float32 tag_yaw~%float32 tag_size~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCheckpoints-request)))
  "Returns full string definition for message of type 'SetCheckpoints-request"
  (cl:format cl:nil "vision_apps/Checkpoint[] checkpoint_list~%bool save~%~%================================================================================~%MSG: vision_apps/Checkpoint~%uint8 checkpoint_id~%uint8 tag_id~%float32 tag_x~%float32 tag_y~%float32 tag_z~%float32 tag_yaw~%float32 tag_size~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCheckpoints-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'checkpoint_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCheckpoints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCheckpoints-request
    (cl:cons ':checkpoint_list (checkpoint_list msg))
    (cl:cons ':save (save msg))
))
;//! \htmlinclude SetCheckpoints-response.msg.html

(cl:defclass <SetCheckpoints-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetCheckpoints-response (<SetCheckpoints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCheckpoints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCheckpoints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<SetCheckpoints-response> is deprecated: use vision_apps-srv:SetCheckpoints-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetCheckpoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:success-val is deprecated.  Use vision_apps-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <SetCheckpoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:error_code-val is deprecated.  Use vision_apps-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetCheckpoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:message-val is deprecated.  Use vision_apps-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'no_of_checkpoints-val :lambda-list '(m))
(cl:defmethod no_of_checkpoints-val ((m <SetCheckpoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:no_of_checkpoints-val is deprecated.  Use vision_apps-srv:no_of_checkpoints instead.")
  (no_of_checkpoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCheckpoints-response>) ostream)
  "Serializes a message object of type '<SetCheckpoints-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCheckpoints-response>) istream)
  "Deserializes a message object of type '<SetCheckpoints-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCheckpoints-response>)))
  "Returns string type for a service object of type '<SetCheckpoints-response>"
  "vision_apps/SetCheckpointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCheckpoints-response)))
  "Returns string type for a service object of type 'SetCheckpoints-response"
  "vision_apps/SetCheckpointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCheckpoints-response>)))
  "Returns md5sum for a message object of type '<SetCheckpoints-response>"
  "5b6a36f86958efb1c0227d47b297cadc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCheckpoints-response)))
  "Returns md5sum for a message object of type 'SetCheckpoints-response"
  "5b6a36f86958efb1c0227d47b297cadc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCheckpoints-response>)))
  "Returns full string definition for message of type '<SetCheckpoints-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%uint8 no_of_checkpoints~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCheckpoints-response)))
  "Returns full string definition for message of type 'SetCheckpoints-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%uint8 no_of_checkpoints~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCheckpoints-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCheckpoints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCheckpoints-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
    (cl:cons ':no_of_checkpoints (no_of_checkpoints msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetCheckpoints)))
  'SetCheckpoints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetCheckpoints)))
  'SetCheckpoints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCheckpoints)))
  "Returns string type for a service object of type '<SetCheckpoints>"
  "vision_apps/SetCheckpoints")