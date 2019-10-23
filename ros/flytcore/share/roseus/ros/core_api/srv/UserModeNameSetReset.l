;; Auto-generated. Do not edit!


(when (boundp 'core_api::UserModeNameSetReset)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'UserModeNameSetReset (find-package "CORE_API")))
(unless (find-package "CORE_API::USERMODENAMESETRESET")
  (make-package "CORE_API::USERMODENAMESETRESET"))
(unless (find-package "CORE_API::USERMODENAMESETRESETREQUEST")
  (make-package "CORE_API::USERMODENAMESETRESETREQUEST"))
(unless (find-package "CORE_API::USERMODENAMESETRESETRESPONSE")
  (make-package "CORE_API::USERMODENAMESETRESETRESPONSE"))

(in-package "ROS")





(defclass core_api::UserModeNameSetResetRequest
  :super ros::object
  :slots (_mode_name ))

(defmethod core_api::UserModeNameSetResetRequest
  (:init
   (&key
    ((:mode_name __mode_name) "")
    )
   (send-super :init)
   (setq _mode_name (string __mode_name))
   self)
  (:mode_name
   (&optional __mode_name)
   (if __mode_name (setq _mode_name __mode_name)) _mode_name)
  (:serialization-length
   ()
   (+
    ;; string _mode_name
    4 (length _mode_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mode_name
       (write-long (length _mode_name) s) (princ _mode_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mode_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass core_api::UserModeNameSetResetResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::UserModeNameSetResetResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass core_api::UserModeNameSetReset
  :super ros::object
  :slots ())

(setf (get core_api::UserModeNameSetReset :md5sum-) "c06586fa4c917507a885a22dde0aa9b1")
(setf (get core_api::UserModeNameSetReset :datatype-) "core_api/UserModeNameSetReset")
(setf (get core_api::UserModeNameSetReset :request) core_api::UserModeNameSetResetRequest)
(setf (get core_api::UserModeNameSetReset :response) core_api::UserModeNameSetResetResponse)

(defmethod core_api::UserModeNameSetResetRequest
  (:response () (instance core_api::UserModeNameSetResetResponse :init)))

(setf (get core_api::UserModeNameSetResetRequest :md5sum-) "c06586fa4c917507a885a22dde0aa9b1")
(setf (get core_api::UserModeNameSetResetRequest :datatype-) "core_api/UserModeNameSetResetRequest")
(setf (get core_api::UserModeNameSetResetRequest :definition-)
      "string mode_name
---
bool success
string message

")

(setf (get core_api::UserModeNameSetResetResponse :md5sum-) "c06586fa4c917507a885a22dde0aa9b1")
(setf (get core_api::UserModeNameSetResetResponse :datatype-) "core_api/UserModeNameSetResetResponse")
(setf (get core_api::UserModeNameSetResetResponse :definition-)
      "string mode_name
---
bool success
string message

")



(provide :core_api/UserModeNameSetReset "c06586fa4c917507a885a22dde0aa9b1")


