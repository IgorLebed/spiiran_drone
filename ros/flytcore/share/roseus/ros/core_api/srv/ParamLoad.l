;; Auto-generated. Do not edit!


(when (boundp 'core_api::ParamLoad)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'ParamLoad (find-package "CORE_API")))
(unless (find-package "CORE_API::PARAMLOAD")
  (make-package "CORE_API::PARAMLOAD"))
(unless (find-package "CORE_API::PARAMLOADREQUEST")
  (make-package "CORE_API::PARAMLOADREQUEST"))
(unless (find-package "CORE_API::PARAMLOADRESPONSE")
  (make-package "CORE_API::PARAMLOADRESPONSE"))

(in-package "ROS")





(defclass core_api::ParamLoadRequest
  :super ros::object
  :slots ())

(defmethod core_api::ParamLoadRequest
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

(defclass core_api::ParamLoadResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::ParamLoadResponse
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

(defclass core_api::ParamLoad
  :super ros::object
  :slots ())

(setf (get core_api::ParamLoad :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::ParamLoad :datatype-) "core_api/ParamLoad")
(setf (get core_api::ParamLoad :request) core_api::ParamLoadRequest)
(setf (get core_api::ParamLoad :response) core_api::ParamLoadResponse)

(defmethod core_api::ParamLoadRequest
  (:response () (instance core_api::ParamLoadResponse :init)))

(setf (get core_api::ParamLoadRequest :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::ParamLoadRequest :datatype-) "core_api/ParamLoadRequest")
(setf (get core_api::ParamLoadRequest :definition-)
      "---
bool success
string message

")

(setf (get core_api::ParamLoadResponse :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::ParamLoadResponse :datatype-) "core_api/ParamLoadResponse")
(setf (get core_api::ParamLoadResponse :definition-)
      "---
bool success
string message

")



(provide :core_api/ParamLoad "937c9679a518e3a18d831e57125ea522")


