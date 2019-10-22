;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::SetCheckpoints)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'SetCheckpoints (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::SETCHECKPOINTS")
  (make-package "VISION_APPS::SETCHECKPOINTS"))
(unless (find-package "VISION_APPS::SETCHECKPOINTSREQUEST")
  (make-package "VISION_APPS::SETCHECKPOINTSREQUEST"))
(unless (find-package "VISION_APPS::SETCHECKPOINTSRESPONSE")
  (make-package "VISION_APPS::SETCHECKPOINTSRESPONSE"))

(in-package "ROS")





(defclass vision_apps::SetCheckpointsRequest
  :super ros::object
  :slots (_checkpoint_list _save ))

(defmethod vision_apps::SetCheckpointsRequest
  (:init
   (&key
    ((:checkpoint_list __checkpoint_list) (let (r) (dotimes (i 0) (push (instance vision_apps::Checkpoint :init) r)) r))
    ((:save __save) nil)
    )
   (send-super :init)
   (setq _checkpoint_list __checkpoint_list)
   (setq _save __save)
   self)
  (:checkpoint_list
   (&rest __checkpoint_list)
   (if (keywordp (car __checkpoint_list))
       (send* _checkpoint_list __checkpoint_list)
     (progn
       (if __checkpoint_list (setq _checkpoint_list (car __checkpoint_list)))
       _checkpoint_list)))
  (:save
   (&optional __save)
   (if __save (setq _save __save)) _save)
  (:serialization-length
   ()
   (+
    ;; vision_apps/Checkpoint[] _checkpoint_list
    (apply #'+ (send-all _checkpoint_list :serialization-length)) 4
    ;; bool _save
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; vision_apps/Checkpoint[] _checkpoint_list
     (write-long (length _checkpoint_list) s)
     (dolist (elem _checkpoint_list)
       (send elem :serialize s)
       )
     ;; bool _save
       (if _save (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; vision_apps/Checkpoint[] _checkpoint_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _checkpoint_list (let (r) (dotimes (i n) (push (instance vision_apps::Checkpoint :init) r)) r))
     (dolist (elem- _checkpoint_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _save
     (setq _save (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass vision_apps::SetCheckpointsResponse
  :super ros::object
  :slots (_success _error_code _message _no_of_checkpoints ))

(defmethod vision_apps::SetCheckpointsResponse
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

(defclass vision_apps::SetCheckpoints
  :super ros::object
  :slots ())

(setf (get vision_apps::SetCheckpoints :md5sum-) "5b6a36f86958efb1c0227d47b297cadc")
(setf (get vision_apps::SetCheckpoints :datatype-) "vision_apps/SetCheckpoints")
(setf (get vision_apps::SetCheckpoints :request) vision_apps::SetCheckpointsRequest)
(setf (get vision_apps::SetCheckpoints :response) vision_apps::SetCheckpointsResponse)

(defmethod vision_apps::SetCheckpointsRequest
  (:response () (instance vision_apps::SetCheckpointsResponse :init)))

(setf (get vision_apps::SetCheckpointsRequest :md5sum-) "5b6a36f86958efb1c0227d47b297cadc")
(setf (get vision_apps::SetCheckpointsRequest :datatype-) "vision_apps/SetCheckpointsRequest")
(setf (get vision_apps::SetCheckpointsRequest :definition-)
      "vision_apps/Checkpoint[] checkpoint_list
bool save

================================================================================
MSG: vision_apps/Checkpoint
uint8 checkpoint_id
uint8 tag_id
float32 tag_x
float32 tag_y
float32 tag_z
float32 tag_yaw
---
bool success
uint8 error_code
string message
uint8 no_of_checkpoints
")

(setf (get vision_apps::SetCheckpointsResponse :md5sum-) "5b6a36f86958efb1c0227d47b297cadc")
(setf (get vision_apps::SetCheckpointsResponse :datatype-) "vision_apps/SetCheckpointsResponse")
(setf (get vision_apps::SetCheckpointsResponse :definition-)
      "vision_apps/Checkpoint[] checkpoint_list
bool save

================================================================================
MSG: vision_apps/Checkpoint
uint8 checkpoint_id
uint8 tag_id
float32 tag_x
float32 tag_y
float32 tag_z
float32 tag_yaw
---
bool success
uint8 error_code
string message
uint8 no_of_checkpoints
")



(provide :vision_apps/SetCheckpoints "5b6a36f86958efb1c0227d47b297cadc")


