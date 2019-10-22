;; Auto-generated. Do not edit!


(when (boundp 'core_api::ParamSet)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'ParamSet (find-package "CORE_API")))
(unless (find-package "CORE_API::PARAMSET")
  (make-package "CORE_API::PARAMSET"))
(unless (find-package "CORE_API::PARAMSETREQUEST")
  (make-package "CORE_API::PARAMSETREQUEST"))
(unless (find-package "CORE_API::PARAMSETRESPONSE")
  (make-package "CORE_API::PARAMSETRESPONSE"))

(in-package "ROS")





(defclass core_api::ParamSetRequest
  :super ros::object
  :slots (_param_info ))

(defmethod core_api::ParamSetRequest
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

(defclass core_api::ParamSetResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::ParamSetResponse
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

(defclass core_api::ParamSet
  :super ros::object
  :slots ())

(setf (get core_api::ParamSet :md5sum-) "3139407759ce2a5b88c5244e2a57e352")
(setf (get core_api::ParamSet :datatype-) "core_api/ParamSet")
(setf (get core_api::ParamSet :request) core_api::ParamSetRequest)
(setf (get core_api::ParamSet :response) core_api::ParamSetResponse)

(defmethod core_api::ParamSetRequest
  (:response () (instance core_api::ParamSetResponse :init)))

(setf (get core_api::ParamSetRequest :md5sum-) "3139407759ce2a5b88c5244e2a57e352")
(setf (get core_api::ParamSetRequest :datatype-) "core_api/ParamSetRequest")
(setf (get core_api::ParamSetRequest :definition-)
      "core_api/ParamInfo param_info

================================================================================
MSG: core_api/ParamInfo
string param_id
string param_value
---
bool success
string message

")

(setf (get core_api::ParamSetResponse :md5sum-) "3139407759ce2a5b88c5244e2a57e352")
(setf (get core_api::ParamSetResponse :datatype-) "core_api/ParamSetResponse")
(setf (get core_api::ParamSetResponse :definition-)
      "core_api/ParamInfo param_info

================================================================================
MSG: core_api/ParamInfo
string param_id
string param_value
---
bool success
string message

")



(provide :core_api/ParamSet "3139407759ce2a5b88c5244e2a57e352")


