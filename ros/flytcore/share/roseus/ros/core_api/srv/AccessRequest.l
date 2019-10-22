;; Auto-generated. Do not edit!


(when (boundp 'core_api::AccessRequest)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'AccessRequest (find-package "CORE_API")))
(unless (find-package "CORE_API::ACCESSREQUEST")
  (make-package "CORE_API::ACCESSREQUEST"))
(unless (find-package "CORE_API::ACCESSREQUESTREQUEST")
  (make-package "CORE_API::ACCESSREQUESTREQUEST"))
(unless (find-package "CORE_API::ACCESSREQUESTRESPONSE")
  (make-package "CORE_API::ACCESSREQUESTRESPONSE"))

(in-package "ROS")





(defclass core_api::AccessRequestRequest
  :super ros::object
  :slots (_enable_access ))

(defmethod core_api::AccessRequestRequest
  (:init
   (&key
    ((:enable_access __enable_access) nil)
    )
   (send-super :init)
   (setq _enable_access __enable_access)
   self)
  (:enable_access
   (&optional __enable_access)
   (if __enable_access (setq _enable_access __enable_access)) _enable_access)
  (:serialization-length
   ()
   (+
    ;; bool _enable_access
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable_access
       (if _enable_access (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable_access
     (setq _enable_access (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass core_api::AccessRequestResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::AccessRequestResponse
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

(defclass core_api::AccessRequest
  :super ros::object
  :slots ())

(setf (get core_api::AccessRequest :md5sum-) "33d3fc71797add513e6215262794d4c2")
(setf (get core_api::AccessRequest :datatype-) "core_api/AccessRequest")
(setf (get core_api::AccessRequest :request) core_api::AccessRequestRequest)
(setf (get core_api::AccessRequest :response) core_api::AccessRequestResponse)

(defmethod core_api::AccessRequestRequest
  (:response () (instance core_api::AccessRequestResponse :init)))

(setf (get core_api::AccessRequestRequest :md5sum-) "33d3fc71797add513e6215262794d4c2")
(setf (get core_api::AccessRequestRequest :datatype-) "core_api/AccessRequestRequest")
(setf (get core_api::AccessRequestRequest :definition-)
      "

bool enable_access
---
bool success
string message

")

(setf (get core_api::AccessRequestResponse :md5sum-) "33d3fc71797add513e6215262794d4c2")
(setf (get core_api::AccessRequestResponse :datatype-) "core_api/AccessRequestResponse")
(setf (get core_api::AccessRequestResponse :definition-)
      "

bool enable_access
---
bool success
string message

")



(provide :core_api/AccessRequest "33d3fc71797add513e6215262794d4c2")


