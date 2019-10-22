;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::GetMissionStatus)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'GetMissionStatus (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::GETMISSIONSTATUS")
  (make-package "VISION_APPS::GETMISSIONSTATUS"))
(unless (find-package "VISION_APPS::GETMISSIONSTATUSREQUEST")
  (make-package "VISION_APPS::GETMISSIONSTATUSREQUEST"))
(unless (find-package "VISION_APPS::GETMISSIONSTATUSRESPONSE")
  (make-package "VISION_APPS::GETMISSIONSTATUSRESPONSE"))

(in-package "ROS")





(defclass vision_apps::GetMissionStatusRequest
  :super ros::object
  :slots ())

(defmethod vision_apps::GetMissionStatusRequest
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

(defclass vision_apps::GetMissionStatusResponse
  :super ros::object
  :slots (_error_code _status _message ))

(defmethod vision_apps::GetMissionStatusResponse
  (:init
   (&key
    ((:error_code __error_code) 0)
    ((:status __status) "")
    ((:message __message) "")
    )
   (send-super :init)
   (setq _error_code (round __error_code))
   (setq _status (string __status))
   (setq _message (string __message))
   self)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; uint8 _error_code
    1
    ;; string _status
    4 (length _status)
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vision_apps::GetMissionStatus
  :super ros::object
  :slots ())

(setf (get vision_apps::GetMissionStatus :md5sum-) "0d2f2420d57aa0f674fd993ccf46cc89")
(setf (get vision_apps::GetMissionStatus :datatype-) "vision_apps/GetMissionStatus")
(setf (get vision_apps::GetMissionStatus :request) vision_apps::GetMissionStatusRequest)
(setf (get vision_apps::GetMissionStatus :response) vision_apps::GetMissionStatusResponse)

(defmethod vision_apps::GetMissionStatusRequest
  (:response () (instance vision_apps::GetMissionStatusResponse :init)))

(setf (get vision_apps::GetMissionStatusRequest :md5sum-) "0d2f2420d57aa0f674fd993ccf46cc89")
(setf (get vision_apps::GetMissionStatusRequest :datatype-) "vision_apps/GetMissionStatusRequest")
(setf (get vision_apps::GetMissionStatusRequest :definition-)
      "---
uint8 error_code
string status
string message

")

(setf (get vision_apps::GetMissionStatusResponse :md5sum-) "0d2f2420d57aa0f674fd993ccf46cc89")
(setf (get vision_apps::GetMissionStatusResponse :datatype-) "vision_apps/GetMissionStatusResponse")
(setf (get vision_apps::GetMissionStatusResponse :definition-)
      "---
uint8 error_code
string status
string message

")



(provide :vision_apps/GetMissionStatus "0d2f2420d57aa0f674fd993ccf46cc89")


