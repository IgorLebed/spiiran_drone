; Auto-generated. Do not edit!


(cl:in-package vision_apps-msg)


;//! \htmlinclude precisionlandingResult.msg.html

(cl:defclass <precisionlandingResult> (roslisp-msg-protocol:ros-message)
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

(cl:defclass precisionlandingResult (<precisionlandingResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <precisionlandingResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'precisionlandingResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-msg:<precisionlandingResult> is deprecated: use vision_apps-msg:precisionlandingResult instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <precisionlandingResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-msg:success-val is deprecated.  Use vision_apps-msg:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <precisionlandingResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-msg:error_code-val is deprecated.  Use vision_apps-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <precisionlandingResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-msg:message-val is deprecated.  Use vision_apps-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <precisionlandingResult>) ostream)
  "Serializes a message object of type '<precisionlandingResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <precisionlandingResult>) istream)
  "Deserializes a message object of type '<precisionlandingResult>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<precisionlandingResult>)))
  "Returns string type for a message object of type '<precisionlandingResult>"
  "vision_apps/precisionlandingResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'precisionlandingResult)))
  "Returns string type for a message object of type 'precisionlandingResult"
  "vision_apps/precisionlandingResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<precisionlandingResult>)))
  "Returns md5sum for a message object of type '<precisionlandingResult>"
  "4ad76664b0717ddbf6142456d7398288")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'precisionlandingResult)))
  "Returns md5sum for a message object of type 'precisionlandingResult"
  "4ad76664b0717ddbf6142456d7398288")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<precisionlandingResult>)))
  "Returns full string definition for message of type '<precisionlandingResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'precisionlandingResult)))
  "Returns full string definition for message of type 'precisionlandingResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <precisionlandingResult>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <precisionlandingResult>))
  "Converts a ROS message object to a list"
  (cl:list 'precisionlandingResult
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
