;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::SetMission)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'SetMission (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::SETMISSION")
  (make-package "VISION_APPS::SETMISSION"))
(unless (find-package "VISION_APPS::SETMISSIONREQUEST")
  (make-package "VISION_APPS::SETMISSIONREQUEST"))
(unless (find-package "VISION_APPS::SETMISSIONRESPONSE")
  (make-package "VISION_APPS::SETMISSIONRESPONSE"))

(in-package "ROS")





(defclass vision_apps::SetMissionRequest
  :super ros::object
  :slots (_mission ))

(defmethod vision_apps::SetMissionRequest
  (:init
   (&key
    ((:mission __mission) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _mission __mission)
   self)
  (:mission
   (&optional __mission)
   (if __mission (setq _mission __mission)) _mission)
  (:serialization-length
   ()
   (+
    ;; uint16[] _mission
    (* 2    (length _mission)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16[] _mission
     (write-long (length _mission) s)
     (dotimes (i (length _mission))
       (write-word (elt _mission i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16[] _mission
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mission (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _mission i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(defclass vision_apps::SetMissionResponse
  :super ros::object
  :slots (_success _error_code _message _no_of_missionpoints ))

(defmethod vision_apps::SetMissionResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    ((:no_of_missionpoints __no_of_missionpoints) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   (setq _no_of_missionpoints (round __no_of_missionpoints))
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
   ;;
   self)
  )

(defclass vision_apps::SetMission
  :super ros::object
  :slots ())

(setf (get vision_apps::SetMission :md5sum-) "f1488261435bd3327d2a28f5fc15858e")
(setf (get vision_apps::SetMission :datatype-) "vision_apps/SetMission")
(setf (get vision_apps::SetMission :request) vision_apps::SetMissionRequest)
(setf (get vision_apps::SetMission :response) vision_apps::SetMissionResponse)

(defmethod vision_apps::SetMissionRequest
  (:response () (instance vision_apps::SetMissionResponse :init)))

(setf (get vision_apps::SetMissionRequest :md5sum-) "f1488261435bd3327d2a28f5fc15858e")
(setf (get vision_apps::SetMissionRequest :datatype-) "vision_apps/SetMissionRequest")
(setf (get vision_apps::SetMissionRequest :definition-)
      "uint16[] mission
---
bool success
uint8 error_code
string message
uint8 no_of_missionpoints
")

(setf (get vision_apps::SetMissionResponse :md5sum-) "f1488261435bd3327d2a28f5fc15858e")
(setf (get vision_apps::SetMissionResponse :datatype-) "vision_apps/SetMissionResponse")
(setf (get vision_apps::SetMissionResponse :definition-)
      "uint16[] mission
---
bool success
uint8 error_code
string message
uint8 no_of_missionpoints
")



(provide :vision_apps/SetMission "f1488261435bd3327d2a28f5fc15858e")


