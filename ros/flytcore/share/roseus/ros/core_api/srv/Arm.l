;; Auto-generated. Do not edit!


(when (boundp 'core_api::Arm)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'Arm (find-package "CORE_API")))
(unless (find-package "CORE_API::ARM")
  (make-package "CORE_API::ARM"))
(unless (find-package "CORE_API::ARMREQUEST")
  (make-package "CORE_API::ARMREQUEST"))
(unless (find-package "CORE_API::ARMRESPONSE")
  (make-package "CORE_API::ARMRESPONSE"))

(in-package "ROS")





(defclass core_api::ArmRequest
  :super ros::object
  :slots ())

(defmethod core_api::ArmRequest
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

(defclass core_api::ArmResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::ArmResponse
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

(defclass core_api::Arm
  :super ros::object
  :slots ())

(setf (get core_api::Arm :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::Arm :datatype-) "core_api/Arm")
(setf (get core_api::Arm :request) core_api::ArmRequest)
(setf (get core_api::Arm :response) core_api::ArmResponse)

(defmethod core_api::ArmRequest
  (:response () (instance core_api::ArmResponse :init)))

(setf (get core_api::ArmRequest :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::ArmRequest :datatype-) "core_api/ArmRequest")
(setf (get core_api::ArmRequest :definition-)
      "


---
bool success
string message

")

(setf (get core_api::ArmResponse :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::ArmResponse :datatype-) "core_api/ArmResponse")
(setf (get core_api::ArmResponse :definition-)
      "


---
bool success
string message

")



(provide :core_api/Arm "937c9679a518e3a18d831e57125ea522")


