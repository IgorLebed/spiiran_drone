; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude LogListReq-request.msg.html

(cl:defclass <LogListReq-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LogListReq-request (<LogListReq-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LogListReq-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LogListReq-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<LogListReq-request> is deprecated: use mavros_msgs-srv:LogListReq-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LogListReq-request>) ostream)
  "Serializes a message object of type '<LogListReq-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LogListReq-request>) istream)
  "Deserializes a message object of type '<LogListReq-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LogListReq-request>)))
  "Returns string type for a service object of type '<LogListReq-request>"
  "mavros_msgs/LogListReqRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogListReq-request)))
  "Returns string type for a service object of type 'LogListReq-request"
  "mavros_msgs/LogListReqRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LogListReq-request>)))
  "Returns md5sum for a message object of type '<LogListReq-request>"
  "6364c880a0085320615fba1995407d03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LogListReq-request)))
  "Returns md5sum for a message object of type 'LogListReq-request"
  "6364c880a0085320615fba1995407d03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LogListReq-request>)))
  "Returns full string definition for message of type '<LogListReq-request>"
  (cl:format cl:nil "~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LogListReq-request)))
  "Returns full string definition for message of type 'LogListReq-request"
  (cl:format cl:nil "~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LogListReq-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LogListReq-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LogListReq-request
))
;//! \htmlinclude LogListReq-response.msg.html

(cl:defclass <LogListReq-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (loglist
    :reader loglist
    :initarg :loglist
    :type (cl:vector mavros_msgs-msg:LogList)
   :initform (cl:make-array 0 :element-type 'mavros_msgs-msg:LogList :initial-element (cl:make-instance 'mavros_msgs-msg:LogList))))
)

(cl:defclass LogListReq-response (<LogListReq-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LogListReq-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LogListReq-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<LogListReq-response> is deprecated: use mavros_msgs-srv:LogListReq-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <LogListReq-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'loglist-val :lambda-list '(m))
(cl:defmethod loglist-val ((m <LogListReq-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:loglist-val is deprecated.  Use mavros_msgs-srv:loglist instead.")
  (loglist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LogListReq-response>) ostream)
  "Serializes a message object of type '<LogListReq-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'loglist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'loglist))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LogListReq-response>) istream)
  "Deserializes a message object of type '<LogListReq-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'loglist) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'loglist)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mavros_msgs-msg:LogList))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LogListReq-response>)))
  "Returns string type for a service object of type '<LogListReq-response>"
  "mavros_msgs/LogListReqResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogListReq-response)))
  "Returns string type for a service object of type 'LogListReq-response"
  "mavros_msgs/LogListReqResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LogListReq-response>)))
  "Returns md5sum for a message object of type '<LogListReq-response>"
  "6364c880a0085320615fba1995407d03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LogListReq-response)))
  "Returns md5sum for a message object of type 'LogListReq-response"
  "6364c880a0085320615fba1995407d03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LogListReq-response>)))
  "Returns full string definition for message of type '<LogListReq-response>"
  (cl:format cl:nil "bool success~%~%LogList[] loglist~%~%~%~%~%================================================================================~%MSG: mavros_msgs/LogList~%# Base message format for every entry of log list~%# sbc_status -> 0 for not available on SBC, 1 for available~%~%uint16 id~%string filename~%string autopilot~%string date~%uint32 time~%uint32 size~%uint8 sbc_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LogListReq-response)))
  "Returns full string definition for message of type 'LogListReq-response"
  (cl:format cl:nil "bool success~%~%LogList[] loglist~%~%~%~%~%================================================================================~%MSG: mavros_msgs/LogList~%# Base message format for every entry of log list~%# sbc_status -> 0 for not available on SBC, 1 for available~%~%uint16 id~%string filename~%string autopilot~%string date~%uint32 time~%uint32 size~%uint8 sbc_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LogListReq-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'loglist) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LogListReq-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LogListReq-response
    (cl:cons ':success (success msg))
    (cl:cons ':loglist (loglist msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LogListReq)))
  'LogListReq-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LogListReq)))
  'LogListReq-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogListReq)))
  "Returns string type for a service object of type '<LogListReq>"
  "mavros_msgs/LogListReq")