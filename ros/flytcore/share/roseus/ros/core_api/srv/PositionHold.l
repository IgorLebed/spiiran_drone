;; Auto-generated. Do not edit!


(when (boundp 'core_api::PositionHold)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'PositionHold (find-package "CORE_API")))
(unless (find-package "CORE_API::POSITIONHOLD")
  (make-package "CORE_API::POSITIONHOLD"))
(unless (find-package "CORE_API::POSITIONHOLDREQUEST")
  (make-package "CORE_API::POSITIONHOLDREQUEST"))
(unless (find-package "CORE_API::POSITIONHOLDRESPONSE")
  (make-package "CORE_API::POSITIONHOLDRESPONSE"))

(in-package "ROS")





(defclass core_api::PositionHoldRequest
  :super ros::object
  :slots ())

(defmethod core_api::PositionHoldRequest
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

(defclass core_api::PositionHoldResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::PositionHoldResponse
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

(defclass core_api::PositionHold
  :super ros::object
  :slots ())

(setf (get core_api::PositionHold :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::PositionHold :datatype-) "core_api/PositionHold")
(setf (get core_api::PositionHold :request) core_api::PositionHoldRequest)
(setf (get core_api::PositionHold :response) core_api::PositionHoldResponse)

(defmethod core_api::PositionHoldRequest
  (:response () (instance core_api::PositionHoldResponse :init)))

(setf (get core_api::PositionHoldRequest :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::PositionHoldRequest :datatype-) "core_api/PositionHoldRequest")
(setf (get core_api::PositionHoldRequest :definition-)
      "


---
bool success
string message

")

(setf (get core_api::PositionHoldResponse :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::PositionHoldResponse :datatype-) "core_api/PositionHoldResponse")
(setf (get core_api::PositionHoldResponse :definition-)
      "


---
bool success
string message

")



(provide :core_api/PositionHold "937c9679a518e3a18d831e57125ea522")


