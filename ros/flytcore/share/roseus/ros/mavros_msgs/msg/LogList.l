;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::LogList)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'LogList (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::LOGLIST")
  (make-package "MAVROS_MSGS::LOGLIST"))

(in-package "ROS")
;;//! \htmlinclude LogList.msg.html


(defclass mavros_msgs::LogList
  :super ros::object
  :slots (_id _filename _autopilot _date _time _size _sbc_status ))

(defmethod mavros_msgs::LogList
  (:init
   (&key
    ((:id __id) 0)
    ((:filename __filename) "")
    ((:autopilot __autopilot) "")
    ((:date __date) "")
    ((:time __time) 0)
    ((:size __size) 0)
    ((:sbc_status __sbc_status) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _filename (string __filename))
   (setq _autopilot (string __autopilot))
   (setq _date (string __date))
   (setq _time (round __time))
   (setq _size (round __size))
   (setq _sbc_status (round __sbc_status))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:autopilot
   (&optional __autopilot)
   (if __autopilot (setq _autopilot __autopilot)) _autopilot)
  (:date
   (&optional __date)
   (if __date (setq _date __date)) _date)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:sbc_status
   (&optional __sbc_status)
   (if __sbc_status (setq _sbc_status __sbc_status)) _sbc_status)
  (:serialization-length
   ()
   (+
    ;; uint16 _id
    2
    ;; string _filename
    4 (length _filename)
    ;; string _autopilot
    4 (length _autopilot)
    ;; string _date
    4 (length _date)
    ;; uint32 _time
    4
    ;; uint32 _size
    4
    ;; uint8 _sbc_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _id
       (write-word _id s)
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;; string _autopilot
       (write-long (length _autopilot) s) (princ _autopilot s)
     ;; string _date
       (write-long (length _date) s) (princ _date s)
     ;; uint32 _time
       (write-long _time s)
     ;; uint32 _size
       (write-long _size s)
     ;; uint8 _sbc_status
       (write-byte _sbc_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _autopilot
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _autopilot (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _date
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _date (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _time
     (setq _time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _sbc_status
     (setq _sbc_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mavros_msgs::LogList :md5sum-) "a31e4c42d97337d2378f367a9d40f318")
(setf (get mavros_msgs::LogList :datatype-) "mavros_msgs/LogList")
(setf (get mavros_msgs::LogList :definition-)
      "# Base message format for every entry of log list
# sbc_status -> 0 for not available on SBC, 1 for available

uint16 id
string filename
string autopilot
string date
uint32 time
uint32 size
uint8 sbc_status

")



(provide :mavros_msgs/LogList "a31e4c42d97337d2378f367a9d40f318")


