;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::LogCancelReq)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'LogCancelReq (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::LOGCANCELREQ")
  (make-package "MAVROS_MSGS::LOGCANCELREQ"))
(unless (find-package "MAVROS_MSGS::LOGCANCELREQREQUEST")
  (make-package "MAVROS_MSGS::LOGCANCELREQREQUEST"))
(unless (find-package "MAVROS_MSGS::LOGCANCELREQRESPONSE")
  (make-package "MAVROS_MSGS::LOGCANCELREQRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::LogCancelReqRequest
  :super ros::object
  :slots ())

(defmethod mavros_msgs::LogCancelReqRequest
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

(defclass mavros_msgs::LogCancelReqResponse
  :super ros::object
  :slots (_success ))

(defmethod mavros_msgs::LogCancelReqResponse
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

(defclass mavros_msgs::LogCancelReq
  :super ros::object
  :slots ())

(setf (get mavros_msgs::LogCancelReq :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get mavros_msgs::LogCancelReq :datatype-) "mavros_msgs/LogCancelReq")
(setf (get mavros_msgs::LogCancelReq :request) mavros_msgs::LogCancelReqRequest)
(setf (get mavros_msgs::LogCancelReq :response) mavros_msgs::LogCancelReqResponse)

(defmethod mavros_msgs::LogCancelReqRequest
  (:response () (instance mavros_msgs::LogCancelReqResponse :init)))

(setf (get mavros_msgs::LogCancelReqRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get mavros_msgs::LogCancelReqRequest :datatype-) "mavros_msgs/LogCancelReqRequest")
(setf (get mavros_msgs::LogCancelReqRequest :definition-)
      "

---
bool success
")

(setf (get mavros_msgs::LogCancelReqResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get mavros_msgs::LogCancelReqResponse :datatype-) "mavros_msgs/LogCancelReqResponse")
(setf (get mavros_msgs::LogCancelReqResponse :definition-)
      "

---
bool success
")



(provide :mavros_msgs/LogCancelReq "358e233cde0c8a8bcfea4ce193f8fc15")


