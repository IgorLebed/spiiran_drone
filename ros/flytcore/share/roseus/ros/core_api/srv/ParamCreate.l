;; Auto-generated. Do not edit!


(when (boundp 'core_api::ParamCreate)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'ParamCreate (find-package "CORE_API")))
(unless (find-package "CORE_API::PARAMCREATE")
  (make-package "CORE_API::PARAMCREATE"))
(unless (find-package "CORE_API::PARAMCREATEREQUEST")
  (make-package "CORE_API::PARAMCREATEREQUEST"))
(unless (find-package "CORE_API::PARAMCREATERESPONSE")
  (make-package "CORE_API::PARAMCREATERESPONSE"))

(in-package "ROS")





(defclass core_api::ParamCreateRequest
  :super ros::object
  :slots (_param_info ))

(defmethod core_api::ParamCreateRequest
  (:init
   (&key
    ((:param_info __param_info) (instance core_api::ParamInfo :init))
    )
   (send-super :init)
   (setq _param_info __param_info)
   self)
  (:param_info
   (&rest __param_info)
   (if (keywordp (car __param_info))
       (send* _param_info __param_info)
     (progn
       (if __param_info (setq _param_info (car __param_info)))
       _param_info)))
  (:serialization-length
   ()
   (+
    ;; core_api/ParamInfo _param_info
    (send _param_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; core_api/ParamInfo _param_info
       (send _param_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; core_api/ParamInfo _param_info
     (send _param_info :deserialize buf ptr-) (incf ptr- (send _param_info :serialization-length))
   ;;
   self)
  )

(defclass core_api::ParamCreateResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::ParamCreateResponse
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

(defclass core_api::ParamCreate
  :super ros::object
  :slots ())

(setf (get core_api::ParamCreate :md5sum-) "3139407759ce2a5b88c5244e2a57e352")
(setf (get core_api::ParamCreate :datatype-) "core_api/ParamCreate")
(setf (get core_api::ParamCreate :request) core_api::ParamCreateRequest)
(setf (get core_api::ParamCreate :response) core_api::ParamCreateResponse)

(defmethod core_api::ParamCreateRequest
  (:response () (instance core_api::ParamCreateResponse :init)))

(setf (get core_api::ParamCreateRequest :md5sum-) "3139407759ce2a5b88c5244e2a57e352")
(setf (get core_api::ParamCreateRequest :datatype-) "core_api/ParamCreateRequest")
(setf (get core_api::ParamCreateRequest :definition-)
      "core_api/ParamInfo param_info

================================================================================
MSG: core_api/ParamInfo
string param_id
string param_value
---
bool success
string message

")

(setf (get core_api::ParamCreateResponse :md5sum-) "3139407759ce2a5b88c5244e2a57e352")
(setf (get core_api::ParamCreateResponse :datatype-) "core_api/ParamCreateResponse")
(setf (get core_api::ParamCreateResponse :definition-)
      "core_api/ParamInfo param_info

================================================================================
MSG: core_api/ParamInfo
string param_id
string param_value
---
bool success
string message

")



(provide :core_api/ParamCreate "3139407759ce2a5b88c5244e2a57e352")


