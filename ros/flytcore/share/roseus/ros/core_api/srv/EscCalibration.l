;; Auto-generated. Do not edit!


(when (boundp 'core_api::EscCalibration)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'EscCalibration (find-package "CORE_API")))
(unless (find-package "CORE_API::ESCCALIBRATION")
  (make-package "CORE_API::ESCCALIBRATION"))
(unless (find-package "CORE_API::ESCCALIBRATIONREQUEST")
  (make-package "CORE_API::ESCCALIBRATIONREQUEST"))
(unless (find-package "CORE_API::ESCCALIBRATIONRESPONSE")
  (make-package "CORE_API::ESCCALIBRATIONRESPONSE"))

(in-package "ROS")





(intern "*CALIBRATION_STATE_SET_PWM_MAX*" (find-package "CORE_API::ESCCALIBRATIONREQUEST"))
(shadow '*CALIBRATION_STATE_SET_PWM_MAX* (find-package "CORE_API::ESCCALIBRATIONREQUEST"))
(defconstant core_api::EscCalibrationRequest::*CALIBRATION_STATE_SET_PWM_MAX* 1)
(intern "*CALIBRATION_STATE_SET_PWM_MIN*" (find-package "CORE_API::ESCCALIBRATIONREQUEST"))
(shadow '*CALIBRATION_STATE_SET_PWM_MIN* (find-package "CORE_API::ESCCALIBRATIONREQUEST"))
(defconstant core_api::EscCalibrationRequest::*CALIBRATION_STATE_SET_PWM_MIN* 2)
(intern "*CALIBRATION_STATE_CANCEL*" (find-package "CORE_API::ESCCALIBRATIONREQUEST"))
(shadow '*CALIBRATION_STATE_CANCEL* (find-package "CORE_API::ESCCALIBRATIONREQUEST"))
(defconstant core_api::EscCalibrationRequest::*CALIBRATION_STATE_CANCEL* 3)
(defclass core_api::EscCalibrationRequest
  :super ros::object
  :slots (_pwm_min _pwm_max _num_of_actuators _calibration_state ))

(defmethod core_api::EscCalibrationRequest
  (:init
   (&key
    ((:pwm_min __pwm_min) 0.0)
    ((:pwm_max __pwm_max) 0.0)
    ((:num_of_actuators __num_of_actuators) 0)
    ((:calibration_state __calibration_state) 0)
    )
   (send-super :init)
   (setq _pwm_min (float __pwm_min))
   (setq _pwm_max (float __pwm_max))
   (setq _num_of_actuators (round __num_of_actuators))
   (setq _calibration_state (round __calibration_state))
   self)
  (:pwm_min
   (&optional __pwm_min)
   (if __pwm_min (setq _pwm_min __pwm_min)) _pwm_min)
  (:pwm_max
   (&optional __pwm_max)
   (if __pwm_max (setq _pwm_max __pwm_max)) _pwm_max)
  (:num_of_actuators
   (&optional __num_of_actuators)
   (if __num_of_actuators (setq _num_of_actuators __num_of_actuators)) _num_of_actuators)
  (:calibration_state
   (&optional __calibration_state)
   (if __calibration_state (setq _calibration_state __calibration_state)) _calibration_state)
  (:serialization-length
   ()
   (+
    ;; float32 _pwm_min
    4
    ;; float32 _pwm_max
    4
    ;; int8 _num_of_actuators
    1
    ;; int8 _calibration_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _pwm_min
       (sys::poke _pwm_min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pwm_max
       (sys::poke _pwm_max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _num_of_actuators
       (write-byte _num_of_actuators s)
     ;; int8 _calibration_state
       (write-byte _calibration_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pwm_min
     (setq _pwm_min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pwm_max
     (setq _pwm_max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _num_of_actuators
     (setq _num_of_actuators (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _num_of_actuators 127) (setq _num_of_actuators (- _num_of_actuators 256)))
   ;; int8 _calibration_state
     (setq _calibration_state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _calibration_state 127) (setq _calibration_state (- _calibration_state 256)))
   ;;
   self)
  )

(defclass core_api::EscCalibrationResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::EscCalibrationResponse
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

(defclass core_api::EscCalibration
  :super ros::object
  :slots ())

(setf (get core_api::EscCalibration :md5sum-) "250665cf11b7e061cef652c07d5dc46a")
(setf (get core_api::EscCalibration :datatype-) "core_api/EscCalibration")
(setf (get core_api::EscCalibration :request) core_api::EscCalibrationRequest)
(setf (get core_api::EscCalibration :response) core_api::EscCalibrationResponse)

(defmethod core_api::EscCalibrationRequest
  (:response () (instance core_api::EscCalibrationResponse :init)))

(setf (get core_api::EscCalibrationRequest :md5sum-) "250665cf11b7e061cef652c07d5dc46a")
(setf (get core_api::EscCalibrationRequest :datatype-) "core_api/EscCalibrationRequest")
(setf (get core_api::EscCalibrationRequest :definition-)
      "int8 CALIBRATION_STATE_SET_PWM_MAX = 1
int8 CALIBRATION_STATE_SET_PWM_MIN = 2
int8 CALIBRATION_STATE_CANCEL = 3
float32 pwm_min
float32 pwm_max
int8 num_of_actuators
int8 calibration_state
---
bool success
string message

")

(setf (get core_api::EscCalibrationResponse :md5sum-) "250665cf11b7e061cef652c07d5dc46a")
(setf (get core_api::EscCalibrationResponse :datatype-) "core_api/EscCalibrationResponse")
(setf (get core_api::EscCalibrationResponse :definition-)
      "int8 CALIBRATION_STATE_SET_PWM_MAX = 1
int8 CALIBRATION_STATE_SET_PWM_MIN = 2
int8 CALIBRATION_STATE_CANCEL = 3
float32 pwm_min
float32 pwm_max
int8 num_of_actuators
int8 calibration_state
---
bool success
string message

")



(provide :core_api/EscCalibration "250665cf11b7e061cef652c07d5dc46a")


