; Auto-generated. Do not edit!


(cl:in-package vision_apps-srv)


;//! \htmlinclude UpdateAlias-request.msg.html

(cl:defclass <UpdateAlias-request> (roslisp-msg-protocol:ros-message)
  ((old_alias
    :reader old_alias
    :initarg :old_alias
    :type cl:string
    :initform "")
   (new_alias
    :reader new_alias
    :initarg :new_alias
    :type cl:string
    :initform ""))
)

(cl:defclass UpdateAlias-request (<UpdateAlias-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateAlias-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateAlias-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<UpdateAlias-request> is deprecated: use vision_apps-srv:UpdateAlias-request instead.")))

(cl:ensure-generic-function 'old_alias-val :lambda-list '(m))
(cl:defmethod old_alias-val ((m <UpdateAlias-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:old_alias-val is deprecated.  Use vision_apps-srv:old_alias instead.")
  (old_alias m))

(cl:ensure-generic-function 'new_alias-val :lambda-list '(m))
(cl:defmethod new_alias-val ((m <UpdateAlias-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:new_alias-val is deprecated.  Use vision_apps-srv:new_alias instead.")
  (new_alias m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateAlias-request>) ostream)
  "Serializes a message object of type '<UpdateAlias-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'old_alias))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'old_alias))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'new_alias))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'new_alias))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateAlias-request>) istream)
  "Deserializes a message object of type '<UpdateAlias-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'old_alias) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'old_alias) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'new_alias) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'new_alias) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateAlias-request>)))
  "Returns string type for a service object of type '<UpdateAlias-request>"
  "vision_apps/UpdateAliasRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateAlias-request)))
  "Returns string type for a service object of type 'UpdateAlias-request"
  "vision_apps/UpdateAliasRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateAlias-request>)))
  "Returns md5sum for a message object of type '<UpdateAlias-request>"
  "0a1770d68691fd4da5d99ac89cb0df8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateAlias-request)))
  "Returns md5sum for a message object of type 'UpdateAlias-request"
  "0a1770d68691fd4da5d99ac89cb0df8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateAlias-request>)))
  "Returns full string definition for message of type '<UpdateAlias-request>"
  (cl:format cl:nil "string old_alias~%string new_alias~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateAlias-request)))
  "Returns full string definition for message of type 'UpdateAlias-request"
  (cl:format cl:nil "string old_alias~%string new_alias~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateAlias-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'old_alias))
     4 (cl:length (cl:slot-value msg 'new_alias))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateAlias-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateAlias-request
    (cl:cons ':old_alias (old_alias msg))
    (cl:cons ':new_alias (new_alias msg))
))
;//! \htmlinclude UpdateAlias-response.msg.html

(cl:defclass <UpdateAlias-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UpdateAlias-response (<UpdateAlias-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateAlias-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateAlias-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-srv:<UpdateAlias-response> is deprecated: use vision_apps-srv:UpdateAlias-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <UpdateAlias-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-srv:success-val is deprecated.  Use vision_apps-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateAlias-response>) ostream)
  "Serializes a message object of type '<UpdateAlias-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateAlias-response>) istream)
  "Deserializes a message object of type '<UpdateAlias-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateAlias-response>)))
  "Returns string type for a service object of type '<UpdateAlias-response>"
  "vision_apps/UpdateAliasResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateAlias-response)))
  "Returns string type for a service object of type 'UpdateAlias-response"
  "vision_apps/UpdateAliasResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateAlias-response>)))
  "Returns md5sum for a message object of type '<UpdateAlias-response>"
  "0a1770d68691fd4da5d99ac89cb0df8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateAlias-response)))
  "Returns md5sum for a message object of type 'UpdateAlias-response"
  "0a1770d68691fd4da5d99ac89cb0df8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateAlias-response>)))
  "Returns full string definition for message of type '<UpdateAlias-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateAlias-response)))
  "Returns full string definition for message of type 'UpdateAlias-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateAlias-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateAlias-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateAlias-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UpdateAlias)))
  'UpdateAlias-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UpdateAlias)))
  'UpdateAlias-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateAlias)))
  "Returns string type for a service object of type '<UpdateAlias>"
  "vision_apps/UpdateAlias")