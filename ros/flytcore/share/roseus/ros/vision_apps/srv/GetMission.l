;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::GetMission)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'GetMission (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::GETMISSION")
  (make-package "VISION_APPS::GETMISSION"))
(unless (find-package "VISION_APPS::GETMISSIONREQUEST")
  (make-package "VISION_APPS::GETMISSIONREQUEST"))
(unless (find-package "VISION_APPS::GETMISSIONRESPONSE")
  (make-package "VISION_APPS::GETMISSIONRESPONSE"))

(in-package "ROS")





(defclass vision_apps::GetMissionRequest
  :super ros::object
  :slots ())

(defmethod vision_apps::GetMissionRequest
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

(defclass vision_apps::GetMissionResponse
  :super ros::object
  :slots (_success _error_code _message _no_of_missionpoints _missionpoints ))

(defmethod vision_apps::GetMissionResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    ((:no_of_missionpoints __no_of_missionpoints) 0)
    ((:missionpoints __missionpoints) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   (setq _no_of_missionpoints (round __no_of_missionpoints))
   (setq _missionpoints __missionpoints)
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
  (:no_of_missionpoints
   (&optional __no_of_missionpoints)
   (if __no_of_missionpoints (setq _no_of_missionpoints __no_of_missionpoints)) _no_of_missionpoints)
  (:missionpoints
   (&optional __missionpoints)
   (if __missionpoints (setq _missionpoints __missionpoints)) _missionpoints)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint8 _error_code
    1
    ;; string _message
    4 (length _message)
    ;; uint8 _no_of_missionpoints
    1
    ;; uint8[] _missionpoints
    (* 1    (length _missionpoints)) 4
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
     ;; uint8 _no_of_missionpoints
       (write-byte _no_of_missionpoints s)
     ;; uint8[] _missionpoints
     (write-long (length _missionpoints) s)
     (princ _missionpoints s)
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
   ;; uint8 _no_of_missionpoints
     (setq _no_of_missionpoints (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _missionpoints
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _missionpoints (make-array n :element-type :char))
     (replace _missionpoints buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass vision_apps::GetMission
  :super ros::object
  :slots ())

(setf (get vision_apps::GetMission :md5sum-) "4c91735d5d503efc35ae27424f54b09b")
(setf (get vision_apps::GetMission :datatype-) "vision_apps/GetMission")
(setf (get vision_apps::GetMission :request) vision_apps::GetMissionRequest)
(setf (get vision_apps::GetMission :response) vision_apps::GetMissionResponse)

(defmethod vision_apps::GetMissionRequest
  (:response () (instance vision_apps::GetMissionResponse :init)))

(setf (get vision_apps::GetMissionRequest :md5sum-) "4c91735d5d503efc35ae27424f54b09b")
(setf (get vision_apps::GetMissionRequest :datatype-) "vision_apps/GetMissionRequest")
(setf (get vision_apps::GetMissionRequest :definition-)
      "---
bool success
uint8 error_code
string message
uint8 no_of_missionpoints
uint8[] missionpoints

")

(setf (get vision_apps::GetMissionResponse :md5sum-) "4c91735d5d503efc35ae27424f54b09b")
(setf (get vision_apps::GetMissionResponse :datatype-) "vision_apps/GetMissionResponse")
(setf (get vision_apps::GetMissionResponse :definition-)
      "---
bool success
uint8 error_code
string message
uint8 no_of_missionpoints
uint8[] missionpoints

")



(provide :vision_apps/GetMission "4c91735d5d503efc35ae27424f54b09b")


