; Auto-generated. Do not edit!


(cl:in-package jevois-msg)


;//! \htmlinclude ArTagList.msg.html

(cl:defclass <ArTagList> (roslisp-msg-protocol:ros-message)
  ((artags
    :reader artags
    :initarg :artags
    :type (cl:vector jevois-msg:ArTag)
   :initform (cl:make-array 0 :element-type 'jevois-msg:ArTag :initial-element (cl:make-instance 'jevois-msg:ArTag))))
)

(cl:defclass ArTagList (<ArTagList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArTagList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArTagList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jevois-msg:<ArTagList> is deprecated: use jevois-msg:ArTagList instead.")))

(cl:ensure-generic-function 'artags-val :lambda-list '(m))
(cl:defmethod artags-val ((m <ArTagList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jevois-msg:artags-val is deprecated.  Use jevois-msg:artags instead.")
  (artags m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArTagList>) ostream)
  "Serializes a message object of type '<ArTagList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'artags))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'artags))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArTagList>) istream)
  "Deserializes a message object of type '<ArTagList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'artags) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'artags)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'jevois-msg:ArTag))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArTagList>)))
  "Returns string type for a message object of type '<ArTagList>"
  "jevois/ArTagList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArTagList)))
  "Returns string type for a message object of type 'ArTagList"
  "jevois/ArTagList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArTagList>)))
  "Returns md5sum for a message object of type '<ArTagList>"
  "5b47f96c75985e348d4ba777b500a3e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArTagList)))
  "Returns md5sum for a message object of type 'ArTagList"
  "5b47f96c75985e348d4ba777b500a3e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArTagList>)))
  "Returns full string definition for message of type '<ArTagList>"
  (cl:format cl:nil "#Vector of ArTags detected~%~%jevois/ArTag[] artags~%~%================================================================================~%MSG: jevois/ArTag~%#Stores ARTag data~%~%Header header~%int16 marker_id~%string serstyle~%string tagtype~%geometry_msgs/Quaternion quat~%float32 x~%float32 y~%float32 z~%float32 rot_x~%float32 rot_y~%float32 rot_z~%float32 confidence~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArTagList)))
  "Returns full string definition for message of type 'ArTagList"
  (cl:format cl:nil "#Vector of ArTags detected~%~%jevois/ArTag[] artags~%~%================================================================================~%MSG: jevois/ArTag~%#Stores ARTag data~%~%Header header~%int16 marker_id~%string serstyle~%string tagtype~%geometry_msgs/Quaternion quat~%float32 x~%float32 y~%float32 z~%float32 rot_x~%float32 rot_y~%float32 rot_z~%float32 confidence~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArTagList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'artags) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArTagList>))
  "Converts a ROS message object to a list"
  (cl:list 'ArTagList
    (cl:cons ':artags (artags msg))
))
