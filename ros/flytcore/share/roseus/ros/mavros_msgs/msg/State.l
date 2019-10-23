;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::State)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'State (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::STATE")
  (make-package "MAVROS_MSGS::STATE"))

(in-package "ROS")
;;//! \htmlinclude State.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::State
  :super ros::object
  :slots (_header _connected _armed _guided _mode _mav_type _mav_autopilot _mav_sys_status ))

(defmethod mavros_msgs::State
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:connected __connected) nil)
    ((:armed __armed) nil)
    ((:guided __guided) nil)
    ((:mode __mode) "")
    ((:mav_type __mav_type) 0)
    ((:mav_autopilot __mav_autopilot) 0)
    ((:mav_sys_status __mav_sys_status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _connected __connected)
   (setq _armed __armed)
   (setq _guided __guided)
   (setq _mode (string __mode))
   (setq _mav_type (round __mav_type))
   (setq _mav_autopilot (round __mav_autopilot))
   (setq _mav_sys_status (round __mav_sys_status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:connected
   (&optional __connected)
   (if __connected (setq _connected __connected)) _connected)
  (:armed
   (&optional __armed)
   (if __armed (setq _armed __armed)) _armed)
  (:guided
   (&optional __guided)
   (if __guided (setq _guided __guided)) _guided)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:mav_type
   (&optional __mav_type)
   (if __mav_type (setq _mav_type __mav_type)) _mav_type)
  (:mav_autopilot
   (&optional __mav_autopilot)
   (if __mav_autopilot (setq _mav_autopilot __mav_autopilot)) _mav_autopilot)
  (:mav_sys_status
   (&optional __mav_sys_status)
   (if __mav_sys_status (setq _mav_sys_status __mav_sys_status)) _mav_sys_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _connected
    1
    ;; bool _armed
    1
    ;; bool _guided
    1
    ;; string _mode
    4 (length _mode)
    ;; uint8 _mav_type
    1
    ;; uint8 _mav_autopilot
    1
    ;; uint8 _mav_sys_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _connected
       (if _connected (write-byte -1 s) (write-byte 0 s))
     ;; bool _armed
       (if _armed (write-byte -1 s) (write-byte 0 s))
     ;; bool _guided
       (if _guided (write-byte -1 s) (write-byte 0 s))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; uint8 _mav_type
       (write-byte _mav_type s)
     ;; uint8 _mav_autopilot
       (write-byte _mav_autopilot s)
     ;; uint8 _mav_sys_status
       (write-byte _mav_sys_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _connected
     (setq _connected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _armed
     (setq _armed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _guided
     (setq _guided (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _mav_type
     (setq _mav_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mav_autopilot
     (setq _mav_autopilot (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mav_sys_status
     (setq _mav_sys_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mavros_msgs::State :md5sum-) "c3fa825e16d1350d54cd9b4e0f09a9f7")
(setf (get mavros_msgs::State :datatype-) "mavros_msgs/State")
(setf (get mavros_msgs::State :definition-)
      "# Current autopilot state
#
# Known modes listed here:
# http://wiki.ros.org/mavros/CustomModes

std_msgs/Header header
bool connected
bool armed
bool guided
string mode
uint8 mav_type
uint8 mav_autopilot
uint8 mav_sys_status

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



(provide :mavros_msgs/State "c3fa825e16d1350d54cd9b4e0f09a9f7")


