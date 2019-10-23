;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::StopMission)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'StopMission (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::STOPMISSION")
  (make-package "VISION_APPS::STOPMISSION"))
(unless (find-package "VISION_APPS::STOPMISSIONREQUEST")
  (make-package "VISION_APPS::STOPMISSIONREQUEST"))
(unless (find-package "VISION_APPS::STOPMISSIONRESPONSE")
  (make-package "VISION_APPS::STOPMISSIONRESPONSE"))

(in-package "ROS")





(defclass vision_apps::StopMissionRequest
  :super ros::object
  :slots ())

(defmethod vision_apps::StopMissionRequest
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

(defclass vision_apps::StopMissionResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod vision_apps::StopMissionResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint8 _error_code
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
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vision_apps::StopMission
  :super ros::object
  :slots ())

(setf (get vision_apps::StopMission :md5sum-) "4ad76664b0717ddbf6142456d7398288")
(setf (get vision_apps::StopMission :datatype-) "vision_apps/StopMission")
(setf (get vision_apps::StopMission :request) vision_apps::StopMissionRequest)
(setf (get vision_apps::StopMission :response) vision_apps::StopMissionResponse)

(defmethod vision_apps::StopMissionRequest
  (:response () (instance vision_apps::StopMissionResponse :init)))

(setf (get vision_apps::StopMissionRequest :md5sum-) "4ad76664b0717ddbf6142456d7398288")
(setf (get vision_apps::StopMissionRequest :datatype-) "vision_apps/StopMissionRequest")
(setf (get vision_apps::StopMissionRequest :definition-)
      "
---
bool success
uint8 error_code
string message

")

(setf (get vision_apps::StopMissionResponse :md5sum-) "4ad76664b0717ddbf6142456d7398288")
(setf (get vision_apps::StopMissionResponse :datatype-) "vision_apps/StopMissionResponse")
(setf (get vision_apps::StopMissionResponse :definition-)
      "
---
bool success
uint8 error_code
string message

")



(provide :vision_apps/StopMission "4ad76664b0717ddbf6142456d7398288")


