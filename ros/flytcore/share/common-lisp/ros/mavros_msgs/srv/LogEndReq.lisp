; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude LogEndReq-request.msg.html

(cl:defclass <LogEndReq-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LogEndReq-request (<LogEndReq-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LogEndReq-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LogEndReq-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<LogEndReq-request> is deprecated: use mavros_msgs-srv:LogEndReq-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LogEndReq-request>) ostream)
  "Serializes a message object of type '<LogEndReq-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LogEndReq-request>) istream)
  "Deserializes a message object of type '<LogEndReq-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LogEndReq-request>)))
  "Returns string type for a service object of type '<LogEndReq-request>"
  "mavros_msgs/LogEndReqRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogEndReq-request)))
  "Returns string type for a service object of type 'LogEndReq-request"
  "mavros_msgs/LogEndReqRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LogEndReq-request>)))
  "Returns md5sum for a message object of type '<LogEndReq-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LogEndReq-request)))
  "Returns md5sum for a message object of type 'LogEndReq-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LogEndReq-request>)))
  "Returns full string definition for message of type '<LogEndReq-request>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LogEndReq-request)))
  "Returns full string definition for message of type 'LogEndReq-request"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LogEndReq-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LogEndReq-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LogEndReq-request
))
;//! \htmlinclude LogEndReq-response.msg.html

(cl:defclass <LogEndReq-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LogEndReq-response (<LogEndReq-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LogEndReq-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LogEndReq-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<LogEndReq-response> is deprecated: use mavros_msgs-srv:LogEndReq-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <LogEndReq-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LogEndReq-response>) ostream)
  "Serializes a message object of type '<LogEndReq-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LogEndReq-response>) istream)
  "Deserializes a message object of type '<LogEndReq-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LogEndReq-response>)))
  "Returns string type for a service object of type '<LogEndReq-response>"
  "mavros_msgs/LogEndReqResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogEndReq-response)))
  "Returns string type for a service object of type 'LogEndReq-response"
  "mavros_msgs/LogEndReqResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LogEndReq-response>)))
  "Returns md5sum for a message object of type '<LogEndReq-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LogEndReq-response)))
  "Returns md5sum for a message object of type 'LogEndReq-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LogEndReq-response>)))
  "Returns full string definition for message of type '<LogEndReq-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LogEndReq-response)))
  "Returns full string definition for message of type 'LogEndReq-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LogEndReq-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LogEndReq-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LogEndReq-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LogEndReq)))
  'LogEndReq-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LogEndReq)))
  'LogEndReq-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogEndReq)))
  "Returns string type for a service object of type '<LogEndReq>"
  "mavros_msgs/LogEndReq")