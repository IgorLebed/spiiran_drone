;; Auto-generated. Do not edit!


(when (boundp 'core_api::AutopilotReboot)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'AutopilotReboot (find-package "CORE_API")))
(unless (find-package "CORE_API::AUTOPILOTREBOOT")
  (make-package "CORE_API::AUTOPILOTREBOOT"))
(unless (find-package "CORE_API::AUTOPILOTREBOOTREQUEST")
  (make-package "CORE_API::AUTOPILOTREBOOTREQUEST"))
(unless (find-package "CORE_API::AUTOPILOTREBOOTRESPONSE")
  (make-package "CORE_API::AUTOPILOTREBOOTRESPONSE"))

(in-package "ROS")





(intern "*REBOOT*" (find-package "CORE_API::AUTOPILOTREBOOTREQUEST"))
(shadow '*REBOOT* (find-package "CORE_API::AUTOPILOTREBOOTREQUEST"))
(defconstant core_api::AutopilotRebootRequest::*REBOOT* 1)
(intern "*REBOOT_TO_SLEEP*" (find-package "CORE_API::AUTOPILOTREBOOTREQUEST"))
(shadow '*REBOOT_TO_SLEEP* (find-package "CORE_API::AUTOPILOTREBOOTREQUEST"))
(defconstant core_api::AutopilotRebootRequest::*REBOOT_TO_SLEEP* 3)
(intern "*REBOOT_FROM_SLEEP*" (find-package "CORE_API::AUTOPILOTREBOOTREQUEST"))
(shadow '*REBOOT_FROM_SLEEP* (find-package "CORE_API::AUTOPILOTREBOOTREQUEST"))
(defconstant core_api::AutopilotRebootRequest::*REBOOT_FROM_SLEEP* 4)
(defclass core_api::AutopilotRebootRequest
  :super ros::object
  :slots (_reboot_mode ))

(defmethod core_api::AutopilotRebootRequest
  (:init
   (&key
    ((:reboot_mode __reboot_mode) 0)
    )
   (send-super :init)
   (setq _reboot_mode (round __reboot_mode))
   self)
  (:reboot_mode
   (&optional __reboot_mode)
   (if __reboot_mode (setq _reboot_mode __reboot_mode)) _reboot_mode)
  (:serialization-length
   ()
   (+
    ;; int8 _reboot_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _reboot_mode
       (write-byte _reboot_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _reboot_mode
     (setq _reboot_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _reboot_mode 127) (setq _reboot_mode (- _reboot_mode 256)))
   ;;
   self)
  )

(defclass core_api::AutopilotRebootResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::AutopilotRebootResponse
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

(defclass core_api::AutopilotReboot
  :super ros::object
  :slots ())

(setf (get core_api::AutopilotReboot :md5sum-) "fc3bd1e818efe2a00584996f3753a5c9")
(setf (get core_api::AutopilotReboot :datatype-) "core_api/AutopilotReboot")
(setf (get core_api::AutopilotReboot :request) core_api::AutopilotRebootRequest)
(setf (get core_api::AutopilotReboot :response) core_api::AutopilotRebootResponse)

(defmethod core_api::AutopilotRebootRequest
  (:response () (instance core_api::AutopilotRebootResponse :init)))

(setf (get core_api::AutopilotRebootRequest :md5sum-) "fc3bd1e818efe2a00584996f3753a5c9")
(setf (get core_api::AutopilotRebootRequest :datatype-) "core_api/AutopilotRebootRequest")
(setf (get core_api::AutopilotRebootRequest :definition-)
      "int8 REBOOT=1
int8 REBOOT_TO_SLEEP=3
int8 REBOOT_FROM_SLEEP=4

int8 reboot_mode
---
bool success
string message

")

(setf (get core_api::AutopilotRebootResponse :md5sum-) "fc3bd1e818efe2a00584996f3753a5c9")
(setf (get core_api::AutopilotRebootResponse :datatype-) "core_api/AutopilotRebootResponse")
(setf (get core_api::AutopilotRebootResponse :definition-)
      "int8 REBOOT=1
int8 REBOOT_TO_SLEEP=3
int8 REBOOT_FROM_SLEEP=4

int8 reboot_mode
---
bool success
string message

")



(provide :core_api/AutopilotReboot "fc3bd1e818efe2a00584996f3753a5c9")


