; Auto-generated. Do not edit!


(cl:in-package vision_apps-srv)


;//! \htmlinclude LoadLandingTags-request.msg.html

(cl:defclass <LoadLandingTags-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LoadLandingTags-request (<LoadLandingTags-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadLandingTags-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadLandingTags-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<LoadLandingTags-request> is deprecated: use vision_apps-srv:LoadLandingTags-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadLandingTags-request>) ostream)
  "Serializes a message object of type '<LoadLandingTags-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadLandingTags-request>) istream)
  "Deserializes a message object of type '<LoadLandingTags-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadLandingTags-request>)))
  "Returns string type for a service object of type '<LoadLandingTags-request>"
  "vision_apps/LoadLandingTagsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadLandingTags-request)))
  "Returns string type for a service object of type 'LoadLandingTags-request"
  "vision_apps/LoadLandingTagsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadLandingTags-request>)))
  "Returns md5sum for a message object of type '<LoadLandingTags-request>"
  "45dcd6b83f8718a5041dfcd30a9d9f04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadLandingTags-request)))
  "Returns md5sum for a message object of type 'LoadLandingTags-request"
  "45dcd6b83f8718a5041dfcd30a9d9f04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadLandingTags-request>)))
  "Returns full string definition for message of type '<LoadLandingTags-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadLandingTags-request)))
  "Returns full string definition for message of type 'LoadLandingTags-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadLandingTags-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadLandingTags-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadLandingTags-request
))
;//! \htmlinclude LoadLandingTags-response.msg.html

(cl:defclass <LoadLandingTags-response> (roslisp-msg-protocol:ros-message)
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
    :initform 0)
   (tags_list
    :reader tags_list
    :initarg :tags_list
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (tags_size
    :reader tags_size
    :initarg :tags_size
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass LoadLandingTags-response (<LoadLandingTags-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadLandingTags-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadLandingTags-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<LoadLandingTags-response> is deprecated: use vision_apps-srv:LoadLandingTags-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <LoadLandingTags-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:success-val is deprecated.  Use vision_apps-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <LoadLandingTags-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:error_code-val is deprecated.  Use vision_apps-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <LoadLandingTags-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:message-val is deprecated.  Use vision_apps-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'no_of_tags-val :lambda-list '(m))
(cl:defmethod no_of_tags-val ((m <LoadLandingTags-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:no_of_tags-val is deprecated.  Use vision_apps-srv:no_of_tags instead.")
  (no_of_tags m))

(cl:ensure-generic-function 'tags_list-val :lambda-list '(m))
(cl:defmethod tags_list-val ((m <LoadLandingTags-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:tags_list-val is deprecated.  Use vision_apps-srv:tags_list instead.")
  (tags_list m))

(cl:ensure-generic-function 'tags_size-val :lambda-list '(m))
(cl:defmethod tags_size-val ((m <LoadLandingTags-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:tags_size-val is deprecated.  Use vision_apps-srv:tags_size instead.")
  (tags_size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadLandingTags-response>) ostream)
  "Serializes a message object of type '<LoadLandingTags-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'no_of_tags)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tags_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadLandingTags-response>) istream)
  "Deserializes a message object of type '<LoadLandingTags-response>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tags_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tags_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadLandingTags-response>)))
  "Returns string type for a service object of type '<LoadLandingTags-response>"
  "vision_apps/LoadLandingTagsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadLandingTags-response)))
  "Returns string type for a service object of type 'LoadLandingTags-response"
  "vision_apps/LoadLandingTagsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadLandingTags-response>)))
  "Returns md5sum for a message object of type '<LoadLandingTags-response>"
  "45dcd6b83f8718a5041dfcd30a9d9f04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadLandingTags-response)))
  "Returns md5sum for a message object of type 'LoadLandingTags-response"
  "45dcd6b83f8718a5041dfcd30a9d9f04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadLandingTags-response>)))
  "Returns full string definition for message of type '<LoadLandingTags-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%uint8 no_of_tags~%uint8[] tags_list~%float32[] tags_size~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadLandingTags-response)))
  "Returns full string definition for message of type 'LoadLandingTags-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%uint8 no_of_tags~%uint8[] tags_list~%float32[] tags_size~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadLandingTags-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tags_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tags_size) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadLandingTags-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadLandingTags-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
    (cl:cons ':no_of_tags (no_of_tags msg))
    (cl:cons ':tags_list (tags_list msg))
    (cl:cons ':tags_size (tags_size msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoadLandingTags)))
  'LoadLandingTags-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoadLandingTags)))
  'LoadLandingTags-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadLandingTags)))
  "Returns string type for a service object of type '<LoadLandingTags>"
  "vision_apps/LoadLandingTags")