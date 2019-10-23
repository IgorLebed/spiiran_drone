; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude LogCancelReq-request.msg.html

(cl:defclass <LogCancelReq-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LogCancelReq-request (<LogCancelReq-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LogCancelReq-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LogCancelReq-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<LogCancelReq-request> is deprecated: use mavros_msgs-srv:LogCancelReq-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LogCancelReq-request>) ostream)
  "Serializes a message object of type '<LogCancelReq-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LogCancelReq-request>) istream)
  "Deserializes a message object of type '<LogCancelReq-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LogCancelReq-request>)))
  "Returns string type for a service object of type '<LogCancelReq-request>"
  "mavros_msgs/LogCancelReqRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogCancelReq-request)))
  "Returns string type for a service object of type 'LogCancelReq-request"
  "mavros_msgs/LogCancelReqRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LogCancelReq-request>)))
  "Returns md5sum for a message object of type '<LogCancelReq-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LogCancelReq-request)))
  "Returns md5sum for a message object of type 'LogCancelReq-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LogCancelReq-request>)))
  "Returns full string definition for message of type '<LogCancelReq-request>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LogCancelReq-request)))
  "Returns full string definition for message of type 'LogCancelReq-request"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LogCancelReq-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LogCancelReq-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LogCancelReq-request
))
;//! \htmlinclude LogCancelReq-response.msg.html

(cl:defclass <LogCancelReq-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LogCancelReq-response (<LogCancelReq-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LogCancelReq-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LogCancelReq-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<LogCancelReq-response> is deprecated: use mavros_msgs-srv:LogCancelReq-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <LogCancelReq-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LogCancelReq-response>) ostream)
  "Serializes a message object of type '<LogCancelReq-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LogCancelReq-response>) istream)
  "Deserializes a message object of type '<LogCancelReq-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LogCancelReq-response>)))
  "Returns string type for a service object of type '<LogCancelReq-response>"
  "mavros_msgs/LogCancelReqResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogCancelReq-response)))
  "Returns string type for a service object of type 'LogCancelReq-response"
  "mavros_msgs/LogCancelReqResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LogCancelReq-response>)))
  "Returns md5sum for a message object of type '<LogCancelReq-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LogCancelReq-response)))
  "Returns md5sum for a message object of type 'LogCancelReq-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LogCancelReq-response>)))
  "Returns full string definition for message of type '<LogCancelReq-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LogCancelReq-response)))
  "Returns full string definition for message of type 'LogCancelReq-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LogCancelReq-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LogCancelReq-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LogCancelReq-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LogCancelReq)))
  'LogCancelReq-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LogCancelReq)))
  'LogCancelReq-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogCancelReq)))
  "Returns string type for a service object of type '<LogCancelReq>"
  "mavros_msgs/LogCancelReq")