;; Auto-generated. Do not edit!


(when (boundp 'cpp_api::UserData)
  (if (not (find-package "CPP_API"))
    (make-package "CPP_API"))
  (shadow 'UserData (find-package "CPP_API")))
(unless (find-package "CPP_API::USERDATA")
  (make-package "CPP_API::USERDATA"))

(in-package "ROS")
;;//! \htmlinclude UserData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cpp_api::UserData
  :super ros::object
  :slots (_header _data_string _data_double ))

(defmethod cpp_api::UserData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data_string __data_string) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:data_double __data_double) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _data_string __data_string)
   (setq _data_double __data_double)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:data_string
   (&optional __data_string)
   (if __data_string (setq _data_string __data_string)) _data_string)
  (:data_double
   (&optional __data_double)
   (if __data_double (setq _data_double __data_double)) _data_double)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _data_string
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _data_string)) 4
    ;; float64[] _data_double
    (* 8    (length _data_double)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _data_string
     (write-long (length _data_string) s)
     (dolist (elem _data_string)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _data_double
     (write-long (length _data_double) s)
     (dotimes (i (length _data_double))
       (sys::poke (elt _data_double i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _data_string
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data_string (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _data_string i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _data_double
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data_double (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data_double i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get cpp_api::UserData :md5sum-) "e1b785877a526c8a4bf870310420a136")
(setf (get cpp_api::UserData :datatype-) "cpp_api/UserData")
(setf (get cpp_api::UserData :definition-)
      "std_msgs/Header header
string[] data_string
float64[] data_double
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



(provide :cpp_api/UserData "e1b785877a526c8a4bf870310420a136")


