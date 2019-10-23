; Auto-generated. Do not edit!


(cl:in-package core_api-msg)


;//! \htmlinclude ParamInfo.msg.html

(cl:defclass <ParamInfo> (roslisp-msg-protocol:ros-message)
  ((param_id
    :reader param_id
    :initarg :param_id
    :type cl:string
    :initform "")
   (param_value
    :reader param_value
    :initarg :param_value
    :type cl:string
    :initform ""))
)

(cl:defclass ParamInfo (<ParamInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-msg:<ParamInfo> is deprecated: use core_api-msg:ParamInfo instead.")))

(cl:ensure-generic-function 'param_id-val :lambda-list '(m))
(cl:defmethod param_id-val ((m <ParamInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-msg:param_id-val is deprecated.  Use core_api-msg:param_id instead.")
  (param_id m))

(cl:ensure-generic-function 'param_value-val :lambda-list '(m))
(cl:defmethod param_value-val ((m <ParamInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-msg:param_value-val is deprecated.  Use core_api-msg:param_value instead.")
  (param_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamInfo>) ostream)
  "Serializes a message object of type '<ParamInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'param_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'param_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'param_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'param_value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamInfo>) istream)
  "Deserializes a message object of type '<ParamInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'param_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'param_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'param_value) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'param_value) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamInfo>)))
  "Returns string type for a message object of type '<ParamInfo>"
  "core_api/ParamInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamInfo)))
  "Returns string type for a message object of type 'ParamInfo"
  "core_api/ParamInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamInfo>)))
  "Returns md5sum for a message object of type '<ParamInfo>"
  "a944080ebad844ddaa75505407d5efa8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamInfo)))
  "Returns md5sum for a message object of type 'ParamInfo"
  "a944080ebad844ddaa75505407d5efa8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamInfo>)))
  "Returns full string definition for message of type '<ParamInfo>"
  (cl:format cl:nil "string param_id~%string param_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamInfo)))
  "Returns full string definition for message of type 'ParamInfo"
  (cl:format cl:nil "string param_id~%string param_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'param_id))
     4 (cl:length (cl:slot-value msg 'param_value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamInfo
    (cl:cons ':param_id (param_id msg))
    (cl:cons ':param_value (param_value msg))
))
