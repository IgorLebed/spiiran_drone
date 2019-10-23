;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::LoadDefaultParams)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'LoadDefaultParams (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::LOADDEFAULTPARAMS")
  (make-package "VISION_APPS::LOADDEFAULTPARAMS"))
(unless (find-package "VISION_APPS::LOADDEFAULTPARAMSREQUEST")
  (make-package "VISION_APPS::LOADDEFAULTPARAMSREQUEST"))
(unless (find-package "VISION_APPS::LOADDEFAULTPARAMSRESPONSE")
  (make-package "VISION_APPS::LOADDEFAULTPARAMSRESPONSE"))

(in-package "ROS")





(defclass vision_apps::LoadDefaultParamsRequest
  :super ros::object
  :slots ())

(defmethod vision_apps::LoadDefaultParamsRequest
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

(defclass vision_apps::LoadDefaultParamsResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod vision_apps::LoadDefaultParamsResponse
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

(defclass vision_apps::LoadDefaultParams
  :super ros::object
  :slots ())

(setf (get vision_apps::LoadDefaultParams :md5sum-) "4ad76664b0717ddbf6142456d7398288")
(setf (get vision_apps::LoadDefaultParams :datatype-) "vision_apps/LoadDefaultParams")
(setf (get vision_apps::LoadDefaultParams :request) vision_apps::LoadDefaultParamsRequest)
(setf (get vision_apps::LoadDefaultParams :response) vision_apps::LoadDefaultParamsResponse)

(defmethod vision_apps::LoadDefaultParamsRequest
  (:response () (instance vision_apps::LoadDefaultParamsResponse :init)))

(setf (get vision_apps::LoadDefaultParamsRequest :md5sum-) "4ad76664b0717ddbf6142456d7398288")
(setf (get vision_apps::LoadDefaultParamsRequest :datatype-) "vision_apps/LoadDefaultParamsRequest")
(setf (get vision_apps::LoadDefaultParamsRequest :definition-)
      "
---
bool success
uint8 error_code
string message

")

(setf (get vision_apps::LoadDefaultParamsResponse :md5sum-) "4ad76664b0717ddbf6142456d7398288")
(setf (get vision_apps::LoadDefaultParamsResponse :datatype-) "vision_apps/LoadDefaultParamsResponse")
(setf (get vision_apps::LoadDefaultParamsResponse :definition-)
      "
---
bool success
uint8 error_code
string message

")



(provide :vision_apps/LoadDefaultParams "4ad76664b0717ddbf6142456d7398288")


