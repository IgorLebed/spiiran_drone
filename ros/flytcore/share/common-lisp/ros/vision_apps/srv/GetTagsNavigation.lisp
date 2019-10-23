; Auto-generated. Do not edit!


(cl:in-package vision_apps-srv)


;//! \htmlinclude GetTagsNavigation-request.msg.html

(cl:defclass <GetTagsNavigation-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetTagsNavigation-request (<GetTagsNavigation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTagsNavigation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTagsNavigation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<GetTagsNavigation-request> is deprecated: use vision_apps-srv:GetTagsNavigation-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTagsNavigation-request>) ostream)
  "Serializes a message object of type '<GetTagsNavigation-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTagsNavigation-request>) istream)
  "Deserializes a message object of type '<GetTagsNavigation-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTagsNavigation-request>)))
  "Returns string type for a service object of type '<GetTagsNavigation-request>"
  "vision_apps/GetTagsNavigationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTagsNavigation-request)))
  "Returns string type for a service object of type 'GetTagsNavigation-request"
  "vision_apps/GetTagsNavigationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTagsNavigation-request>)))
  "Returns md5sum for a message object of type '<GetTagsNavigation-request>"
  "53782a4fae57c38fe64c9c19dae267f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTagsNavigation-request)))
  "Returns md5sum for a message object of type 'GetTagsNavigation-request"
  "53782a4fae57c38fe64c9c19dae267f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTagsNavigation-request>)))
  "Returns full string definition for message of type '<GetTagsNavigation-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTagsNavigation-request)))
  "Returns full string definition for message of type 'GetTagsNavigation-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTagsNavigation-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTagsNavigation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTagsNavigation-request
))
;//! \htmlinclude GetTagsNavigation-response.msg.html

(cl:defclass <GetTagsNavigation-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
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

(cl:defclass GetTagsNavigation-response (<GetTagsNavigation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTagsNavigation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTagsNavigation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<GetTagsNavigation-response> is deprecated: use vision_apps-srv:GetTagsNavigation-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetTagsNavigation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:success-val is deprecated.  Use vision_apps-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'tags_list-val :lambda-list '(m))
(cl:defmethod tags_list-val ((m <GetTagsNavigation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:tags_list-val is deprecated.  Use vision_apps-srv:tags_list instead.")
  (tags_list m))

(cl:ensure-generic-function 'tags_size-val :lambda-list '(m))
(cl:defmethod tags_size-val ((m <GetTagsNavigation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:tags_size-val is deprecated.  Use vision_apps-srv:tags_size instead.")
  (tags_size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTagsNavigation-response>) ostream)
  "Serializes a message object of type '<GetTagsNavigation-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTagsNavigation-response>) istream)
  "Deserializes a message object of type '<GetTagsNavigation-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTagsNavigation-response>)))
  "Returns string type for a service object of type '<GetTagsNavigation-response>"
  "vision_apps/GetTagsNavigationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTagsNavigation-response)))
  "Returns string type for a service object of type 'GetTagsNavigation-response"
  "vision_apps/GetTagsNavigationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTagsNavigation-response>)))
  "Returns md5sum for a message object of type '<GetTagsNavigation-response>"
  "53782a4fae57c38fe64c9c19dae267f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTagsNavigation-response)))
  "Returns md5sum for a message object of type 'GetTagsNavigation-response"
  "53782a4fae57c38fe64c9c19dae267f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTagsNavigation-response>)))
  "Returns full string definition for message of type '<GetTagsNavigation-response>"
  (cl:format cl:nil "bool success~%int16[] tags_list~%float32[] tags_size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTagsNavigation-response)))
  "Returns full string definition for message of type 'GetTagsNavigation-response"
  (cl:format cl:nil "bool success~%int16[] tags_list~%float32[] tags_size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTagsNavigation-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tags_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tags_size) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTagsNavigation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTagsNavigation-response
    (cl:cons ':success (success msg))
    (cl:cons ':tags_list (tags_list msg))
    (cl:cons ':tags_size (tags_size msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTagsNavigation)))
  'GetTagsNavigation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTagsNavigation)))
  'GetTagsNavigation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTagsNavigation)))
  "Returns string type for a service object of type '<GetTagsNavigation>"
  "vision_apps/GetTagsNavigation")