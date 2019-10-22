;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::AutopilotVersion)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'AutopilotVersion (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::AUTOPILOTVERSION")
  (make-package "MAVROS_MSGS::AUTOPILOTVERSION"))
(unless (find-package "MAVROS_MSGS::AUTOPILOTVERSIONREQUEST")
  (make-package "MAVROS_MSGS::AUTOPILOTVERSIONREQUEST"))
(unless (find-package "MAVROS_MSGS::AUTOPILOTVERSIONRESPONSE")
  (make-package "MAVROS_MSGS::AUTOPILOTVERSIONRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::AutopilotVersionRequest
  :super ros::object
  :slots ())

(defmethod mavros_msgs::AutopilotVersionRequest
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

(defclass mavros_msgs::AutopilotVersionResponse
  :super ros::object
  :slots (_version _success ))

(defmethod mavros_msgs::AutopilotVersionResponse
  (:init
   (&key
    ((:version __version) "")
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _version (string __version))
   (setq _success __success)
   self)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; string _version
    4 (length _version)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _version
       (write-long (length _version) s) (princ _version s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mavros_msgs::AutopilotVersion
  :super ros::object
  :slots ())

(setf (get mavros_msgs::AutopilotVersion :md5sum-) "100332dc23a0380d220694dccac63ae2")
(setf (get mavros_msgs::AutopilotVersion :datatype-) "mavros_msgs/AutopilotVersion")
(setf (get mavros_msgs::AutopilotVersion :request) mavros_msgs::AutopilotVersionRequest)
(setf (get mavros_msgs::AutopilotVersion :response) mavros_msgs::AutopilotVersionResponse)

(defmethod mavros_msgs::AutopilotVersionRequest
  (:response () (instance mavros_msgs::AutopilotVersionResponse :init)))

(setf (get mavros_msgs::AutopilotVersionRequest :md5sum-) "100332dc23a0380d220694dccac63ae2")
(setf (get mavros_msgs::AutopilotVersionRequest :datatype-) "mavros_msgs/AutopilotVersionRequest")
(setf (get mavros_msgs::AutopilotVersionRequest :definition-)
      "

---
string version
bool success

")

(setf (get mavros_msgs::AutopilotVersionResponse :md5sum-) "100332dc23a0380d220694dccac63ae2")
(setf (get mavros_msgs::AutopilotVersionResponse :datatype-) "mavros_msgs/AutopilotVersionResponse")
(setf (get mavros_msgs::AutopilotVersionResponse :definition-)
      "

---
string version
bool success

")



(provide :mavros_msgs/AutopilotVersion "100332dc23a0380d220694dccac63ae2")


