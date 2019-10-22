;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::LogDownloadReq)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'LogDownloadReq (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::LOGDOWNLOADREQ")
  (make-package "MAVROS_MSGS::LOGDOWNLOADREQ"))
(unless (find-package "MAVROS_MSGS::LOGDOWNLOADREQREQUEST")
  (make-package "MAVROS_MSGS::LOGDOWNLOADREQREQUEST"))
(unless (find-package "MAVROS_MSGS::LOGDOWNLOADREQRESPONSE")
  (make-package "MAVROS_MSGS::LOGDOWNLOADREQRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::LogDownloadReqRequest
  :super ros::object
  :slots (_logid ))

(defmethod mavros_msgs::LogDownloadReqRequest
  (:init
   (&key
    ((:logid __logid) 0)
    )
   (send-super :init)
   (setq _logid (round __logid))
   self)
  (:logid
   (&optional __logid)
   (if __logid (setq _logid __logid)) _logid)
  (:serialization-length
   ()
   (+
    ;; uint8 _logid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _logid
       (write-byte _logid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _logid
     (setq _logid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass mavros_msgs::LogDownloadReqResponse
  :super ros::object
  :slots (_success ))

(defmethod mavros_msgs::LogDownloadReqResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mavros_msgs::LogDownloadReq
  :super ros::object
  :slots ())

(setf (get mavros_msgs::LogDownloadReq :md5sum-) "6aa3fdb1a1026603f60d521893f4fc94")
(setf (get mavros_msgs::LogDownloadReq :datatype-) "mavros_msgs/LogDownloadReq")
(setf (get mavros_msgs::LogDownloadReq :request) mavros_msgs::LogDownloadReqRequest)
(setf (get mavros_msgs::LogDownloadReq :response) mavros_msgs::LogDownloadReqResponse)

(defmethod mavros_msgs::LogDownloadReqRequest
  (:response () (instance mavros_msgs::LogDownloadReqResponse :init)))

(setf (get mavros_msgs::LogDownloadReqRequest :md5sum-) "6aa3fdb1a1026603f60d521893f4fc94")
(setf (get mavros_msgs::LogDownloadReqRequest :datatype-) "mavros_msgs/LogDownloadReqRequest")
(setf (get mavros_msgs::LogDownloadReqRequest :definition-)
      "


uint8 logid
---
bool success

")

(setf (get mavros_msgs::LogDownloadReqResponse :md5sum-) "6aa3fdb1a1026603f60d521893f4fc94")
(setf (get mavros_msgs::LogDownloadReqResponse :datatype-) "mavros_msgs/LogDownloadReqResponse")
(setf (get mavros_msgs::LogDownloadReqResponse :definition-)
      "


uint8 logid
---
bool success

")



(provide :mavros_msgs/LogDownloadReq "6aa3fdb1a1026603f60d521893f4fc94")


