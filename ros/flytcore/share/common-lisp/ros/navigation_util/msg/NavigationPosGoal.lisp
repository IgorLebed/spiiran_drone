; Auto-generated. Do not edit!


(cl:in-package navigation_util-msg)


;//! \htmlinclude NavigationPosGoal.msg.html

(cl:defclass <NavigationPosGoal> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (tolerance
    :reader tolerance
    :initarg :tolerance
    :type cl:float
    :initform 0.0)
   (xy_valid
    :reader xy_valid
    :initarg :xy_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass NavigationPosGoal (<NavigationPosGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigationPosGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigationPosGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation_util-msg:<NavigationPosGoal> is deprecated: use navigation_util-msg:NavigationPosGoal instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <NavigationPosGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation_util-msg:pose-val is deprecated.  Use navigation_util-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'tolerance-val :lambda-list '(m))
(cl:defmethod tolerance-val ((m <NavigationPosGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation_util-msg:tolerance-val is deprecated.  Use navigation_util-msg:tolerance instead.")
  (tolerance m))

(cl:ensure-generic-function 'xy_valid-val :lambda-list '(m))
(cl:defmethod xy_valid-val ((m <NavigationPosGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation_util-msg:xy_valid-val is deprecated.  Use navigation_util-msg:xy_valid instead.")
  (xy_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigationPosGoal>) ostream)
  "Serializes a message object of type '<NavigationPosGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tolerance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'xy_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigationPosGoal>) istream)
  "Deserializes a message object of type '<NavigationPosGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tolerance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'xy_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigationPosGoal>)))
  "Returns string type for a message object of type '<NavigationPosGoal>"
  "navigation_util/NavigationPosGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigationPosGoal)))
  "Returns string type for a message object of type 'NavigationPosGoal"
  "navigation_util/NavigationPosGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigationPosGoal>)))
  "Returns md5sum for a message object of type '<NavigationPosGoal>"
  "040239196a5b3aef24d736ced5506739")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigationPosGoal)))
  "Returns md5sum for a message object of type 'NavigationPosGoal"
  "040239196a5b3aef24d736ced5506739")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigationPosGoal>)))
  "Returns full string definition for message of type '<NavigationPosGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%geometry_msgs/PoseStamped pose~%~%#Termination criterion, in terms of sum of squared error per dimension~%float32 tolerance~%bool xy_valid~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigationPosGoal)))
  "Returns full string definition for message of type 'NavigationPosGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%geometry_msgs/PoseStamped pose~%~%#Termination criterion, in terms of sum of squared error per dimension~%float32 tolerance~%bool xy_valid~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigationPosGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigationPosGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigationPosGoal
    (cl:cons ':pose (pose msg))
    (cl:cons ':tolerance (tolerance msg))
    (cl:cons ':xy_valid (xy_valid msg))
))