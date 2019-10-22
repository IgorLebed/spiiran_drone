;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::GetLandingStatus)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'GetLandingStatus (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::GETLANDINGSTATUS")
  (make-package "VISION_APPS::GETLANDINGSTATUS"))
(unless (find-package "VISION_APPS::GETLANDINGSTATUSREQUEST")
  (make-package "VISION_APPS::GETLANDINGSTATUSREQUEST"))
(unless (find-package "VISION_APPS::GETLANDINGSTATUSRESPONSE")
  (make-package "VISION_APPS::GETLANDINGSTATUSRESPONSE"))

(in-package "ROS")





(defclass vision_apps::GetLandingStatusRequest
  :super ros::object
  :slots ())

(defmethod vision_apps::GetLandingStatusRequest
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

(defclass vision_apps::GetLandingStatusResponse
  :super ros::object
  :slots (_error_code _status _message ))

(defmethod vision_apps::GetLandingStatusResponse
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

(defclass vision_apps::GetLandingStatus
  :super ros::object
  :slots ())

(setf (get vision_apps::GetLandingStatus :md5sum-) "0d2f2420d57aa0f674fd993ccf46cc89")
(setf (get vision_apps::GetLandingStatus :datatype-) "vision_apps/GetLandingStatus")
(setf (get vision_apps::GetLandingStatus :request) vision_apps::GetLandingStatusRequest)
(setf (get vision_apps::GetLandingStatus :response) vision_apps::GetLandingStatusResponse)

(defmethod vision_apps::GetLandingStatusRequest
  (:response () (instance vision_apps::GetLandingStatusResponse :init)))

(setf (get vision_apps::GetLandingStatusRequest :md5sum-) "0d2f2420d57aa0f674fd993ccf46cc89")
(setf (get vision_apps::GetLandingStatusRequest :datatype-) "vision_apps/GetLandingStatusRequest")
(setf (get vision_apps::GetLandingStatusRequest :definition-)
      "---
uint8 error_code
string status
string message

")

(setf (get vision_apps::GetLandingStatusResponse :md5sum-) "0d2f2420d57aa0f674fd993ccf46cc89")
(setf (get vision_apps::GetLandingStatusResponse :datatype-) "vision_apps/GetLandingStatusResponse")
(setf (get vision_apps::GetLandingStatusResponse :definition-)
      "---
uint8 error_code
string status
string message

")



(provide :vision_apps/GetLandingStatus "0d2f2420d57aa0f674fd993ccf46cc89")


