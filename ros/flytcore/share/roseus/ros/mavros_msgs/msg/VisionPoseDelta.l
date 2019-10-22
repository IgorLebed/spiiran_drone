;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::VisionPoseDelta)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'VisionPoseDelta (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::VISIONPOSEDELTA")
  (make-package "MAVROS_MSGS::VISIONPOSEDELTA"))

(in-package "ROS")
;;//! \htmlinclude VisionPoseDelta.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::VisionPoseDelta
  :super ros::object
  :slots (_header _time_delta_us _angle_delta_roll _angle_delta_pitch _angle_delta_yaw _position_delta_x _position_delta_y _position_delta_z _confidence ))

(defmethod mavros_msgs::VisionPoseDelta
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_delta_us __time_delta_us) 0)
    ((:angle_delta_roll __angle_delta_roll) 0.0)
    ((:angle_delta_pitch __angle_delta_pitch) 0.0)
    ((:angle_delta_yaw __angle_delta_yaw) 0.0)
    ((:position_delta_x __position_delta_x) 0.0)
    ((:position_delta_y __position_delta_y) 0.0)
    ((:position_delta_z __position_delta_z) 0.0)
    ((:confidence __confidence) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_delta_us (round __time_delta_us))
   (setq _angle_delta_roll (float __angle_delta_roll))
   (setq _angle_delta_pitch (float __angle_delta_pitch))
   (setq _angle_delta_yaw (float __angle_delta_yaw))
   (setq _position_delta_x (float __position_delta_x))
   (setq _position_delta_y (float __position_delta_y))
   (setq _position_delta_z (float __position_delta_z))
   (setq _confidence (round __confidence))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time_delta_us
   (&optional __time_delta_us)
   (if __time_delta_us (setq _time_delta_us __time_delta_us)) _time_delta_us)
  (:angle_delta_roll
   (&optional __angle_delta_roll)
   (if __angle_delta_roll (setq _angle_delta_roll __angle_delta_roll)) _angle_delta_roll)
  (:angle_delta_pitch
   (&optional __angle_delta_pitch)
   (if __angle_delta_pitch (setq _angle_delta_pitch __angle_delta_pitch)) _angle_delta_pitch)
  (:angle_delta_yaw
   (&optional __angle_delta_yaw)
   (if __angle_delta_yaw (setq _angle_delta_yaw __angle_delta_yaw)) _angle_delta_yaw)
  (:position_delta_x
   (&optional __position_delta_x)
   (if __position_delta_x (setq _position_delta_x __position_delta_x)) _position_delta_x)
  (:position_delta_y
   (&optional __position_delta_y)
   (if __position_delta_y (setq _position_delta_y __position_delta_y)) _position_delta_y)
  (:position_delta_z
   (&optional __position_delta_z)
   (if __position_delta_z (setq _position_delta_z __position_delta_z)) _position_delta_z)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _time_delta_us
    4
    ;; float32 _angle_delta_roll
    4
    ;; float32 _angle_delta_pitch
    4
    ;; float32 _angle_delta_yaw
    4
    ;; float32 _position_delta_x
    4
    ;; float32 _position_delta_y
    4
    ;; float32 _position_delta_z
    4
    ;; uint8 _confidence
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _time_delta_us
       (write-long _time_delta_us s)
     ;; float32 _angle_delta_roll
       (sys::poke _angle_delta_roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle_delta_pitch
       (sys::poke _angle_delta_pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle_delta_yaw
       (sys::poke _angle_delta_yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _position_delta_x
       (sys::poke _position_delta_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _position_delta_y
       (sys::poke _position_delta_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _position_delta_z
       (sys::poke _position_delta_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _confidence
       (write-byte _confidence s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _time_delta_us
     (setq _time_delta_us (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _angle_delta_roll
     (setq _angle_delta_roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle_delta_pitch
     (setq _angle_delta_pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle_delta_yaw
     (setq _angle_delta_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _position_delta_x
     (setq _position_delta_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _position_delta_y
     (setq _position_delta_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _position_delta_z
     (setq _position_delta_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _confidence
     (setq _confidence (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mavros_msgs::VisionPoseDelta :md5sum-) "19f289602e4e368ce290900eecb3f779")
(setf (get mavros_msgs::VisionPoseDelta :datatype-) "mavros_msgs/VisionPoseDelta")
(setf (get mavros_msgs::VisionPoseDelta :definition-)
      "# VISION_POSITION_DELTA message data

std_msgs/Header header

uint32 time_delta_us

float32 angle_delta_roll
float32 angle_delta_pitch
float32 angle_delta_yaw
float32 position_delta_x
float32 position_delta_y
float32 position_delta_z

uint8 confidence

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



(provide :mavros_msgs/VisionPoseDelta "19f289602e4e368ce290900eecb3f779")


