;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::RCInMap)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'RCInMap (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::RCINMAP")
  (make-package "MAVROS_MSGS::RCINMAP"))

(in-package "ROS")
;;//! \htmlinclude RCInMap.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::RCInMap
  :super ros::object
  :slots (_header _rssi _channels ))

(defmethod mavros_msgs::RCInMap
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rssi __rssi) 0)
    ((:channels __channels) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _rssi (round __rssi))
   (setq _channels __channels)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:rssi
   (&optional __rssi)
   (if __rssi (setq _rssi __rssi)) _rssi)
  (:channels
   (&optional __channels)
   (if __channels (setq _channels __channels)) _channels)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _rssi
    1
    ;; float32[] _channels
    (* 4    (length _channels)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _rssi
       (write-byte _rssi s)
     ;; float32[] _channels
     (write-long (length _channels) s)
     (dotimes (i (length _channels))
       (sys::poke (elt _channels i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _rssi
     (setq _rssi (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32[] _channels
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _channels (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _channels i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get mavros_msgs::RCInMap :md5sum-) "4039fa96f71dfdaad8b6946cc670fd98")
(setf (get mavros_msgs::RCInMap :datatype-) "mavros_msgs/RCInMap")
(setf (get mavros_msgs::RCInMap :definition-)
      "# RAW RC input state

std_msgs/Header header
uint8 rssi
float32[] channels

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



(provide :mavros_msgs/RCInMap "4039fa96f71dfdaad8b6946cc670fd98")


