; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-srv)


;//! \htmlinclude TakeOff-request.msg.html

(cl:defclass <TakeOff-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass TakeOff-request (<TakeOff-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TakeOff-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TakeOff-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<TakeOff-request> is deprecated: use mavros_msgs-srv:TakeOff-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <TakeOff-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:pose-val is deprecated.  Use mavros_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TakeOff-request>) ostream)
  "Serializes a message object of type '<TakeOff-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TakeOff-request>) istream)
  "Deserializes a message object of type '<TakeOff-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TakeOff-request>)))
  "Returns string type for a service object of type '<TakeOff-request>"
  "mavros_msgs/TakeOffRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakeOff-request)))
  "Returns string type for a service object of type 'TakeOff-request"
  "mavros_msgs/TakeOffRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TakeOff-request>)))
  "Returns md5sum for a message object of type '<TakeOff-request>"
  "655cad7ef82e583fafa09ef2e62b62c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TakeOff-request)))
  "Returns md5sum for a message object of type 'TakeOff-request"
  "655cad7ef82e583fafa09ef2e62b62c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TakeOff-request>)))
  "Returns full string definition for message of type '<TakeOff-request>"
  (cl:format cl:nil "~%~%~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TakeOff-request)))
  "Returns full string definition for message of type 'TakeOff-request"
  (cl:format cl:nil "~%~%~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TakeOff-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TakeOff-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TakeOff-request
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude TakeOff-response.msg.html

(cl:defclass <TakeOff-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TakeOff-response (<TakeOff-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TakeOff-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TakeOff-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-srv:<TakeOff-response> is deprecated: use mavros_msgs-srv:TakeOff-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TakeOff-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-srv:success-val is deprecated.  Use mavros_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TakeOff-response>) ostream)
  "Serializes a message object of type '<TakeOff-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TakeOff-response>) istream)
  "Deserializes a message object of type '<TakeOff-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TakeOff-response>)))
  "Returns string type for a service object of type '<TakeOff-response>"
  "mavros_msgs/TakeOffResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakeOff-response)))
  "Returns string type for a service object of type 'TakeOff-response"
  "mavros_msgs/TakeOffResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TakeOff-response>)))
  "Returns md5sum for a message object of type '<TakeOff-response>"
  "655cad7ef82e583fafa09ef2e62b62c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TakeOff-response)))
  "Returns md5sum for a message object of type 'TakeOff-response"
  "655cad7ef82e583fafa09ef2e62b62c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TakeOff-response>)))
  "Returns full string definition for message of type '<TakeOff-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TakeOff-response)))
  "Returns full string definition for message of type 'TakeOff-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TakeOff-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TakeOff-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TakeOff-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TakeOff)))
  'TakeOff-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TakeOff)))
  'TakeOff-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakeOff)))
  "Returns string type for a service object of type '<TakeOff>"
  "mavros_msgs/TakeOff")