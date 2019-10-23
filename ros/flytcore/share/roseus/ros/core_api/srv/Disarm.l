;; Auto-generated. Do not edit!


(when (boundp 'core_api::Disarm)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'Disarm (find-package "CORE_API")))
(unless (find-package "CORE_API::DISARM")
  (make-package "CORE_API::DISARM"))
(unless (find-package "CORE_API::DISARMREQUEST")
  (make-package "CORE_API::DISARMREQUEST"))
(unless (find-package "CORE_API::DISARMRESPONSE")
  (make-package "CORE_API::DISARMRESPONSE"))

(in-package "ROS")





(defclass core_api::DisarmRequest
  :super ros::object
  :slots ())

(defmethod core_api::DisarmRequest
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

(defclass core_api::DisarmResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::DisarmResponse
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

(defclass core_api::Disarm
  :super ros::object
  :slots ())

(setf (get core_api::Disarm :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::Disarm :datatype-) "core_api/Disarm")
(setf (get core_api::Disarm :request) core_api::DisarmRequest)
(setf (get core_api::Disarm :response) core_api::DisarmResponse)

(defmethod core_api::DisarmRequest
  (:response () (instance core_api::DisarmResponse :init)))

(setf (get core_api::DisarmRequest :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::DisarmRequest :datatype-) "core_api/DisarmRequest")
(setf (get core_api::DisarmRequest :definition-)
      "


---
bool success
string message

")

(setf (get core_api::DisarmResponse :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::DisarmResponse :datatype-) "core_api/DisarmResponse")
(setf (get core_api::DisarmResponse :definition-)
      "


---
bool success
string message

")



(provide :core_api/Disarm "937c9679a518e3a18d831e57125ea522")


