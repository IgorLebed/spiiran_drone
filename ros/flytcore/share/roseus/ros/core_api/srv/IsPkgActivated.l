;; Auto-generated. Do not edit!


(when (boundp 'core_api::IsPkgActivated)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'IsPkgActivated (find-package "CORE_API")))
(unless (find-package "CORE_API::ISPKGACTIVATED")
  (make-package "CORE_API::ISPKGACTIVATED"))
(unless (find-package "CORE_API::ISPKGACTIVATEDREQUEST")
  (make-package "CORE_API::ISPKGACTIVATEDREQUEST"))
(unless (find-package "CORE_API::ISPKGACTIVATEDRESPONSE")
  (make-package "CORE_API::ISPKGACTIVATEDRESPONSE"))

(in-package "ROS")





(defclass core_api::IsPkgActivatedRequest
  :super ros::object
  :slots (_pkg_name ))

(defmethod core_api::IsPkgActivatedRequest
  (:init
   (&key
    ((:pkg_name __pkg_name) "")
    )
   (send-super :init)
   (setq _pkg_name (string __pkg_name))
   self)
  (:pkg_name
   (&optional __pkg_name)
   (if __pkg_name (setq _pkg_name __pkg_name)) _pkg_name)
  (:serialization-length
   ()
   (+
    ;; string _pkg_name
    4 (length _pkg_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _pkg_name
       (write-long (length _pkg_name) s) (princ _pkg_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _pkg_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pkg_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass core_api::IsPkgActivatedResponse
  :super ros::object
  :slots (_success _activated _message ))

(defmethod core_api::IsPkgActivatedResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:activated __activated) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _activated __activated)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:activated
   (&optional __activated)
   (if __activated (setq _activated __activated)) _activated)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; bool _activated
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
     ;; bool _activated
       (if _activated (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _activated
     (setq _activated (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass core_api::IsPkgActivated
  :super ros::object
  :slots ())

(setf (get core_api::IsPkgActivated :md5sum-) "840df30bd3d88303e2027160e9982454")
(setf (get core_api::IsPkgActivated :datatype-) "core_api/IsPkgActivated")
(setf (get core_api::IsPkgActivated :request) core_api::IsPkgActivatedRequest)
(setf (get core_api::IsPkgActivated :response) core_api::IsPkgActivatedResponse)

(defmethod core_api::IsPkgActivatedRequest
  (:response () (instance core_api::IsPkgActivatedResponse :init)))

(setf (get core_api::IsPkgActivatedRequest :md5sum-) "840df30bd3d88303e2027160e9982454")
(setf (get core_api::IsPkgActivatedRequest :datatype-) "core_api/IsPkgActivatedRequest")
(setf (get core_api::IsPkgActivatedRequest :definition-)
      "string pkg_name
---
bool success
bool activated
string message

")

(setf (get core_api::IsPkgActivatedResponse :md5sum-) "840df30bd3d88303e2027160e9982454")
(setf (get core_api::IsPkgActivatedResponse :datatype-) "core_api/IsPkgActivatedResponse")
(setf (get core_api::IsPkgActivatedResponse :definition-)
      "string pkg_name
---
bool success
bool activated
string message

")



(provide :core_api/IsPkgActivated "840df30bd3d88303e2027160e9982454")


