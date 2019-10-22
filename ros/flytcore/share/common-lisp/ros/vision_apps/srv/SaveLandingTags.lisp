; Auto-generated. Do not edit!


(cl:in-package vision_apps-srv)


;//! \htmlinclude SaveLandingTags-request.msg.html

(cl:defclass <SaveLandingTags-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SaveLandingTags-request (<SaveLandingTags-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveLandingTags-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveLandingTags-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<SaveLandingTags-request> is deprecated: use vision_apps-srv:SaveLandingTags-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveLandingTags-request>) ostream)
  "Serializes a message object of type '<SaveLandingTags-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveLandingTags-request>) istream)
  "Deserializes a message object of type '<SaveLandingTags-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveLandingTags-request>)))
  "Returns string type for a service object of type '<SaveLandingTags-request>"
  "vision_apps/SaveLandingTagsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveLandingTags-request)))
  "Returns string type for a service object of type 'SaveLandingTags-request"
  "vision_apps/SaveLandingTagsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveLandingTags-request>)))
  "Returns md5sum for a message object of type '<SaveLandingTags-request>"
  "1baebd8f9e081c78d7a8cd9ff7afcfe2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveLandingTags-request)))
  "Returns md5sum for a message object of type 'SaveLandingTags-request"
  "1baebd8f9e081c78d7a8cd9ff7afcfe2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveLandingTags-request>)))
  "Returns full string definition for message of type '<SaveLandingTags-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveLandingTags-request)))
  "Returns full string definition for message of type 'SaveLandingTags-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveLandingTags-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveLandingTags-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveLandingTags-request
))
;//! \htmlinclude SaveLandingTags-response.msg.html

(cl:defclass <SaveLandingTags-response> (roslisp-msg-protocol:ros-message)
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
   (no_of_tags
    :reader no_of_tags
    :initarg :no_of_tags
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SaveLandingTags-response (<SaveLandingTags-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveLandingTags-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveLandingTags-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<SaveLandingTags-response> is deprecated: use vision_apps-srv:SaveLandingTags-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SaveLandingTags-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:success-val is deprecated.  Use vision_apps-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <SaveLandingTags-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:error_code-val is deprecated.  Use vision_apps-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SaveLandingTags-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:message-val is deprecated.  Use vision_apps-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'no_of_tags-val :lambda-list '(m))
(cl:defmethod no_of_tags-val ((m <SaveLandingTags-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:no_of_tags-val is deprecated.  Use vision_apps-srv:no_of_tags instead.")
  (no_of_tags m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveLandingTags-response>) ostream)
  "Serializes a message object of type '<SaveLandingTags-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'no_of_tags)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveLandingTags-response>) istream)
  "Deserializes a message object of type '<SaveLandingTags-response>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'no_of_tags)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveLandingTags-response>)))
  "Returns string type for a service object of type '<SaveLandingTags-response>"
  "vision_apps/SaveLandingTagsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveLandingTags-response)))
  "Returns string type for a service object of type 'SaveLandingTags-response"
  "vision_apps/SaveLandingTagsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveLandingTags-response>)))
  "Returns md5sum for a message object of type '<SaveLandingTags-response>"
  "1baebd8f9e081c78d7a8cd9ff7afcfe2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveLandingTags-response)))
  "Returns md5sum for a message object of type 'SaveLandingTags-response"
  "1baebd8f9e081c78d7a8cd9ff7afcfe2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveLandingTags-response>)))
  "Returns full string definition for message of type '<SaveLandingTags-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%uint8 no_of_tags~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveLandingTags-response)))
  "Returns full string definition for message of type 'SaveLandingTags-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%uint8 no_of_tags~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveLandingTags-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveLandingTags-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveLandingTags-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
    (cl:cons ':no_of_tags (no_of_tags msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveLandingTags)))
  'SaveLandingTags-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveLandingTags)))
  'SaveLandingTags-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveLandingTags)))
  "Returns string type for a service object of type '<SaveLandingTags>"
  "vision_apps/SaveLandingTags")