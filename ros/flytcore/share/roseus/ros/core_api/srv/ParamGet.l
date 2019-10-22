;; Auto-generated. Do not edit!


(when (boundp 'core_api::ParamGet)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'ParamGet (find-package "CORE_API")))
(unless (find-package "CORE_API::PARAMGET")
  (make-package "CORE_API::PARAMGET"))
(unless (find-package "CORE_API::PARAMGETREQUEST")
  (make-package "CORE_API::PARAMGETREQUEST"))
(unless (find-package "CORE_API::PARAMGETRESPONSE")
  (make-package "CORE_API::PARAMGETRESPONSE"))

(in-package "ROS")





(defclass core_api::ParamGetRequest
  :super ros::object
  :slots (_param_id ))

(defmethod core_api::ParamGetRequest
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

(defclass core_api::ParamGetResponse
  :super ros::object
  :slots (_param_info _success _message ))

(defmethod core_api::ParamGetResponse
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

(defclass core_api::ParamGet
  :super ros::object
  :slots ())

(setf (get core_api::ParamGet :md5sum-) "ee3a46669de239e9ddb25d063c5e6029")
(setf (get core_api::ParamGet :datatype-) "core_api/ParamGet")
(setf (get core_api::ParamGet :request) core_api::ParamGetRequest)
(setf (get core_api::ParamGet :response) core_api::ParamGetResponse)

(defmethod core_api::ParamGetRequest
  (:response () (instance core_api::ParamGetResponse :init)))

(setf (get core_api::ParamGetRequest :md5sum-) "ee3a46669de239e9ddb25d063c5e6029")
(setf (get core_api::ParamGetRequest :datatype-) "core_api/ParamGetRequest")
(setf (get core_api::ParamGetRequest :definition-)
      "string param_id
---
core_api/ParamInfo param_info
bool success
string message


================================================================================
MSG: core_api/ParamInfo
string param_id
string param_value
")

(setf (get core_api::ParamGetResponse :md5sum-) "ee3a46669de239e9ddb25d063c5e6029")
(setf (get core_api::ParamGetResponse :datatype-) "core_api/ParamGetResponse")
(setf (get core_api::ParamGetResponse :definition-)
      "string param_id
---
core_api/ParamInfo param_info
bool success
string message


================================================================================
MSG: core_api/ParamInfo
string param_id
string param_value
")



(provide :core_api/ParamGet "ee3a46669de239e9ddb25d063c5e6029")


