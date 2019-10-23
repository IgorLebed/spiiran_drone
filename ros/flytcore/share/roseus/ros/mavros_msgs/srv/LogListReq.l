;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::LogListReq)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'LogListReq (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::LOGLISTREQ")
  (make-package "MAVROS_MSGS::LOGLISTREQ"))
(unless (find-package "MAVROS_MSGS::LOGLISTREQREQUEST")
  (make-package "MAVROS_MSGS::LOGLISTREQREQUEST"))
(unless (find-package "MAVROS_MSGS::LOGLISTREQRESPONSE")
  (make-package "MAVROS_MSGS::LOGLISTREQRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::LogListReqRequest
  :super ros::object
  :slots ())

(defmethod mavros_msgs::LogListReqRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass mavros_msgs::LogListReqResponse
  :super ros::object
  :slots (_success _loglist ))

(defmethod mavros_msgs::LogListReqResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:loglist __loglist) (let (r) (dotimes (i 0) (push (instance mavros_msgs::LogList :init) r)) r))
    )
   (send-super :init)
   (setq _success __success)
   (setq _loglist __loglist)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:loglist
   (&rest __loglist)
   (if (keywordp (car __loglist))
       (send* _loglist __loglist)
     (progn
       (if __loglist (setq _loglist (car __loglist)))
       _loglist)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; mavros_msgs/LogList[] _loglist
    (apply #'+ (send-all _loglist :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; mavros_msgs/LogList[] _loglist
     (write-long (length _loglist) s)
     (dolist (elem _loglist)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; mavros_msgs/LogList[] _loglist
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _loglist (let (r) (dotimes (i n) (push (instance mavros_msgs::LogList :init) r)) r))
     (dolist (elem- _loglist)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass mavros_msgs::LogListReq
  :super ros::object
  :slots ())

(setf (get mavros_msgs::LogListReq :md5sum-) "6364c880a0085320615fba1995407d03")
(setf (get mavros_msgs::LogListReq :datatype-) "mavros_msgs/LogListReq")
(setf (get mavros_msgs::LogListReq :request) mavros_msgs::LogListReqRequest)
(setf (get mavros_msgs::LogListReq :response) mavros_msgs::LogListReqResponse)

(defmethod mavros_msgs::LogListReqRequest
  (:response () (instance mavros_msgs::LogListReqResponse :init)))

(setf (get mavros_msgs::LogListReqRequest :md5sum-) "6364c880a0085320615fba1995407d03")
(setf (get mavros_msgs::LogListReqRequest :datatype-) "mavros_msgs/LogListReqRequest")
(setf (get mavros_msgs::LogListReqRequest :definition-)
      "


---
bool success

LogList[] loglist




================================================================================
MSG: mavros_msgs/LogList
# Base message format for every entry of log list
# sbc_status -> 0 for not available on SBC, 1 for available

uint16 id
string filename
string autopilot
string date
uint32 time
uint32 size
uint8 sbc_status
")

(setf (get mavros_msgs::LogListReqResponse :md5sum-) "6364c880a0085320615fba1995407d03")
(setf (get mavros_msgs::LogListReqResponse :datatype-) "mavros_msgs/LogListReqResponse")
(setf (get mavros_msgs::LogListReqResponse :definition-)
      "


---
bool success

LogList[] loglist




================================================================================
MSG: mavros_msgs/LogList
# Base message format for every entry of log list
# sbc_status -> 0 for not available on SBC, 1 for available

uint16 id
string filename
string autopilot
string date
uint32 time
uint32 size
uint8 sbc_status
")



(provide :mavros_msgs/LogListReq "6364c880a0085320615fba1995407d03")


