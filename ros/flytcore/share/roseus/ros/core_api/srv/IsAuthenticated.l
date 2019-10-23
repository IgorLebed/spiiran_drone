;; Auto-generated. Do not edit!


(when (boundp 'core_api::IsAuthenticated)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'IsAuthenticated (find-package "CORE_API")))
(unless (find-package "CORE_API::ISAUTHENTICATED")
  (make-package "CORE_API::ISAUTHENTICATED"))
(unless (find-package "CORE_API::ISAUTHENTICATEDREQUEST")
  (make-package "CORE_API::ISAUTHENTICATEDREQUEST"))
(unless (find-package "CORE_API::ISAUTHENTICATEDRESPONSE")
  (make-package "CORE_API::ISAUTHENTICATEDRESPONSE"))

(in-package "ROS")





(defclass core_api::IsAuthenticatedRequest
  :super ros::object
  :slots ())

(defmethod core_api::IsAuthenticatedRequest
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

(defclass core_api::IsAuthenticatedResponse
  :super ros::object
  :slots (_success _authenticated _message ))

(defmethod core_api::IsAuthenticatedResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:authenticated __authenticated) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _authenticated __authenticated)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:authenticated
   (&optional __authenticated)
   (if __authenticated (setq _authenticated __authenticated)) _authenticated)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; bool _authenticated
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
     ;; bool _authenticated
       (if _authenticated (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _authenticated
     (setq _authenticated (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass core_api::IsAuthenticated
  :super ros::object
  :slots ())

(setf (get core_api::IsAuthenticated :md5sum-) "d77d7c0327f89f653a29b046a4817b94")
(setf (get core_api::IsAuthenticated :datatype-) "core_api/IsAuthenticated")
(setf (get core_api::IsAuthenticated :request) core_api::IsAuthenticatedRequest)
(setf (get core_api::IsAuthenticated :response) core_api::IsAuthenticatedResponse)

(defmethod core_api::IsAuthenticatedRequest
  (:response () (instance core_api::IsAuthenticatedResponse :init)))

(setf (get core_api::IsAuthenticatedRequest :md5sum-) "d77d7c0327f89f653a29b046a4817b94")
(setf (get core_api::IsAuthenticatedRequest :datatype-) "core_api/IsAuthenticatedRequest")
(setf (get core_api::IsAuthenticatedRequest :definition-)
      "
---
bool success
bool authenticated
string message

")

(setf (get core_api::IsAuthenticatedResponse :md5sum-) "d77d7c0327f89f653a29b046a4817b94")
(setf (get core_api::IsAuthenticatedResponse :datatype-) "core_api/IsAuthenticatedResponse")
(setf (get core_api::IsAuthenticatedResponse :definition-)
      "
---
bool success
bool authenticated
string message

")



(provide :core_api/IsAuthenticated "d77d7c0327f89f653a29b046a4817b94")


