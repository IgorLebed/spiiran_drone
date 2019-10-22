;; Auto-generated. Do not edit!


(when (boundp 'core_api::RTL)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'RTL (find-package "CORE_API")))
(unless (find-package "CORE_API::RTL")
  (make-package "CORE_API::RTL"))
(unless (find-package "CORE_API::RTLREQUEST")
  (make-package "CORE_API::RTLREQUEST"))
(unless (find-package "CORE_API::RTLRESPONSE")
  (make-package "CORE_API::RTLRESPONSE"))

(in-package "ROS")





(defclass core_api::RTLRequest
  :super ros::object
  :slots ())

(defmethod core_api::RTLRequest
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

(defclass core_api::RTLResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::RTLResponse
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

(defclass core_api::RTL
  :super ros::object
  :slots ())

(setf (get core_api::RTL :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::RTL :datatype-) "core_api/RTL")
(setf (get core_api::RTL :request) core_api::RTLRequest)
(setf (get core_api::RTL :response) core_api::RTLResponse)

(defmethod core_api::RTLRequest
  (:response () (instance core_api::RTLResponse :init)))

(setf (get core_api::RTLRequest :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::RTLRequest :datatype-) "core_api/RTLRequest")
(setf (get core_api::RTLRequest :definition-)
      "


---
bool success
string message

")

(setf (get core_api::RTLResponse :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::RTLResponse :datatype-) "core_api/RTLResponse")
(setf (get core_api::RTLResponse :definition-)
      "


---
bool success
string message

")



(provide :core_api/RTL "937c9679a518e3a18d831e57125ea522")


