;; Auto-generated. Do not edit!


(when (boundp 'core_api::ParamSave)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'ParamSave (find-package "CORE_API")))
(unless (find-package "CORE_API::PARAMSAVE")
  (make-package "CORE_API::PARAMSAVE"))
(unless (find-package "CORE_API::PARAMSAVEREQUEST")
  (make-package "CORE_API::PARAMSAVEREQUEST"))
(unless (find-package "CORE_API::PARAMSAVERESPONSE")
  (make-package "CORE_API::PARAMSAVERESPONSE"))

(in-package "ROS")





(defclass core_api::ParamSaveRequest
  :super ros::object
  :slots ())

(defmethod core_api::ParamSaveRequest
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

(defclass core_api::ParamSaveResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::ParamSaveResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
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
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass core_api::ParamSave
  :super ros::object
  :slots ())

(setf (get core_api::ParamSave :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::ParamSave :datatype-) "core_api/ParamSave")
(setf (get core_api::ParamSave :request) core_api::ParamSaveRequest)
(setf (get core_api::ParamSave :response) core_api::ParamSaveResponse)

(defmethod core_api::ParamSaveRequest
  (:response () (instance core_api::ParamSaveResponse :init)))

(setf (get core_api::ParamSaveRequest :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::ParamSaveRequest :datatype-) "core_api/ParamSaveRequest")
(setf (get core_api::ParamSaveRequest :definition-)
      "---
bool success
string message

")

(setf (get core_api::ParamSaveResponse :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::ParamSaveResponse :datatype-) "core_api/ParamSaveResponse")
(setf (get core_api::ParamSaveResponse :definition-)
      "---
bool success
string message

")



(provide :core_api/ParamSave "937c9679a518e3a18d831e57125ea522")

