; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude LogDownloadReq-request.msg.html

(cl:defclass <LogDownloadReq-request> (roslisp-msg-protocol:ros-message)
  ((logid
    :reader logid
    :initarg :logid
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LogDownloadReq-request (<LogDownloadReq-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LogDownloadReq-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LogDownloadReq-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<LogDownloadReq-request> is deprecated: use mavros_msgs-srv:LogDownloadReq-request instead.")))

(cl:ensure-generic-function 'logid-val :lambda-list '(m))
(cl:defmethod logid-val ((m <LogDownloadReq-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:logid-val is deprecated.  Use mavros_msgs-srv:logid instead.")
  (logid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LogDownloadReq-request>) ostream)
  "Serializes a message object of type '<LogDownloadReq-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'logid)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LogDownloadReq-request>) istream)
  "Deserializes a message object of type '<LogDownloadReq-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'logid)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LogDownloadReq-request>)))
  "Returns string type for a service object of type '<LogDownloadReq-request>"
  "mavros_msgs/LogDownloadReqRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogDownloadReq-request)))
  "Returns string type for a service object of type 'LogDownloadReq-request"
  "mavros_msgs/LogDownloadReqRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LogDownloadReq-request>)))
  "Returns md5sum for a message object of type '<LogDownloadReq-request>"
  "6aa3fdb1a1026603f60d521893f4fc94")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LogDownloadReq-request)))
  "Returns md5sum for a message object of type 'LogDownloadReq-request"
  "6aa3fdb1a1026603f60d521893f4fc94")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LogDownloadReq-request>)))
  "Returns full string definition for message of type '<LogDownloadReq-request>"
  (cl:format cl:nil "~%~%~%uint8 logid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LogDownloadReq-request)))
  "Returns full string definition for message of type 'LogDownloadReq-request"
  (cl:format cl:nil "~%~%~%uint8 logid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LogDownloadReq-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LogDownloadReq-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LogDownloadReq-request
    (cl:cons ':logid (logid msg))
))
;//! \htmlinclude LogDownloadReq-response.msg.html

(cl:defclass <LogDownloadReq-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LogDownloadReq-response (<LogDownloadReq-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LogDownloadReq-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LogDownloadReq-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<LogDownloadReq-response> is deprecated: use mavros_msgs-srv:LogDownloadReq-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <LogDownloadReq-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LogDownloadReq-response>) ostream)
  "Serializes a message object of type '<LogDownloadReq-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LogDownloadReq-response>) istream)
  "Deserializes a message object of type '<LogDownloadReq-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LogDownloadReq-response>)))
  "Returns string type for a service object of type '<LogDownloadReq-response>"
  "mavros_msgs/LogDownloadReqResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogDownloadReq-response)))
  "Returns string type for a service object of type 'LogDownloadReq-response"
  "mavros_msgs/LogDownloadReqResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LogDownloadReq-response>)))
  "Returns md5sum for a message object of type '<LogDownloadReq-response>"
  "6aa3fdb1a1026603f60d521893f4fc94")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LogDownloadReq-response)))
  "Returns md5sum for a message object of type 'LogDownloadReq-response"
  "6aa3fdb1a1026603f60d521893f4fc94")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LogDownloadReq-response>)))
  "Returns full string definition for message of type '<LogDownloadReq-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LogDownloadReq-response)))
  "Returns full string definition for message of type 'LogDownloadReq-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LogDownloadReq-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LogDownloadReq-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LogDownloadReq-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LogDownloadReq)))
  'LogDownloadReq-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LogDownloadReq)))
  'LogDownloadReq-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogDownloadReq)))
  "Returns string type for a service object of type '<LogDownloadReq>"
  "mavros_msgs/LogDownloadReq")