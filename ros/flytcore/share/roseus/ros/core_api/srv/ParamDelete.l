;; Auto-generated. Do not edit!


(when (boundp 'core_api::ParamDelete)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'ParamDelete (find-package "CORE_API")))
(unless (find-package "CORE_API::PARAMDELETE")
  (make-package "CORE_API::PARAMDELETE"))
(unless (find-package "CORE_API::PARAMDELETEREQUEST")
  (make-package "CORE_API::PARAMDELETEREQUEST"))
(unless (find-package "CORE_API::PARAMDELETERESPONSE")
  (make-package "CORE_API::PARAMDELETERESPONSE"))

(in-package "ROS")





(defclass core_api::ParamDeleteRequest
  :super ros::object
  :slots (_param_id ))

(defmethod core_api::ParamDeleteRequest
  (:init
   (&key
    ((:param_id __param_id) "")
    )
   (send-super :init)
   (setq _param_id (string __param_id))
   self)
  (:param_id
   (&optional __param_id)
   (if __param_id (setq _param_id __param_id)) _param_id)
  (:serialization-length
   ()
   (+
    ;; string _param_id
    4 (length _param_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _param_id
       (write-long (length _param_id) s) (princ _param_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _param_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _param_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass core_api::ParamDeleteResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::ParamDeleteResponse
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

(defclass core_api::ParamDelete
  :super ros::object
  :slots ())

(setf (get core_api::ParamDelete :md5sum-) "6c6fef353684dfb4c5b339c04372255d")
(setf (get core_api::ParamDelete :datatype-) "core_api/ParamDelete")
(setf (get core_api::ParamDelete :request) core_api::ParamDeleteRequest)
(setf (get core_api::ParamDelete :response) core_api::ParamDeleteResponse)

(defmethod core_api::ParamDeleteRequest
  (:response () (instance core_api::ParamDeleteResponse :init)))

(setf (get core_api::ParamDeleteRequest :md5sum-) "6c6fef353684dfb4c5b339c04372255d")
(setf (get core_api::ParamDeleteRequest :datatype-) "core_api/ParamDeleteRequest")
(setf (get core_api::ParamDeleteRequest :definition-)
      "string param_id
---
bool success
string message

")

(setf (get core_api::ParamDeleteResponse :md5sum-) "6c6fef353684dfb4c5b339c04372255d")
(setf (get core_api::ParamDeleteResponse :datatype-) "core_api/ParamDeleteResponse")
(setf (get core_api::ParamDeleteResponse :definition-)
      "string param_id
---
bool success
string message

")



(provide :core_api/ParamDelete "6c6fef353684dfb4c5b339c04372255d")


