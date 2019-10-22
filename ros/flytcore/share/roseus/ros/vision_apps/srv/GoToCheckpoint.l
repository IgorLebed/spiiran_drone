;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::GoToCheckpoint)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'GoToCheckpoint (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::GOTOCHECKPOINT")
  (make-package "VISION_APPS::GOTOCHECKPOINT"))
(unless (find-package "VISION_APPS::GOTOCHECKPOINTREQUEST")
  (make-package "VISION_APPS::GOTOCHECKPOINTREQUEST"))
(unless (find-package "VISION_APPS::GOTOCHECKPOINTRESPONSE")
  (make-package "VISION_APPS::GOTOCHECKPOINTRESPONSE"))

(in-package "ROS")





(defclass vision_apps::GoToCheckpointRequest
  :super ros::object
  :slots (_checkpoint_id _holding_time _holding_distance _from_origin _async ))

(defmethod vision_apps::GoToCheckpointRequest
  (:init
   (&key
    ((:checkpoint_id __checkpoint_id) 0)
    ((:holding_time __holding_time) 0.0)
    ((:holding_distance __holding_distance) 0.0)
    ((:from_origin __from_origin) nil)
    ((:async __async) nil)
    )
   (send-super :init)
   (setq _checkpoint_id (round __checkpoint_id))
   (setq _holding_time (float __holding_time))
   (setq _holding_distance (float __holding_distance))
   (setq _from_origin __from_origin)
   (setq _async __async)
   self)
  (:checkpoint_id
   (&optional __checkpoint_id)
   (if __checkpoint_id (setq _checkpoint_id __checkpoint_id)) _checkpoint_id)
  (:holding_time
   (&optional __holding_time)
   (if __holding_time (setq _holding_time __holding_time)) _holding_time)
  (:holding_distance
   (&optional __holding_distance)
   (if __holding_distance (setq _holding_distance __holding_distance)) _holding_distance)
  (:from_origin
   (&optional __from_origin)
   (if __from_origin (setq _from_origin __from_origin)) _from_origin)
  (:async
   (&optional __async)
   (if __async (setq _async __async)) _async)
  (:serialization-length
   ()
   (+
    ;; uint8 _checkpoint_id
    1
    ;; float32 _holding_time
    4
    ;; float32 _holding_distance
    4
    ;; bool _from_origin
    1
    ;; bool _async
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _checkpoint_id
       (write-byte _checkpoint_id s)
     ;; float32 _holding_time
       (sys::poke _holding_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _holding_distance
       (sys::poke _holding_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _from_origin
       (if _from_origin (write-byte -1 s) (write-byte 0 s))
     ;; bool _async
       (if _async (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _checkpoint_id
     (setq _checkpoint_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _holding_time
     (setq _holding_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _holding_distance
     (setq _holding_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _from_origin
     (setq _from_origin (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _async
     (setq _async (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass vision_apps::GoToCheckpointResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod vision_apps::GoToCheckpointResponse
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

(defclass vision_apps::GoToCheckpoint
  :super ros::object
  :slots ())

(setf (get vision_apps::GoToCheckpoint :md5sum-) "45dd03a22ac766f9e216e0c0a250e9b2")
(setf (get vision_apps::GoToCheckpoint :datatype-) "vision_apps/GoToCheckpoint")
(setf (get vision_apps::GoToCheckpoint :request) vision_apps::GoToCheckpointRequest)
(setf (get vision_apps::GoToCheckpoint :response) vision_apps::GoToCheckpointResponse)

(defmethod vision_apps::GoToCheckpointRequest
  (:response () (instance vision_apps::GoToCheckpointResponse :init)))

(setf (get vision_apps::GoToCheckpointRequest :md5sum-) "45dd03a22ac766f9e216e0c0a250e9b2")
(setf (get vision_apps::GoToCheckpointRequest :datatype-) "vision_apps/GoToCheckpointRequest")
(setf (get vision_apps::GoToCheckpointRequest :definition-)
      "uint8 checkpoint_id
float32 holding_time
float32 holding_distance
bool from_origin
bool async
---
bool success
uint8 error_code
string message

")

(setf (get vision_apps::GoToCheckpointResponse :md5sum-) "45dd03a22ac766f9e216e0c0a250e9b2")
(setf (get vision_apps::GoToCheckpointResponse :datatype-) "vision_apps/GoToCheckpointResponse")
(setf (get vision_apps::GoToCheckpointResponse :definition-)
      "uint8 checkpoint_id
float32 holding_time
float32 holding_distance
bool from_origin
bool async
---
bool success
uint8 error_code
string message

")



(provide :vision_apps/GoToCheckpoint "45dd03a22ac766f9e216e0c0a250e9b2")


