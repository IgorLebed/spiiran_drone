;; Auto-generated. Do not edit!


(when (boundp 'core_api::ModuleCalibration)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'ModuleCalibration (find-package "CORE_API")))
(unless (find-package "CORE_API::MODULECALIBRATION")
  (make-package "CORE_API::MODULECALIBRATION"))
(unless (find-package "CORE_API::MODULECALIBRATIONREQUEST")
  (make-package "CORE_API::MODULECALIBRATIONREQUEST"))
(unless (find-package "CORE_API::MODULECALIBRATIONRESPONSE")
  (make-package "CORE_API::MODULECALIBRATIONRESPONSE"))

(in-package "ROS")





(intern "*STOP*" (find-package "CORE_API::MODULECALIBRATIONREQUEST"))
(shadow '*STOP* (find-package "CORE_API::MODULECALIBRATIONREQUEST"))
(defconstant core_api::ModuleCalibrationRequest::*STOP* 0)
(intern "*ACCELEROMETER*" (find-package "CORE_API::MODULECALIBRATIONREQUEST"))
(shadow '*ACCELEROMETER* (find-package "CORE_API::MODULECALIBRATIONREQUEST"))
(defconstant core_api::ModuleCalibrationRequest::*ACCELEROMETER* 1)
(intern "*GYROSCOPE*" (find-package "CORE_API::MODULECALIBRATIONREQUEST"))
(shadow '*GYROSCOPE* (find-package "CORE_API::MODULECALIBRATIONREQUEST"))
(defconstant core_api::ModuleCalibrationRequest::*GYROSCOPE* 2)
(intern "*MAGNETOMETER*" (find-package "CORE_API::MODULECALIBRATIONREQUEST"))
(shadow '*MAGNETOMETER* (find-package "CORE_API::MODULECALIBRATIONREQUEST"))
(defconstant core_api::ModuleCalibrationRequest::*MAGNETOMETER* 3)
(intern "*RC*" (find-package "CORE_API::MODULECALIBRATIONREQUEST"))
(shadow '*RC* (find-package "CORE_API::MODULECALIBRATIONREQUEST"))
(defconstant core_api::ModuleCalibrationRequest::*RC* 4)
(intern "*RC_TRIM*" (find-package "CORE_API::MODULECALIBRATIONREQUEST"))
(shadow '*RC_TRIM* (find-package "CORE_API::MODULECALIBRATIONREQUEST"))
(defconstant core_api::ModuleCalibrationRequest::*RC_TRIM* 5)
(intern "*RC_STOP*" (find-package "CORE_API::MODULECALIBRATIONREQUEST"))
(shadow '*RC_STOP* (find-package "CORE_API::MODULECALIBRATIONREQUEST"))
(defconstant core_api::ModuleCalibrationRequest::*RC_STOP* 6)
(intern "*LEVEL*" (find-package "CORE_API::MODULECALIBRATIONREQUEST"))
(shadow '*LEVEL* (find-package "CORE_API::MODULECALIBRATIONREQUEST"))
(defconstant core_api::ModuleCalibrationRequest::*LEVEL* 7)
(intern "*AIRSPEED*" (find-package "CORE_API::MODULECALIBRATIONREQUEST"))
(shadow '*AIRSPEED* (find-package "CORE_API::MODULECALIBRATIONREQUEST"))
(defconstant core_api::ModuleCalibrationRequest::*AIRSPEED* 8)
(defclass core_api::ModuleCalibrationRequest
  :super ros::object
  :slots (_module_calibrate ))

(defmethod core_api::ModuleCalibrationRequest
  (:init
   (&key
    ((:module_calibrate __module_calibrate) 0)
    )
   (send-super :init)
   (setq _module_calibrate (round __module_calibrate))
   self)
  (:module_calibrate
   (&optional __module_calibrate)
   (if __module_calibrate (setq _module_calibrate __module_calibrate)) _module_calibrate)
  (:serialization-length
   ()
   (+
    ;; int8 _module_calibrate
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _module_calibrate
       (write-byte _module_calibrate s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _module_calibrate
     (setq _module_calibrate (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _module_calibrate 127) (setq _module_calibrate (- _module_calibrate 256)))
   ;;
   self)
  )

(defclass core_api::ModuleCalibrationResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::ModuleCalibrationResponse
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

(defclass core_api::ModuleCalibration
  :super ros::object
  :slots ())

(setf (get core_api::ModuleCalibration :md5sum-) "9928bcb1099b5b3fb4ae123e92f7d55b")
(setf (get core_api::ModuleCalibration :datatype-) "core_api/ModuleCalibration")
(setf (get core_api::ModuleCalibration :request) core_api::ModuleCalibrationRequest)
(setf (get core_api::ModuleCalibration :response) core_api::ModuleCalibrationResponse)

(defmethod core_api::ModuleCalibrationRequest
  (:response () (instance core_api::ModuleCalibrationResponse :init)))

(setf (get core_api::ModuleCalibrationRequest :md5sum-) "9928bcb1099b5b3fb4ae123e92f7d55b")
(setf (get core_api::ModuleCalibrationRequest :datatype-) "core_api/ModuleCalibrationRequest")
(setf (get core_api::ModuleCalibrationRequest :definition-)
      "uint8 STOP = 0
uint8 ACCELEROMETER = 1
uint8 GYROSCOPE = 2
uint8 MAGNETOMETER = 3
uint8 RC = 4
uint8 RC_TRIM = 5
uint8 RC_STOP = 6
uint8 LEVEL = 7
uint8 AIRSPEED = 8

int8 module_calibrate
---
bool success
string message

")

(setf (get core_api::ModuleCalibrationResponse :md5sum-) "9928bcb1099b5b3fb4ae123e92f7d55b")
(setf (get core_api::ModuleCalibrationResponse :datatype-) "core_api/ModuleCalibrationResponse")
(setf (get core_api::ModuleCalibrationResponse :definition-)
      "uint8 STOP = 0
uint8 ACCELEROMETER = 1
uint8 GYROSCOPE = 2
uint8 MAGNETOMETER = 3
uint8 RC = 4
uint8 RC_TRIM = 5
uint8 RC_STOP = 6
uint8 LEVEL = 7
uint8 AIRSPEED = 8

int8 module_calibrate
---
bool success
string message

")



(provide :core_api/ModuleCalibration "9928bcb1099b5b3fb4ae123e92f7d55b")


