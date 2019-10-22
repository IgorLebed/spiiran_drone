; Auto-generated. Do not edit!


(cl:in-package vision_apps-srv)


;//! \htmlinclude GetCamList-request.msg.html

(cl:defclass <GetCamList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetCamList-request (<GetCamList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCamList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCamList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<GetCamList-request> is deprecated: use vision_apps-srv:GetCamList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCamList-request>) ostream)
  "Serializes a message object of type '<GetCamList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCamList-request>) istream)
  "Deserializes a message object of type '<GetCamList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCamList-request>)))
  "Returns string type for a service object of type '<GetCamList-request>"
  "vision_apps/GetCamListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCamList-request)))
  "Returns string type for a service object of type 'GetCamList-request"
  "vision_apps/GetCamListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCamList-request>)))
  "Returns md5sum for a message object of type '<GetCamList-request>"
  "9902e78c4ccd49c8d03303243efb89fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCamList-request)))
  "Returns md5sum for a message object of type 'GetCamList-request"
  "9902e78c4ccd49c8d03303243efb89fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCamList-request>)))
  "Returns full string definition for message of type '<GetCamList-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCamList-request)))
  "Returns full string definition for message of type 'GetCamList-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCamList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCamList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCamList-request
))
;//! \htmlinclude GetCamList-response.msg.html

(cl:defclass <GetCamList-response> (roslisp-msg-protocol:ros-message)
  ((camera_aliases
    :reader camera_aliases
    :initarg :camera_aliases
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetCamList-response (<GetCamList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCamList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCamList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<GetCamList-response> is deprecated: use vision_apps-srv:GetCamList-response instead.")))

(cl:ensure-generic-function 'camera_aliases-val :lambda-list '(m))
(cl:defmethod camera_aliases-val ((m <GetCamList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:camera_aliases-val is deprecated.  Use vision_apps-srv:camera_aliases instead.")
  (camera_aliases m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCamList-response>) ostream)
  "Serializes a message object of type '<GetCamList-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'camera_aliases))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'camera_aliases))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCamList-response>) istream)
  "Deserializes a message object of type '<GetCamList-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'camera_aliases) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'camera_aliases)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCamList-response>)))
  "Returns string type for a service object of type '<GetCamList-response>"
  "vision_apps/GetCamListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCamList-response)))
  "Returns string type for a service object of type 'GetCamList-response"
  "vision_apps/GetCamListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCamList-response>)))
  "Returns md5sum for a message object of type '<GetCamList-response>"
  "9902e78c4ccd49c8d03303243efb89fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCamList-response)))
  "Returns md5sum for a message object of type 'GetCamList-response"
  "9902e78c4ccd49c8d03303243efb89fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCamList-response>)))
  "Returns full string definition for message of type '<GetCamList-response>"
  (cl:format cl:nil "string[] camera_aliases~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCamList-response)))
  "Returns full string definition for message of type 'GetCamList-response"
  (cl:format cl:nil "string[] camera_aliases~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCamList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'camera_aliases) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCamList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCamList-response
    (cl:cons ':camera_aliases (camera_aliases msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCamList)))
  'GetCamList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCamList)))
  'GetCamList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCamList)))
  "Returns string type for a service object of type '<GetCamList>"
  "vision_apps/GetCamList")