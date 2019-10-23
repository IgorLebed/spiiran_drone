;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::GetCurrrentCheckpoint)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'GetCurrrentCheckpoint (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::GETCURRRENTCHECKPOINT")
  (make-package "VISION_APPS::GETCURRRENTCHECKPOINT"))
(unless (find-package "VISION_APPS::GETCURRRENTCHECKPOINTREQUEST")
  (make-package "VISION_APPS::GETCURRRENTCHECKPOINTREQUEST"))
(unless (find-package "VISION_APPS::GETCURRRENTCHECKPOINTRESPONSE")
  (make-package "VISION_APPS::GETCURRRENTCHECKPOINTRESPONSE"))

(in-package "ROS")





(defclass vision_apps::GetCurrrentCheckpointRequest
  :super ros::object
  :slots ())

(defmethod vision_apps::GetCurrrentCheckpointRequest
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

(defclass vision_apps::GetCurrrentCheckpointResponse
  :super ros::object
  :slots (_success _error_code _checkpoint_id _missionpoint_number _tag_id _message ))

(defmethod vision_apps::GetCurrrentCheckpointResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:checkpoint_id __checkpoint_id) 0)
    ((:missionpoint_number __missionpoint_number) 0)
    ((:tag_id __tag_id) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _checkpoint_id (round __checkpoint_id))
   (setq _missionpoint_number (round __missionpoint_number))
   (setq _tag_id (round __tag_id))
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:checkpoint_id
   (&optional __checkpoint_id)
   (if __checkpoint_id (setq _checkpoint_id __checkpoint_id)) _checkpoint_id)
  (:missionpoint_number
   (&optional __missionpoint_number)
   (if __missionpoint_number (setq _missionpoint_number __missionpoint_number)) _missionpoint_number)
  (:tag_id
   (&optional __tag_id)
   (if __tag_id (setq _tag_id __tag_id)) _tag_id)
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
    ;; uint8 _checkpoint_id
    1
    ;; uint8 _missionpoint_number
    1
    ;; uint8 _tag_id
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
     ;; uint8 _checkpoint_id
       (write-byte _checkpoint_id s)
     ;; uint8 _missionpoint_number
       (write-byte _missionpoint_number s)
     ;; uint8 _tag_id
       (write-byte _tag_id s)
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
   ;; uint8 _checkpoint_id
     (setq _checkpoint_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _missionpoint_number
     (setq _missionpoint_number (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _tag_id
     (setq _tag_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vision_apps::GetCurrrentCheckpoint
  :super ros::object
  :slots ())

(setf (get vision_apps::GetCurrrentCheckpoint :md5sum-) "7cc3faa051aab17ce96e020c0c4d1fb6")
(setf (get vision_apps::GetCurrrentCheckpoint :datatype-) "vision_apps/GetCurrrentCheckpoint")
(setf (get vision_apps::GetCurrrentCheckpoint :request) vision_apps::GetCurrrentCheckpointRequest)
(setf (get vision_apps::GetCurrrentCheckpoint :response) vision_apps::GetCurrrentCheckpointResponse)

(defmethod vision_apps::GetCurrrentCheckpointRequest
  (:response () (instance vision_apps::GetCurrrentCheckpointResponse :init)))

(setf (get vision_apps::GetCurrrentCheckpointRequest :md5sum-) "7cc3faa051aab17ce96e020c0c4d1fb6")
(setf (get vision_apps::GetCurrrentCheckpointRequest :datatype-) "vision_apps/GetCurrrentCheckpointRequest")
(setf (get vision_apps::GetCurrrentCheckpointRequest :definition-)
      "---
bool success
uint8 error_code
uint8 checkpoint_id
uint8 missionpoint_number
uint8 tag_id
string message

")

(setf (get vision_apps::GetCurrrentCheckpointResponse :md5sum-) "7cc3faa051aab17ce96e020c0c4d1fb6")
(setf (get vision_apps::GetCurrrentCheckpointResponse :datatype-) "vision_apps/GetCurrrentCheckpointResponse")
(setf (get vision_apps::GetCurrrentCheckpointResponse :definition-)
      "---
bool success
uint8 error_code
uint8 checkpoint_id
uint8 missionpoint_number
uint8 tag_id
string message

")



(provide :vision_apps/GetCurrrentCheckpoint "7cc3faa051aab17ce96e020c0c4d1fb6")


