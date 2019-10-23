;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::LogEraseReq)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'LogEraseReq (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::LOGERASEREQ")
  (make-package "MAVROS_MSGS::LOGERASEREQ"))
(unless (find-package "MAVROS_MSGS::LOGERASEREQREQUEST")
  (make-package "MAVROS_MSGS::LOGERASEREQREQUEST"))
(unless (find-package "MAVROS_MSGS::LOGERASEREQRESPONSE")
  (make-package "MAVROS_MSGS::LOGERASEREQRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::LogEraseReqRequest
  :super ros::object
  :slots ())

(defmethod mavros_msgs::LogEraseReqRequest
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

(defclass mavros_msgs::LogEraseReqResponse
  :super ros::object
  :slots (_success ))

(defmethod mavros_msgs::LogEraseReqResponse
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

(defclass mavros_msgs::LogEraseReq
  :super ros::object
  :slots ())

(setf (get mavros_msgs::LogEraseReq :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get mavros_msgs::LogEraseReq :datatype-) "mavros_msgs/LogEraseReq")
(setf (get mavros_msgs::LogEraseReq :request) mavros_msgs::LogEraseReqRequest)
(setf (get mavros_msgs::LogEraseReq :response) mavros_msgs::LogEraseReqResponse)

(defmethod mavros_msgs::LogEraseReqRequest
  (:response () (instance mavros_msgs::LogEraseReqResponse :init)))

(setf (get mavros_msgs::LogEraseReqRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get mavros_msgs::LogEraseReqRequest :datatype-) "mavros_msgs/LogEraseReqRequest")
(setf (get mavros_msgs::LogEraseReqRequest :definition-)
      "


---
bool success

")

(setf (get mavros_msgs::LogEraseReqResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get mavros_msgs::LogEraseReqResponse :datatype-) "mavros_msgs/LogEraseReqResponse")
(setf (get mavros_msgs::LogEraseReqResponse :definition-)
      "


---
bool success

")



(provide :mavros_msgs/LogEraseReq "358e233cde0c8a8bcfea4ce193f8fc15")


