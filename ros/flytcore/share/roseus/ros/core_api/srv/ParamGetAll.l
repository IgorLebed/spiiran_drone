;; Auto-generated. Do not edit!


(when (boundp 'core_api::ParamGetAll)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'ParamGetAll (find-package "CORE_API")))
(unless (find-package "CORE_API::PARAMGETALL")
  (make-package "CORE_API::PARAMGETALL"))
(unless (find-package "CORE_API::PARAMGETALLREQUEST")
  (make-package "CORE_API::PARAMGETALLREQUEST"))
(unless (find-package "CORE_API::PARAMGETALLRESPONSE")
  (make-package "CORE_API::PARAMGETALLRESPONSE"))

(in-package "ROS")





(defclass core_api::ParamGetAllRequest
  :super ros::object
  :slots (_fresh_pull _get_only_ap ))

(defmethod core_api::ParamGetAllRequest
  (:init
   (&key
    ((:fresh_pull __fresh_pull) nil)
    ((:get_only_ap __get_only_ap) nil)
    )
   (send-super :init)
   (setq _fresh_pull __fresh_pull)
   (setq _get_only_ap __get_only_ap)
   self)
  (:fresh_pull
   (&optional __fresh_pull)
   (if __fresh_pull (setq _fresh_pull __fresh_pull)) _fresh_pull)
  (:get_only_ap
   (&optional __get_only_ap)
   (if __get_only_ap (setq _get_only_ap __get_only_ap)) _get_only_ap)
  (:serialization-length
   ()
   (+
    ;; bool _fresh_pull
    1
    ;; bool _get_only_ap
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _fresh_pull
       (if _fresh_pull (write-byte -1 s) (write-byte 0 s))
     ;; bool _get_only_ap
       (if _get_only_ap (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _fresh_pull
     (setq _fresh_pull (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _get_only_ap
     (setq _get_only_ap (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass core_api::ParamGetAllResponse
  :super ros::object
  :slots (_param_list _success _message ))

(defmethod core_api::ParamGetAllResponse
  (:init
   (&key
    ((:param_list __param_list) (let (r) (dotimes (i 0) (push (instance core_api::ParamInfo :init) r)) r))
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _param_list __param_list)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:param_list
   (&rest __param_list)
   (if (keywordp (car __param_list))
       (send* _param_list __param_list)
     (progn
       (if __param_list (setq _param_list (car __param_list)))
       _param_list)))
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; core_api/ParamInfo[] _param_list
    (apply #'+ (send-all _param_list :serialization-length)) 4
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; core_api/ParamInfo[] _param_list
     (write-long (length _param_list) s)
     (dolist (elem _param_list)
       (send elem :serialize s)
       )
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; core_api/ParamInfo[] _param_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _param_list (let (r) (dotimes (i n) (push (instance core_api::ParamInfo :init) r)) r))
     (dolist (elem- _param_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass core_api::ParamGetAll
  :super ros::object
  :slots ())

(setf (get core_api::ParamGetAll :md5sum-) "b71ead203534a0f9bf45c0f7dcff82b8")
(setf (get core_api::ParamGetAll :datatype-) "core_api/ParamGetAll")
(setf (get core_api::ParamGetAll :request) core_api::ParamGetAllRequest)
(setf (get core_api::ParamGetAll :response) core_api::ParamGetAllResponse)

(defmethod core_api::ParamGetAllRequest
  (:response () (instance core_api::ParamGetAllResponse :init)))

(setf (get core_api::ParamGetAllRequest :md5sum-) "b71ead203534a0f9bf45c0f7dcff82b8")
(setf (get core_api::ParamGetAllRequest :datatype-) "core_api/ParamGetAllRequest")
(setf (get core_api::ParamGetAllRequest :definition-)
      "bool fresh_pull
bool get_only_ap
---
core_api/ParamInfo[] param_list
bool success
string message


================================================================================
MSG: core_api/ParamInfo
string param_id
string param_value
")

(setf (get core_api::ParamGetAllResponse :md5sum-) "b71ead203534a0f9bf45c0f7dcff82b8")
(setf (get core_api::ParamGetAllResponse :datatype-) "core_api/ParamGetAllResponse")
(setf (get core_api::ParamGetAllResponse :definition-)
      "bool fresh_pull
bool get_only_ap
---
core_api/ParamInfo[] param_list
bool success
string message


================================================================================
MSG: core_api/ParamInfo
string param_id
string param_value
")



(provide :core_api/ParamGetAll "b71ead203534a0f9bf45c0f7dcff82b8")


