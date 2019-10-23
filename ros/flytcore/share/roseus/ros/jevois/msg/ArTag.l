;; Auto-generated. Do not edit!


(when (boundp 'jevois::ArTag)
  (if (not (find-package "JEVOIS"))
    (make-package "JEVOIS"))
  (shadow 'ArTag (find-package "JEVOIS")))
(unless (find-package "JEVOIS::ARTAG")
  (make-package "JEVOIS::ARTAG"))

(in-package "ROS")
;;//! \htmlinclude ArTag.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass jevois::ArTag
  :super ros::object
  :slots (_header _marker_id _serstyle _tagtype _quat _x _y _z _rot_x _rot_y _rot_z _confidence ))

(defmethod jevois::ArTag
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:marker_id __marker_id) 0)
    ((:serstyle __serstyle) "")
    ((:tagtype __tagtype) "")
    ((:quat __quat) (instance geometry_msgs::Quaternion :init))
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:rot_x __rot_x) 0.0)
    ((:rot_y __rot_y) 0.0)
    ((:rot_z __rot_z) 0.0)
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _marker_id (round __marker_id))
   (setq _serstyle (string __serstyle))
   (setq _tagtype (string __tagtype))
   (setq _quat __quat)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _rot_x (float __rot_x))
   (setq _rot_y (float __rot_y))
   (setq _rot_z (float __rot_z))
   (setq _confidence (float __confidence))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:marker_id
   (&optional __marker_id)
   (if __marker_id (setq _marker_id __marker_id)) _marker_id)
  (:serstyle
   (&optional __serstyle)
   (if __serstyle (setq _serstyle __serstyle)) _serstyle)
  (:tagtype
   (&optional __tagtype)
   (if __tagtype (setq _tagtype __tagtype)) _tagtype)
  (:quat
   (&rest __quat)
   (if (keywordp (car __quat))
       (send* _quat __quat)
     (progn
       (if __quat (setq _quat (car __quat)))
       _quat)))
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:rot_x
   (&optional __rot_x)
   (if __rot_x (setq _rot_x __rot_x)) _rot_x)
  (:rot_y
   (&optional __rot_y)
   (if __rot_y (setq _rot_y __rot_y)) _rot_y)
  (:rot_z
   (&optional __rot_z)
   (if __rot_z (setq _rot_z __rot_z)) _rot_z)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16 _marker_id
    2
    ;; string _serstyle
    4 (length _serstyle)
    ;; string _tagtype
    4 (length _tagtype)
    ;; geometry_msgs/Quaternion _quat
    (send _quat :serialization-length)
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _rot_x
    4
    ;; float32 _rot_y
    4
    ;; float32 _rot_z
    4
    ;; float32 _confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16 _marker_id
       (write-word _marker_id s)
     ;; string _serstyle
       (write-long (length _serstyle) s) (princ _serstyle s)
     ;; string _tagtype
       (write-long (length _tagtype) s) (princ _tagtype s)
     ;; geometry_msgs/Quaternion _quat
       (send _quat :serialize s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rot_x
       (sys::poke _rot_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rot_y
       (sys::poke _rot_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rot_z
       (sys::poke _rot_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16 _marker_id
     (setq _marker_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _serstyle
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _serstyle (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _tagtype
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tagtype (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Quaternion _quat
     (send _quat :deserialize buf ptr-) (incf ptr- (send _quat :serialization-length))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rot_x
     (setq _rot_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rot_y
     (setq _rot_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rot_z
     (setq _rot_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get jevois::ArTag :md5sum-) "d0ff331e9902aaedf65e8c451a744d9f")
(setf (get jevois::ArTag :datatype-) "jevois/ArTag")
(setf (get jevois::ArTag :definition-)
      "#Stores ARTag data

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



(provide :jevois/ArTag "d0ff331e9902aaedf65e8c451a744d9f")


