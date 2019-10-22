;; Auto-generated. Do not edit!


(when (boundp 'core_api::FirmwareUpgrade)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'FirmwareUpgrade (find-package "CORE_API")))
(unless (find-package "CORE_API::FIRMWAREUPGRADE")
  (make-package "CORE_API::FIRMWAREUPGRADE"))
(unless (find-package "CORE_API::FIRMWAREUPGRADEREQUEST")
  (make-package "CORE_API::FIRMWAREUPGRADEREQUEST"))
(unless (find-package "CORE_API::FIRMWAREUPGRADERESPONSE")
  (make-package "CORE_API::FIRMWAREUPGRADERESPONSE"))

(in-package "ROS")





(defclass core_api::FirmwareUpgradeRequest
  :super ros::object
  :slots (_filepath ))

(defmethod core_api::FirmwareUpgradeRequest
  (:init
   (&key
    ((:filepath __filepath) "")
    )
   (send-super :init)
   (setq _filepath (string __filepath))
   self)
  (:filepath
   (&optional __filepath)
   (if __filepath (setq _filepath __filepath)) _filepath)
  (:serialization-length
   ()
   (+
    ;; string _filepath
    4 (length _filepath)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filepath
       (write-long (length _filepath) s) (princ _filepath s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filepath
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filepath (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass core_api::FirmwareUpgradeResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::FirmwareUpgradeResponse
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

(defclass core_api::FirmwareUpgrade
  :super ros::object
  :slots ())

(setf (get core_api::FirmwareUpgrade :md5sum-) "bde267f7dad1da13b302d98acf957681")
(setf (get core_api::FirmwareUpgrade :datatype-) "core_api/FirmwareUpgrade")
(setf (get core_api::FirmwareUpgrade :request) core_api::FirmwareUpgradeRequest)
(setf (get core_api::FirmwareUpgrade :response) core_api::FirmwareUpgradeResponse)

(defmethod core_api::FirmwareUpgradeRequest
  (:response () (instance core_api::FirmwareUpgradeResponse :init)))

(setf (get core_api::FirmwareUpgradeRequest :md5sum-) "bde267f7dad1da13b302d98acf957681")
(setf (get core_api::FirmwareUpgradeRequest :datatype-) "core_api/FirmwareUpgradeRequest")
(setf (get core_api::FirmwareUpgradeRequest :definition-)
      "string filepath
---
bool success
string message

")

(setf (get core_api::FirmwareUpgradeResponse :md5sum-) "bde267f7dad1da13b302d98acf957681")
(setf (get core_api::FirmwareUpgradeResponse :datatype-) "core_api/FirmwareUpgradeResponse")
(setf (get core_api::FirmwareUpgradeResponse :definition-)
      "string filepath
---
bool success
string message

")



(provide :core_api/FirmwareUpgrade "bde267f7dad1da13b302d98acf957681")


