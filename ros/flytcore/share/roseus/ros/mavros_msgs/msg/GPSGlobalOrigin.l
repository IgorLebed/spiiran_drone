;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::GPSGlobalOrigin)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'GPSGlobalOrigin (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::GPSGLOBALORIGIN")
  (make-package "MAVROS_MSGS::GPSGLOBALORIGIN"))

(in-package "ROS")
;;//! \htmlinclude GPSGlobalOrigin.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::GPSGlobalOrigin
  :super ros::object
  :slots (_header _x_lat _y_long _z_alt ))

(defmethod mavros_msgs::GPSGlobalOrigin
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:x_lat __x_lat) 0.0)
    ((:y_long __y_long) 0.0)
    ((:z_alt __z_alt) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _x_lat (float __x_lat))
   (setq _y_long (float __y_long))
   (setq _z_alt (float __z_alt))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:x_lat
   (&optional __x_lat)
   (if __x_lat (setq _x_lat __x_lat)) _x_lat)
  (:y_long
   (&optional __y_long)
   (if __y_long (setq _y_long __y_long)) _y_long)
  (:z_alt
   (&optional __z_alt)
   (if __z_alt (setq _z_alt __z_alt)) _z_alt)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _x_lat
    4
    ;; float32 _y_long
    4
    ;; float32 _z_alt
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _x_lat
       (sys::poke _x_lat (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y_long
       (sys::poke _y_long (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z_alt
       (sys::poke _z_alt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _x_lat
     (setq _x_lat (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y_long
     (setq _y_long (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z_alt
     (setq _z_alt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mavros_msgs::GPSGlobalOrigin :md5sum-) "97beaea8077a69778b64e4ec4e002893")
(setf (get mavros_msgs::GPSGlobalOrigin :datatype-) "mavros_msgs/GPSGlobalOrigin")
(setf (get mavros_msgs::GPSGlobalOrigin :definition-)
      "# GPS_GLOBAL_ORIGIN message data

Header header

float32 x_lat
float32 y_long
float32 z_alt

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

")



(provide :mavros_msgs/GPSGlobalOrigin "97beaea8077a69778b64e4ec4e002893")


