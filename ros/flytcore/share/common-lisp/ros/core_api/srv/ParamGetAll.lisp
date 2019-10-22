; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude ParamGetAll-request.msg.html

(cl:defclass <ParamGetAll-request> (roslisp-msg-protocol:ros-message)
  ((fresh_pull
    :reader fresh_pull
    :initarg :fresh_pull
    :type cl:boolean
    :initform cl:nil)
   (get_only_ap
    :reader get_only_ap
    :initarg :get_only_ap
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ParamGetAll-request (<ParamGetAll-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamGetAll-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamGetAll-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<ParamGetAll-request> is deprecated: use core_api-srv:ParamGetAll-request instead.")))

(cl:ensure-generic-function 'fresh_pull-val :lambda-list '(m))
(cl:defmethod fresh_pull-val ((m <ParamGetAll-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:fresh_pull-val is deprecated.  Use core_api-srv:fresh_pull instead.")
  (fresh_pull m))

(cl:ensure-generic-function 'get_only_ap-val :lambda-list '(m))
(cl:defmethod get_only_ap-val ((m <ParamGetAll-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:get_only_ap-val is deprecated.  Use core_api-srv:get_only_ap instead.")
  (get_only_ap m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamGetAll-request>) ostream)
  "Serializes a message object of type '<ParamGetAll-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fresh_pull) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'get_only_ap) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamGetAll-request>) istream)
  "Deserializes a message object of type '<ParamGetAll-request>"
    (cl:setf (cl:slot-value msg 'fresh_pull) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'get_only_ap) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamGetAll-request>)))
  "Returns string type for a service object of type '<ParamGetAll-request>"
  "core_api/ParamGetAllRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamGetAll-request)))
  "Returns string type for a service object of type 'ParamGetAll-request"
  "core_api/ParamGetAllRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamGetAll-request>)))
  "Returns md5sum for a message object of type '<ParamGetAll-request>"
  "b71ead203534a0f9bf45c0f7dcff82b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamGetAll-request)))
  "Returns md5sum for a message object of type 'ParamGetAll-request"
  "b71ead203534a0f9bf45c0f7dcff82b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamGetAll-request>)))
  "Returns full string definition for message of type '<ParamGetAll-request>"
  (cl:format cl:nil "bool fresh_pull~%bool get_only_ap~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamGetAll-request)))
  "Returns full string definition for message of type 'ParamGetAll-request"
  (cl:format cl:nil "bool fresh_pull~%bool get_only_ap~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamGetAll-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamGetAll-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamGetAll-request
    (cl:cons ':fresh_pull (fresh_pull msg))
    (cl:cons ':get_only_ap (get_only_ap msg))
))
;//! \htmlinclude ParamGetAll-response.msg.html

(cl:defclass <ParamGetAll-response> (roslisp-msg-protocol:ros-message)
  ((param_list
    :reader param_list
    :initarg :param_list
    :type (cl:vector core_api-msg:ParamInfo)
   :initform (cl:make-array 0 :element-type 'core_api-msg:ParamInfo :initial-element (cl:make-instance 'core_api-msg:ParamInfo)))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass ParamGetAll-response (<ParamGetAll-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamGetAll-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamGetAll-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<ParamGetAll-response> is deprecated: use core_api-srv:ParamGetAll-response instead.")))

(cl:ensure-generic-function 'param_list-val :lambda-list '(m))
(cl:defmethod param_list-val ((m <ParamGetAll-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:param_list-val is deprecated.  Use core_api-srv:param_list instead.")
  (param_list m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ParamGetAll-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ParamGetAll-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamGetAll-response>) ostream)
  "Serializes a message object of type '<ParamGetAll-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'param_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'param_list))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamGetAll-response>) istream)
  "Deserializes a message object of type '<ParamGetAll-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'param_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'param_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'core_api-msg:ParamInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamGetAll-response>)))
  "Returns string type for a service object of type '<ParamGetAll-response>"
  "core_api/ParamGetAllResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamGetAll-response)))
  "Returns string type for a service object of type 'ParamGetAll-response"
  "core_api/ParamGetAllResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamGetAll-response>)))
  "Returns md5sum for a message object of type '<ParamGetAll-response>"
  "b71ead203534a0f9bf45c0f7dcff82b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamGetAll-response)))
  "Returns md5sum for a message object of type 'ParamGetAll-response"
  "b71ead203534a0f9bf45c0f7dcff82b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamGetAll-response>)))
  "Returns full string definition for message of type '<ParamGetAll-response>"
  (cl:format cl:nil "core_api/ParamInfo[] param_list~%bool success~%string message~%~%~%================================================================================~%MSG: core_api/ParamInfo~%string param_id~%string param_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamGetAll-response)))
  "Returns full string definition for message of type 'ParamGetAll-response"
  (cl:format cl:nil "core_api/ParamInfo[] param_list~%bool success~%string message~%~%~%================================================================================~%MSG: core_api/ParamInfo~%string param_id~%string param_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamGetAll-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'param_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamGetAll-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamGetAll-response
    (cl:cons ':param_list (param_list msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ParamGetAll)))
  'ParamGetAll-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ParamGetAll)))
  'ParamGetAll-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamGetAll)))
  "Returns string type for a service object of type '<ParamGetAll>"
  "core_api/ParamGetAll")