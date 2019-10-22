;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::LoadCheckpoints)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'LoadCheckpoints (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::LOADCHECKPOINTS")
  (make-package "VISION_APPS::LOADCHECKPOINTS"))
(unless (find-package "VISION_APPS::LOADCHECKPOINTSREQUEST")
  (make-package "VISION_APPS::LOADCHECKPOINTSREQUEST"))
(unless (find-package "VISION_APPS::LOADCHECKPOINTSRESPONSE")
  (make-package "VISION_APPS::LOADCHECKPOINTSRESPONSE"))

(in-package "ROS")





(defclass vision_apps::LoadCheckpointsRequest
  :super ros::object
  :slots ())

(defmethod vision_apps::LoadCheckpointsRequest
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

(defclass vision_apps::LoadCheckpointsResponse
  :super ros::object
  :slots (_success _error_code _message _no_of_checkpoints _checkpoints ))

(defmethod vision_apps::LoadCheckpointsResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    ((:no_of_checkpoints __no_of_checkpoints) 0)
    ((:checkpoints __checkpoints) (let (r) (dotimes (i 0) (push (instance vision_apps::Checkpoint :init) r)) r))
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   (setq _no_of_checkpoints (round __no_of_checkpoints))
   (setq _checkpoints __checkpoints)
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
  (:checkpoints
   (&rest __checkpoints)
   (if (keywordp (car __checkpoints))
       (send* _checkpoints __checkpoints)
     (progn
       (if __checkpoints (setq _checkpoints (car __checkpoints)))
       _checkpoints)))
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
    ;; vision_apps/Checkpoint[] _checkpoints
    (apply #'+ (send-all _checkpoints :serialization-length)) 4
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
     ;; vision_apps/Checkpoint[] _checkpoints
     (write-long (length _checkpoints) s)
     (dolist (elem _checkpoints)
       (send elem :serialize s)
       )
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
   ;; vision_apps/Checkpoint[] _checkpoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _checkpoints (let (r) (dotimes (i n) (push (instance vision_apps::Checkpoint :init) r)) r))
     (dolist (elem- _checkpoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass vision_apps::LoadCheckpoints
  :super ros::object
  :slots ())

(setf (get vision_apps::LoadCheckpoints :md5sum-) "0716ca053acdca4ffd9f1606f16f3814")
(setf (get vision_apps::LoadCheckpoints :datatype-) "vision_apps/LoadCheckpoints")
(setf (get vision_apps::LoadCheckpoints :request) vision_apps::LoadCheckpointsRequest)
(setf (get vision_apps::LoadCheckpoints :response) vision_apps::LoadCheckpointsResponse)

(defmethod vision_apps::LoadCheckpointsRequest
  (:response () (instance vision_apps::LoadCheckpointsResponse :init)))

(setf (get vision_apps::LoadCheckpointsRequest :md5sum-) "0716ca053acdca4ffd9f1606f16f3814")
(setf (get vision_apps::LoadCheckpointsRequest :datatype-) "vision_apps/LoadCheckpointsRequest")
(setf (get vision_apps::LoadCheckpointsRequest :definition-)
      "
---
bool success
uint8 error_code
string message
uint8 no_of_checkpoints
vision_apps/Checkpoint[] checkpoints


================================================================================
MSG: vision_apps/Checkpoint
uint8 checkpoint_id
uint8 tag_id
float32 tag_x
float32 tag_y
float32 tag_z
float32 tag_yaw
")

(setf (get vision_apps::LoadCheckpointsResponse :md5sum-) "0716ca053acdca4ffd9f1606f16f3814")
(setf (get vision_apps::LoadCheckpointsResponse :datatype-) "vision_apps/LoadCheckpointsResponse")
(setf (get vision_apps::LoadCheckpointsResponse :definition-)
      "
---
bool success
uint8 error_code
string message
uint8 no_of_checkpoints
vision_apps/Checkpoint[] checkpoints


================================================================================
MSG: vision_apps/Checkpoint
uint8 checkpoint_id
uint8 tag_id
float32 tag_x
float32 tag_y
float32 tag_z
float32 tag_yaw
")



(provide :vision_apps/LoadCheckpoints "0716ca053acdca4ffd9f1606f16f3814")


