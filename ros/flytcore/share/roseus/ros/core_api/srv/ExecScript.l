;; Auto-generated. Do not edit!


(when (boundp 'core_api::ExecScript)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'ExecScript (find-package "CORE_API")))
(unless (find-package "CORE_API::EXECSCRIPT")
  (make-package "CORE_API::EXECSCRIPT"))
(unless (find-package "CORE_API::EXECSCRIPTREQUEST")
  (make-package "CORE_API::EXECSCRIPTREQUEST"))
(unless (find-package "CORE_API::EXECSCRIPTRESPONSE")
  (make-package "CORE_API::EXECSCRIPTRESPONSE"))

(in-package "ROS")





(defclass core_api::ExecScriptRequest
  :super ros::object
  :slots (_app_name _arguments ))

(defmethod core_api::ExecScriptRequest
  (:init
   (&key
    ((:app_name __app_name) "")
    ((:arguments __arguments) "")
    )
   (send-super :init)
   (setq _app_name (string __app_name))
   (setq _arguments (string __arguments))
   self)
  (:app_name
   (&optional __app_name)
   (if __app_name (setq _app_name __app_name)) _app_name)
  (:arguments
   (&optional __arguments)
   (if __arguments (setq _arguments __arguments)) _arguments)
  (:serialization-length
   ()
   (+
    ;; string _app_name
    4 (length _app_name)
    ;; string _arguments
    4 (length _arguments)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _app_name
       (write-long (length _app_name) s) (princ _app_name s)
     ;; string _arguments
       (write-long (length _arguments) s) (princ _arguments s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _app_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _app_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _arguments
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _arguments (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass core_api::ExecScriptResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::ExecScriptResponse
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

(defclass core_api::ExecScript
  :super ros::object
  :slots ())

(setf (get core_api::ExecScript :md5sum-) "dc0ad6b67076c8affab5d27840600a3e")
(setf (get core_api::ExecScript :datatype-) "core_api/ExecScript")
(setf (get core_api::ExecScript :request) core_api::ExecScriptRequest)
(setf (get core_api::ExecScript :response) core_api::ExecScriptResponse)

(defmethod core_api::ExecScriptRequest
  (:response () (instance core_api::ExecScriptResponse :init)))

(setf (get core_api::ExecScriptRequest :md5sum-) "dc0ad6b67076c8affab5d27840600a3e")
(setf (get core_api::ExecScriptRequest :datatype-) "core_api/ExecScriptRequest")
(setf (get core_api::ExecScriptRequest :definition-)
      "


string app_name
string arguments
---
bool success
string message

")

(setf (get core_api::ExecScriptResponse :md5sum-) "dc0ad6b67076c8affab5d27840600a3e")
(setf (get core_api::ExecScriptResponse :datatype-) "core_api/ExecScriptResponse")
(setf (get core_api::ExecScriptResponse :definition-)
      "


string app_name
string arguments
---
bool success
string message

")



(provide :core_api/ExecScript "dc0ad6b67076c8affab5d27840600a3e")


