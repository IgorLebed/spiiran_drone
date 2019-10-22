;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::LogEndReq)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'LogEndReq (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::LOGENDREQ")
  (make-package "MAVROS_MSGS::LOGENDREQ"))
(unless (find-package "MAVROS_MSGS::LOGENDREQREQUEST")
  (make-package "MAVROS_MSGS::LOGENDREQREQUEST"))
(unless (find-package "MAVROS_MSGS::LOGENDREQRESPONSE")
  (make-package "MAVROS_MSGS::LOGENDREQRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::LogEndReqRequest
  :super ros::object
  :slots ())

(defmethod mavros_msgs::LogEndReqRequest
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

(defclass mavros_msgs::LogEndReqResponse
  :super ros::object
  :slots (_success ))

(defmethod mavros_msgs::LogEndReqResponse
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

(defclass mavros_msgs::LogEndReq
  :super ros::object
  :slots ())

(setf (get mavros_msgs::LogEndReq :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get mavros_msgs::LogEndReq :datatype-) "mavros_msgs/LogEndReq")
(setf (get mavros_msgs::LogEndReq :request) mavros_msgs::LogEndReqRequest)
(setf (get mavros_msgs::LogEndReq :response) mavros_msgs::LogEndReqResponse)

(defmethod mavros_msgs::LogEndReqRequest
  (:response () (instance mavros_msgs::LogEndReqResponse :init)))

(setf (get mavros_msgs::LogEndReqRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get mavros_msgs::LogEndReqRequest :datatype-) "mavros_msgs/LogEndReqRequest")
(setf (get mavros_msgs::LogEndReqRequest :definition-)
      "

---
bool success
")

(setf (get mavros_msgs::LogEndReqResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get mavros_msgs::LogEndReqResponse :datatype-) "mavros_msgs/LogEndReqResponse")
(setf (get mavros_msgs::LogEndReqResponse :definition-)
      "

---
bool success
")



(provide :mavros_msgs/LogEndReq "358e233cde0c8a8bcfea4ce193f8fc15")


