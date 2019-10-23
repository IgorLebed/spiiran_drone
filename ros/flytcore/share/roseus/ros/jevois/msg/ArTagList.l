;; Auto-generated. Do not edit!


(when (boundp 'jevois::ArTagList)
  (if (not (find-package "JEVOIS"))
    (make-package "JEVOIS"))
  (shadow 'ArTagList (find-package "JEVOIS")))
(unless (find-package "JEVOIS::ARTAGLIST")
  (make-package "JEVOIS::ARTAGLIST"))

(in-package "ROS")
;;//! \htmlinclude ArTagList.msg.html


(defclass jevois::ArTagList
  :super ros::object
  :slots (_artags ))

(defmethod jevois::ArTagList
  (:init
   (&key
    ((:artags __artags) (let (r) (dotimes (i 0) (push (instance jevois::ArTag :init) r)) r))
    )
   (send-super :init)
   (setq _artags __artags)
   self)
  (:artags
   (&rest __artags)
   (if (keywordp (car __artags))
       (send* _artags __artags)
     (progn
       (if __artags (setq _artags (car __artags)))
       _artags)))
  (:serialization-length
   ()
   (+
    ;; jevois/ArTag[] _artags
    (apply #'+ (send-all _artags :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; jevois/ArTag[] _artags
     (write-long (length _artags) s)
     (dolist (elem _artags)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; jevois/ArTag[] _artags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _artags (let (r) (dotimes (i n) (push (instance jevois::ArTag :init) r)) r))
     (dolist (elem- _artags)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get jevois::ArTagList :md5sum-) "5b47f96c75985e348d4ba777b500a3e5")
(setf (get jevois::ArTagList :datatype-) "jevois/ArTagList")
(setf (get jevois::ArTagList :definition-)
      "#Vector of ArTags detected

jevois/ArTag[] artags

================================================================================
MSG: jevois/ArTag
#Stores ARTag data

Header header
int16 marker_id
string serstyle
string tagtype
geometry_msgs/Quaternion quat
float32 x
float32 y
float32 z
float32 rot_x
float32 rot_y
float32 rot_z
float32 confidence
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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :jevois/ArTagList "5b47f96c75985e348d4ba777b500a3e5")


