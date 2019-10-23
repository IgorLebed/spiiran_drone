;; Auto-generated. Do not edit!


(when (boundp 'core_api::ParamGetGlobalNamespace)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'ParamGetGlobalNamespace (find-package "CORE_API")))
(unless (find-package "CORE_API::PARAMGETGLOBALNAMESPACE")
  (make-package "CORE_API::PARAMGETGLOBALNAMESPACE"))
(unless (find-package "CORE_API::PARAMGETGLOBALNAMESPACEREQUEST")
  (make-package "CORE_API::PARAMGETGLOBALNAMESPACEREQUEST"))
(unless (find-package "CORE_API::PARAMGETGLOBALNAMESPACERESPONSE")
  (make-package "CORE_API::PARAMGETGLOBALNAMESPACERESPONSE"))

(in-package "ROS")





(defclass core_api::ParamGetGlobalNamespaceRequest
  :super ros::object
  :slots ())

(defmethod core_api::ParamGetGlobalNamespaceRequest
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

(defclass core_api::ParamGetGlobalNamespaceResponse
  :super ros::object
  :slots (_param_info _success _message ))

(defmethod core_api::ParamGetGlobalNamespaceResponse
  (:init
   (&key
    ((:param_info __param_info) (instance core_api::ParamInfo :init))
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _param_info __param_info)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:param_info
   (&rest __param_info)
   (if (keywordp (car __param_info))
       (send* _param_info __param_info)
     (progn
       (if __param_info (setq _param_info (car __param_info)))
       _param_info)))
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; core_api/ParamInfo _param_info
    (send _param_info :serialization-length)
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; core_api/ParamInfo _param_info
       (send _param_info :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; core_api/ParamInfo _param_info
     (send _param_info :deserialize buf ptr-) (incf ptr- (send _param_info :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass core_api::ParamGetGlobalNamespace
  :super ros::object
  :slots ())

(setf (get core_api::ParamGetGlobalNamespace :md5sum-) "dbd6d35ff58e7e1c082ccd13944710ab")
(setf (get core_api::ParamGetGlobalNamespace :datatype-) "core_api/ParamGetGlobalNamespace")
(setf (get core_api::ParamGetGlobalNamespace :request) core_api::ParamGetGlobalNamespaceRequest)
(setf (get core_api::ParamGetGlobalNamespace :response) core_api::ParamGetGlobalNamespaceResponse)

(defmethod core_api::ParamGetGlobalNamespaceRequest
  (:response () (instance core_api::ParamGetGlobalNamespaceResponse :init)))

(setf (get core_api::ParamGetGlobalNamespaceRequest :md5sum-) "dbd6d35ff58e7e1c082ccd13944710ab")
(setf (get core_api::ParamGetGlobalNamespaceRequest :datatype-) "core_api/ParamGetGlobalNamespaceRequest")
(setf (get core_api::ParamGetGlobalNamespaceRequest :definition-)
      "
---
core_api/ParamInfo param_info
bool success
string message


================================================================================
MSG: core_api/ParamInfo
string param_id
string param_value
")

(setf (get core_api::ParamGetGlobalNamespaceResponse :md5sum-) "dbd6d35ff58e7e1c082ccd13944710ab")
(setf (get core_api::ParamGetGlobalNamespaceResponse :datatype-) "core_api/ParamGetGlobalNamespaceResponse")
(setf (get core_api::ParamGetGlobalNamespaceResponse :definition-)
      "
---
core_api/ParamInfo param_info
bool success
string message


================================================================================
MSG: core_api/ParamInfo
string param_id
string param_value
")



(provide :core_api/ParamGetGlobalNamespace "dbd6d35ff58e7e1c082ccd13944710ab")


