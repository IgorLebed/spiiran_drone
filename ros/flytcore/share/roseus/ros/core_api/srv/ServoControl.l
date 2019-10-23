;; Auto-generated. Do not edit!


(when (boundp 'core_api::ServoControl)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'ServoControl (find-package "CORE_API")))
(unless (find-package "CORE_API::SERVOCONTROL")
  (make-package "CORE_API::SERVOCONTROL"))
(unless (find-package "CORE_API::SERVOCONTROLREQUEST")
  (make-package "CORE_API::SERVOCONTROLREQUEST"))
(unless (find-package "CORE_API::SERVOCONTROLRESPONSE")
  (make-package "CORE_API::SERVOCONTROLRESPONSE"))

(in-package "ROS")





(defclass core_api::ServoControlRequest
  :super ros::object
  :slots (_pwm_width _servo_id ))

(defmethod core_api::ServoControlRequest
  (:init
   (&key
    ((:pwm_width __pwm_width) 0)
    ((:servo_id __servo_id) 0)
    )
   (send-super :init)
   (setq _pwm_width (round __pwm_width))
   (setq _servo_id (round __servo_id))
   self)
  (:pwm_width
   (&optional __pwm_width)
   (if __pwm_width (setq _pwm_width __pwm_width)) _pwm_width)
  (:servo_id
   (&optional __servo_id)
   (if __servo_id (setq _servo_id __servo_id)) _servo_id)
  (:serialization-length
   ()
   (+
    ;; uint16 _pwm_width
    2
    ;; uint8 _servo_id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _pwm_width
       (write-word _pwm_width s)
     ;; uint8 _servo_id
       (write-byte _servo_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _pwm_width
     (setq _pwm_width (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _servo_id
     (setq _servo_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass core_api::ServoControlResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::ServoControlResponse
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

(defclass core_api::ServoControl
  :super ros::object
  :slots ())

(setf (get core_api::ServoControl :md5sum-) "ad786bcadcc1dd8887302facb8d1cbdd")
(setf (get core_api::ServoControl :datatype-) "core_api/ServoControl")
(setf (get core_api::ServoControl :request) core_api::ServoControlRequest)
(setf (get core_api::ServoControl :response) core_api::ServoControlResponse)

(defmethod core_api::ServoControlRequest
  (:response () (instance core_api::ServoControlResponse :init)))

(setf (get core_api::ServoControlRequest :md5sum-) "ad786bcadcc1dd8887302facb8d1cbdd")
(setf (get core_api::ServoControlRequest :datatype-) "core_api/ServoControlRequest")
(setf (get core_api::ServoControlRequest :definition-)
      "


uint16 pwm_width
uint8 servo_id
---
bool success
string message

")

(setf (get core_api::ServoControlResponse :md5sum-) "ad786bcadcc1dd8887302facb8d1cbdd")
(setf (get core_api::ServoControlResponse :datatype-) "core_api/ServoControlResponse")
(setf (get core_api::ServoControlResponse :definition-)
      "


uint16 pwm_width
uint8 servo_id
---
bool success
string message

")



(provide :core_api/ServoControl "ad786bcadcc1dd8887302facb8d1cbdd")


