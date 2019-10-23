;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::AutopilotAppControl)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'AutopilotAppControl (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::AUTOPILOTAPPCONTROL")
  (make-package "MAVROS_MSGS::AUTOPILOTAPPCONTROL"))
(unless (find-package "MAVROS_MSGS::AUTOPILOTAPPCONTROLREQUEST")
  (make-package "MAVROS_MSGS::AUTOPILOTAPPCONTROLREQUEST"))
(unless (find-package "MAVROS_MSGS::AUTOPILOTAPPCONTROLRESPONSE")
  (make-package "MAVROS_MSGS::AUTOPILOTAPPCONTROLRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::AutopilotAppControlRequest
  :super ros::object
  :slots (_app_name _arguments ))

(defmethod mavros_msgs::AutopilotAppControlRequest
  (:init
   (&key
    ((:app_name __app_name) "")
    ((:arguments __arguments) "")
    )
   (send-super :init)
   (setq _app_name (string __app_name))
   (setq _arguments (string __arguments))
   self)
  (:app_name
   (&optional __app_name)
   (if __app_name (setq _app_name __app_name)) _app_name)
  (:arguments
   (&optional __arguments)
   (if __arguments (setq _arguments __arguments)) _arguments)
  (:serialization-length
   ()
   (+
    ;; string _app_name
    4 (length _app_name)
    ;; string _arguments
    4 (length _arguments)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _app_name
       (write-long (length _app_name) s) (princ _app_name s)
     ;; string _arguments
       (write-long (length _arguments) s) (princ _arguments s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _app_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _app_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _arguments
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _arguments (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mavros_msgs::AutopilotAppControlResponse
  :super ros::object
  :slots (_success ))

(defmethod mavros_msgs::AutopilotAppControlResponse
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

(defclass mavros_msgs::AutopilotAppControl
  :super ros::object
  :slots ())

(setf (get mavros_msgs::AutopilotAppControl :md5sum-) "04950ad0083546b156a464893d073280")
(setf (get mavros_msgs::AutopilotAppControl :datatype-) "mavros_msgs/AutopilotAppControl")
(setf (get mavros_msgs::AutopilotAppControl :request) mavros_msgs::AutopilotAppControlRequest)
(setf (get mavros_msgs::AutopilotAppControl :response) mavros_msgs::AutopilotAppControlResponse)

(defmethod mavros_msgs::AutopilotAppControlRequest
  (:response () (instance mavros_msgs::AutopilotAppControlResponse :init)))

(setf (get mavros_msgs::AutopilotAppControlRequest :md5sum-) "04950ad0083546b156a464893d073280")
(setf (get mavros_msgs::AutopilotAppControlRequest :datatype-) "mavros_msgs/AutopilotAppControlRequest")
(setf (get mavros_msgs::AutopilotAppControlRequest :definition-)
      "

string app_name
string arguments
---
bool success

")

(setf (get mavros_msgs::AutopilotAppControlResponse :md5sum-) "04950ad0083546b156a464893d073280")
(setf (get mavros_msgs::AutopilotAppControlResponse :datatype-) "mavros_msgs/AutopilotAppControlResponse")
(setf (get mavros_msgs::AutopilotAppControlResponse :definition-)
      "

string app_name
string arguments
---
bool success

")



(provide :mavros_msgs/AutopilotAppControl "04950ad0083546b156a464893d073280")


