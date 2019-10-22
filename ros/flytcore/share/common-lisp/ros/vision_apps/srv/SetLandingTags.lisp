; Auto-generated. Do not edit!


(cl:in-package vision_apps-srv)


;//! \htmlinclude SetLandingTags-request.msg.html

(cl:defclass <SetLandingTags-request> (roslisp-msg-protocol:ros-message)
  ((tags_list
    :reader tags_list
    :initarg :tags_list
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (tags_size
    :reader tags_size
    :initarg :tags_size
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (save
    :reader save
    :initarg :save
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetLandingTags-request (<SetLandingTags-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLandingTags-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLandingTags-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<SetLandingTags-request> is deprecated: use vision_apps-srv:SetLandingTags-request instead.")))

(cl:ensure-generic-function 'tags_list-val :lambda-list '(m))
(cl:defmethod tags_list-val ((m <SetLandingTags-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:tags_list-val is deprecated.  Use vision_apps-srv:tags_list instead.")
  (tags_list m))

(cl:ensure-generic-function 'tags_size-val :lambda-list '(m))
(cl:defmethod tags_size-val ((m <SetLandingTags-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:tags_size-val is deprecated.  Use vision_apps-srv:tags_size instead.")
  (tags_size m))

(cl:ensure-generic-function 'save-val :lambda-list '(m))
(cl:defmethod save-val ((m <SetLandingTags-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:save-val is deprecated.  Use vision_apps-srv:save instead.")
  (save m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLandingTags-request>) ostream)
  "Serializes a message object of type '<SetLandingTags-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tags_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'tags_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tags_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'tags_size))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'save) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLandingTags-request>) istream)
  "Deserializes a message object of type '<SetLandingTags-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tags_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tags_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tags_size) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tags_size)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:slot-value msg 'save) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLandingTags-request>)))
  "Returns string type for a service object of type '<SetLandingTags-request>"
  "vision_apps/SetLandingTagsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLandingTags-request)))
  "Returns string type for a service object of type 'SetLandingTags-request"
  "vision_apps/SetLandingTagsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLandingTags-request>)))
  "Returns md5sum for a message object of type '<SetLandingTags-request>"
  "cd699613466cea6d48ccdaa53ecb88b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLandingTags-request)))
  "Returns md5sum for a message object of type 'SetLandingTags-request"
  "cd699613466cea6d48ccdaa53ecb88b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLandingTags-request>)))
  "Returns full string definition for message of type '<SetLandingTags-request>"
  (cl:format cl:nil "int16[] tags_list~%float32[] tags_size~%bool save~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLandingTags-request)))
  "Returns full string definition for message of type 'SetLandingTags-request"
  (cl:format cl:nil "int16[] tags_list~%float32[] tags_size~%bool save~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLandingTags-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tags_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tags_size) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLandingTags-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLandingTags-request
    (cl:cons ':tags_list (tags_list msg))
    (cl:cons ':tags_size (tags_size msg))
    (cl:cons ':save (save msg))
))
;//! \htmlinclude SetLandingTags-response.msg.html

(cl:defclass <SetLandingTags-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetLandingTags-response (<SetLandingTags-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLandingTags-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLandingTags-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<SetLandingTags-response> is deprecated: use vision_apps-srv:SetLandingTags-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetLandingTags-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:success-val is deprecated.  Use vision_apps-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <SetLandingTags-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:error_code-val is deprecated.  Use vision_apps-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetLandingTags-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:message-val is deprecated.  Use vision_apps-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'no_of_tags-val :lambda-list '(m))
(cl:defmethod no_of_tags-val ((m <SetLandingTags-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:no_of_tags-val is deprecated.  Use vision_apps-srv:no_of_tags instead.")
  (no_of_tags m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLandingTags-response>) ostream)
  "Serializes a message object of type '<SetLandingTags-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLandingTags-response>) istream)
  "Deserializes a message object of type '<SetLandingTags-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLandingTags-response>)))
  "Returns string type for a service object of type '<SetLandingTags-response>"
  "vision_apps/SetLandingTagsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLandingTags-response)))
  "Returns string type for a service object of type 'SetLandingTags-response"
  "vision_apps/SetLandingTagsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLandingTags-response>)))
  "Returns md5sum for a message object of type '<SetLandingTags-response>"
  "cd699613466cea6d48ccdaa53ecb88b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLandingTags-response)))
  "Returns md5sum for a message object of type 'SetLandingTags-response"
  "cd699613466cea6d48ccdaa53ecb88b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLandingTags-response>)))
  "Returns full string definition for message of type '<SetLandingTags-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%uint8 no_of_tags~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLandingTags-response)))
  "Returns full string definition for message of type 'SetLandingTags-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%uint8 no_of_tags~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLandingTags-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLandingTags-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLandingTags-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
    (cl:cons ':no_of_tags (no_of_tags msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetLandingTags)))
  'SetLandingTags-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetLandingTags)))
  'SetLandingTags-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLandingTags)))
  "Returns string type for a service object of type '<SetLandingTags>"
  "vision_apps/SetLandingTags")