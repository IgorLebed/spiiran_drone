; Auto-generated. Do not edit!


(cl:in-package navigation_util-msg)


;//! \htmlinclude NavigationVelResult.msg.html

(cl:defclass <NavigationVelResult> (roslisp-msg-protocol:ros-message)
  ((twist
    :reader twist
    :initarg :twist
    :type geometry_msgs-msg:TwistStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TwistStamped)))
)

(cl:defclass NavigationVelResult (<NavigationVelResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigationVelResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigationVelResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation_util-msg:<NavigationVelResult> is deprecated: use navigation_util-msg:NavigationVelResult instead.")))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <NavigationVelResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation_util-msg:twist-val is deprecated.  Use navigation_util-msg:twist instead.")
  (twist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigationVelResult>) ostream)
  "Serializes a message object of type '<NavigationVelResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigationVelResult>) istream)
  "Deserializes a message object of type '<NavigationVelResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigationVelResult>)))
  "Returns string type for a message object of type '<NavigationVelResult>"
  "navigation_util/NavigationVelResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigationVelResult)))
  "Returns string type for a message object of type 'NavigationVelResult"
  "navigation_util/NavigationVelResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigationVelResult>)))
  "Returns md5sum for a message object of type '<NavigationVelResult>"
  "0ee72deb066cef47f7a9ab9d33742d16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigationVelResult)))
  "Returns md5sum for a message object of type 'NavigationVelResult"
  "0ee72deb066cef47f7a9ab9d33742d16")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigationVelResult>)))
  "Returns full string definition for message of type '<NavigationVelResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%geometry_msgs/TwistStamped twist~%~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigationVelResult)))
  "Returns full string definition for message of type 'NavigationVelResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%geometry_msgs/TwistStamped twist~%~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigationVelResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigationVelResult>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigationVelResult
    (cl:cons ':twist (twist msg))
))