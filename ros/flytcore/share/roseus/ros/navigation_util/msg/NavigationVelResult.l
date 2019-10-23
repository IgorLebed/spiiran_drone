;; Auto-generated. Do not edit!


(when (boundp 'navigation_util::NavigationVelResult)
  (if (not (find-package "NAVIGATION_UTIL"))
    (make-package "NAVIGATION_UTIL"))
  (shadow 'NavigationVelResult (find-package "NAVIGATION_UTIL")))
(unless (find-package "NAVIGATION_UTIL::NAVIGATIONVELRESULT")
  (make-package "NAVIGATION_UTIL::NAVIGATIONVELRESULT"))

(in-package "ROS")
;;//! \htmlinclude NavigationVelResult.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass navigation_util::NavigationVelResult
  :super ros::object
  :slots (_twist ))

(defmethod navigation_util::NavigationVelResult
  (:init
   (&key
    ((:twist __twist) (instance geometry_msgs::TwistStamped :init))
    )
   (send-super :init)
   (setq _twist __twist)
   self)
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/TwistStamped _twist
    (send _twist :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/TwistStamped _twist
       (send _twist :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/TwistStamped _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;;
   self)
  )

(setf (get navigation_util::NavigationVelResult :md5sum-) "0ee72deb066cef47f7a9ab9d33742d16")
(setf (get navigation_util::NavigationVelResult :datatype-) "navigation_util/NavigationVelResult")
(setf (get navigation_util::NavigationVelResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
geometry_msgs/TwistStamped twist

================================================================================
MSG: geometry_msgs/TwistStamped
# A twist with reference coordinate frame and timestamp
Header header
Twist twist

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :navigation_util/NavigationVelResult "0ee72deb066cef47f7a9ab9d33742d16")

