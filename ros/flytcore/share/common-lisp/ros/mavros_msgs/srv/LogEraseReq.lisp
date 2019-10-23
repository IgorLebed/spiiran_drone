; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude LogEraseReq-request.msg.html

(cl:defclass <LogEraseReq-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LogEraseReq-request (<LogEraseReq-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LogEraseReq-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LogEraseReq-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<LogEraseReq-request> is deprecated: use mavros_msgs-srv:LogEraseReq-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LogEraseReq-request>) ostream)
  "Serializes a message object of type '<LogEraseReq-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LogEraseReq-request>) istream)
  "Deserializes a message object of type '<LogEraseReq-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LogEraseReq-request>)))
  "Returns string type for a service object of type '<LogEraseReq-request>"
  "mavros_msgs/LogEraseReqRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogEraseReq-request)))
  "Returns string type for a service object of type 'LogEraseReq-request"
  "mavros_msgs/LogEraseReqRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LogEraseReq-request>)))
  "Returns md5sum for a message object of type '<LogEraseReq-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LogEraseReq-request)))
  "Returns md5sum for a message object of type 'LogEraseReq-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LogEraseReq-request>)))
  "Returns full string definition for message of type '<LogEraseReq-request>"
  (cl:format cl:nil "~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LogEraseReq-request)))
  "Returns full string definition for message of type 'LogEraseReq-request"
  (cl:format cl:nil "~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LogEraseReq-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LogEraseReq-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LogEraseReq-request
))
;//! \htmlinclude LogEraseReq-response.msg.html

(cl:defclass <LogEraseReq-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LogEraseReq-response (<LogEraseReq-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LogEraseReq-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LogEraseReq-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<LogEraseReq-response> is deprecated: use mavros_msgs-srv:LogEraseReq-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <LogEraseReq-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LogEraseReq-response>) ostream)
  "Serializes a message object of type '<LogEraseReq-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LogEraseReq-response>) istream)
  "Deserializes a message object of type '<LogEraseReq-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LogEraseReq-response>)))
  "Returns string type for a service object of type '<LogEraseReq-response>"
  "mavros_msgs/LogEraseReqResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogEraseReq-response)))
  "Returns string type for a service object of type 'LogEraseReq-response"
  "mavros_msgs/LogEraseReqResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LogEraseReq-response>)))
  "Returns md5sum for a message object of type '<LogEraseReq-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LogEraseReq-response)))
  "Returns md5sum for a message object of type 'LogEraseReq-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LogEraseReq-response>)))
  "Returns full string definition for message of type '<LogEraseReq-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LogEraseReq-response)))
  "Returns full string definition for message of type 'LogEraseReq-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LogEraseReq-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LogEraseReq-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LogEraseReq-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LogEraseReq)))
  'LogEraseReq-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LogEraseReq)))
  'LogEraseReq-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogEraseReq)))
  "Returns string type for a service object of type '<LogEraseReq>"
  "mavros_msgs/LogEraseReq")