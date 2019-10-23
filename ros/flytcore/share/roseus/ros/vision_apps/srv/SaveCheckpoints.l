;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::SaveCheckpoints)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'SaveCheckpoints (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::SAVECHECKPOINTS")
  (make-package "VISION_APPS::SAVECHECKPOINTS"))
(unless (find-package "VISION_APPS::SAVECHECKPOINTSREQUEST")
  (make-package "VISION_APPS::SAVECHECKPOINTSREQUEST"))
(unless (find-package "VISION_APPS::SAVECHECKPOINTSRESPONSE")
  (make-package "VISION_APPS::SAVECHECKPOINTSRESPONSE"))

(in-package "ROS")





(defclass vision_apps::SaveCheckpointsRequest
  :super ros::object
  :slots ())

(defmethod vision_apps::SaveCheckpointsRequest
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

(defclass vision_apps::SaveCheckpointsResponse
  :super ros::object
  :slots (_success _error_code _message _no_of_checkpoints ))

(defmethod vision_apps::SaveCheckpointsResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    ((:no_of_checkpoints __no_of_checkpoints) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   (setq _no_of_checkpoints (round __no_of_checkpoints))
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
  (:no_of_checkpoints
   (&optional __no_of_checkpoints)
   (if __no_of_checkpoints (setq _no_of_checkpoints __no_of_checkpoints)) _no_of_checkpoints)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint8 _error_code
    1
    ;; string _message
    4 (length _message)
    ;; uint8 _no_of_checkpoints
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
     ;; uint8 _no_of_checkpoints
       (write-byte _no_of_checkpoints s)
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
   ;; uint8 _no_of_checkpoints
     (setq _no_of_checkpoints (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass vision_apps::SaveCheckpoints
  :super ros::object
  :slots ())

(setf (get vision_apps::SaveCheckpoints :md5sum-) "711cb5d50a8f528862a3b1e99d5fe29d")
(setf (get vision_apps::SaveCheckpoints :datatype-) "vision_apps/SaveCheckpoints")
(setf (get vision_apps::SaveCheckpoints :request) vision_apps::SaveCheckpointsRequest)
(setf (get vision_apps::SaveCheckpoints :response) vision_apps::SaveCheckpointsResponse)

(defmethod vision_apps::SaveCheckpointsRequest
  (:response () (instance vision_apps::SaveCheckpointsResponse :init)))

(setf (get vision_apps::SaveCheckpointsRequest :md5sum-) "711cb5d50a8f528862a3b1e99d5fe29d")
(setf (get vision_apps::SaveCheckpointsRequest :datatype-) "vision_apps/SaveCheckpointsRequest")
(setf (get vision_apps::SaveCheckpointsRequest :definition-)
      "
---
bool success
uint8 error_code
string message
uint8 no_of_checkpoints
")

(setf (get vision_apps::SaveCheckpointsResponse :md5sum-) "711cb5d50a8f528862a3b1e99d5fe29d")
(setf (get vision_apps::SaveCheckpointsResponse :datatype-) "vision_apps/SaveCheckpointsResponse")
(setf (get vision_apps::SaveCheckpointsResponse :definition-)
      "
---
bool success
uint8 error_code
string message
uint8 no_of_checkpoints
")



(provide :vision_apps/SaveCheckpoints "711cb5d50a8f528862a3b1e99d5fe29d")


