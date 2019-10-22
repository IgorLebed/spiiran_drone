;; Auto-generated. Do not edit!


(when (boundp 'core_api::GetFrameType)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'GetFrameType (find-package "CORE_API")))
(unless (find-package "CORE_API::GETFRAMETYPE")
  (make-package "CORE_API::GETFRAMETYPE"))
(unless (find-package "CORE_API::GETFRAMETYPEREQUEST")
  (make-package "CORE_API::GETFRAMETYPEREQUEST"))
(unless (find-package "CORE_API::GETFRAMETYPERESPONSE")
  (make-package "CORE_API::GETFRAMETYPERESPONSE"))

(in-package "ROS")





(intern "*MAV_TYPE_GENERIC*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_GENERIC* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_GENERIC* 0)
(intern "*MAV_TYPE_FIXED_WING*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_FIXED_WING* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_FIXED_WING* 1)
(intern "*MAV_TYPE_QUADROTOR*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_QUADROTOR* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_QUADROTOR* 2)
(intern "*MAV_TYPE_COAXIAL*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_COAXIAL* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_COAXIAL* 3)
(intern "*MAV_TYPE_HELICOPTER*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_HELICOPTER* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_HELICOPTER* 4)
(intern "*MAV_TYPE_ANTENNA_TRACKER*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_ANTENNA_TRACKER* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_ANTENNA_TRACKER* 5)
(intern "*MAV_TYPE_GCS*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_GCS* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_GCS* 6)
(intern "*MAV_TYPE_AIRSHIP*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_AIRSHIP* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_AIRSHIP* 7)
(intern "*MAV_TYPE_FREE_BALLOON*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_FREE_BALLOON* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_FREE_BALLOON* 8)
(intern "*MAV_TYPE_ROCKET*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_ROCKET* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_ROCKET* 9)
(intern "*MAV_TYPE_GROUND_ROVER*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_GROUND_ROVER* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_GROUND_ROVER* 10)
(intern "*MAV_TYPE_SURFACE_BOAT*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_SURFACE_BOAT* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_SURFACE_BOAT* 11)
(intern "*MAV_TYPE_SUBMARINE*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_SUBMARINE* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_SUBMARINE* 12)
(intern "*MAV_TYPE_HEXAROTOR*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_HEXAROTOR* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_HEXAROTOR* 13)
(intern "*MAV_TYPE_OCTOROTOR*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_OCTOROTOR* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_OCTOROTOR* 14)
(intern "*MAV_TYPE_TRICOPTER*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_TRICOPTER* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_TRICOPTER* 15)
(intern "*MAV_TYPE_FLAPPING_WING*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_FLAPPING_WING* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_FLAPPING_WING* 16)
(intern "*MAV_TYPE_KITE*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_KITE* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_KITE* 17)
(intern "*MAV_TYPE_ONBOARD_CONTROLLER*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_ONBOARD_CONTROLLER* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_ONBOARD_CONTROLLER* 18)
(intern "*MAV_TYPE_VTOL_DUOROTOR*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_VTOL_DUOROTOR* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_VTOL_DUOROTOR* 19)
(intern "*MAV_TYPE_VTOL_QUADROTOR*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_VTOL_QUADROTOR* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_VTOL_QUADROTOR* 20)
(intern "*MAV_TYPE_VTOL_TILTROTOR*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_VTOL_TILTROTOR* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_VTOL_TILTROTOR* 21)
(intern "*MAV_TYPE_VTOL_RESERVED2*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_VTOL_RESERVED2* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_VTOL_RESERVED2* 22)
(intern "*MAV_TYPE_VTOL_RESERVED3*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_VTOL_RESERVED3* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_VTOL_RESERVED3* 23)
(intern "*MAV_TYPE_VTOL_RESERVED4*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_VTOL_RESERVED4* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_VTOL_RESERVED4* 24)
(intern "*MAV_TYPE_VTOL_RESERVED5*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_VTOL_RESERVED5* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_VTOL_RESERVED5* 25)
(intern "*MAV_TYPE_GIMBAL*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_GIMBAL* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_GIMBAL* 26)
(intern "*MAV_TYPE_ADSB*" (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(shadow '*MAV_TYPE_ADSB* (find-package "CORE_API::GETFRAMETYPEREQUEST"))
(defconstant core_api::GetFrameTypeRequest::*MAV_TYPE_ADSB* 27)
(defclass core_api::GetFrameTypeRequest
  :super ros::object
  :slots ())

(defmethod core_api::GetFrameTypeRequest
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

(defclass core_api::GetFrameTypeResponse
  :super ros::object
  :slots (_success _frame_type _message ))

(defmethod core_api::GetFrameTypeResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:frame_type __frame_type) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _frame_type (round __frame_type))
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:frame_type
   (&optional __frame_type)
   (if __frame_type (setq _frame_type __frame_type)) _frame_type)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint8 _frame_type
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
     ;; uint8 _frame_type
       (write-byte _frame_type s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _frame_type
     (setq _frame_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass core_api::GetFrameType
  :super ros::object
  :slots ())

(setf (get core_api::GetFrameType :md5sum-) "2ec2f59783788c725a2606f728cb44da")
(setf (get core_api::GetFrameType :datatype-) "core_api/GetFrameType")
(setf (get core_api::GetFrameType :request) core_api::GetFrameTypeRequest)
(setf (get core_api::GetFrameType :response) core_api::GetFrameTypeResponse)

(defmethod core_api::GetFrameTypeRequest
  (:response () (instance core_api::GetFrameTypeResponse :init)))

(setf (get core_api::GetFrameTypeRequest :md5sum-) "2ec2f59783788c725a2606f728cb44da")
(setf (get core_api::GetFrameTypeRequest :datatype-) "core_api/GetFrameTypeRequest")
(setf (get core_api::GetFrameTypeRequest :definition-)
      "uint8 MAV_TYPE_GENERIC=0
uint8 MAV_TYPE_FIXED_WING=1
uint8 MAV_TYPE_QUADROTOR=2
uint8 MAV_TYPE_COAXIAL=3
uint8 MAV_TYPE_HELICOPTER=4
uint8 MAV_TYPE_ANTENNA_TRACKER=5
uint8 MAV_TYPE_GCS=6
uint8 MAV_TYPE_AIRSHIP=7
uint8 MAV_TYPE_FREE_BALLOON=8
uint8 MAV_TYPE_ROCKET=9
uint8 MAV_TYPE_GROUND_ROVER=10
uint8 MAV_TYPE_SURFACE_BOAT=11
uint8 MAV_TYPE_SUBMARINE=12
uint8 MAV_TYPE_HEXAROTOR=13
uint8 MAV_TYPE_OCTOROTOR=14
uint8 MAV_TYPE_TRICOPTER=15
uint8 MAV_TYPE_FLAPPING_WING=16
uint8 MAV_TYPE_KITE=17
uint8 MAV_TYPE_ONBOARD_CONTROLLER=18
uint8 MAV_TYPE_VTOL_DUOROTOR=19
uint8 MAV_TYPE_VTOL_QUADROTOR=20
uint8 MAV_TYPE_VTOL_TILTROTOR=21
uint8 MAV_TYPE_VTOL_RESERVED2=22
uint8 MAV_TYPE_VTOL_RESERVED3=23
uint8 MAV_TYPE_VTOL_RESERVED4=24
uint8 MAV_TYPE_VTOL_RESERVED5=25
uint8 MAV_TYPE_GIMBAL=26
uint8 MAV_TYPE_ADSB=27

---
bool success
uint8 frame_type
string message

")

(setf (get core_api::GetFrameTypeResponse :md5sum-) "2ec2f59783788c725a2606f728cb44da")
(setf (get core_api::GetFrameTypeResponse :datatype-) "core_api/GetFrameTypeResponse")
(setf (get core_api::GetFrameTypeResponse :definition-)
      "uint8 MAV_TYPE_GENERIC=0
uint8 MAV_TYPE_FIXED_WING=1
uint8 MAV_TYPE_QUADROTOR=2
uint8 MAV_TYPE_COAXIAL=3
uint8 MAV_TYPE_HELICOPTER=4
uint8 MAV_TYPE_ANTENNA_TRACKER=5
uint8 MAV_TYPE_GCS=6
uint8 MAV_TYPE_AIRSHIP=7
uint8 MAV_TYPE_FREE_BALLOON=8
uint8 MAV_TYPE_ROCKET=9
uint8 MAV_TYPE_GROUND_ROVER=10
uint8 MAV_TYPE_SURFACE_BOAT=11
uint8 MAV_TYPE_SUBMARINE=12
uint8 MAV_TYPE_HEXAROTOR=13
uint8 MAV_TYPE_OCTOROTOR=14
uint8 MAV_TYPE_TRICOPTER=15
uint8 MAV_TYPE_FLAPPING_WING=16
uint8 MAV_TYPE_KITE=17
uint8 MAV_TYPE_ONBOARD_CONTROLLER=18
uint8 MAV_TYPE_VTOL_DUOROTOR=19
uint8 MAV_TYPE_VTOL_QUADROTOR=20
uint8 MAV_TYPE_VTOL_TILTROTOR=21
uint8 MAV_TYPE_VTOL_RESERVED2=22
uint8 MAV_TYPE_VTOL_RESERVED3=23
uint8 MAV_TYPE_VTOL_RESERVED4=24
uint8 MAV_TYPE_VTOL_RESERVED5=25
uint8 MAV_TYPE_GIMBAL=26
uint8 MAV_TYPE_ADSB=27

---
bool success
uint8 frame_type
string message

")



(provide :core_api/GetFrameType "2ec2f59783788c725a2606f728cb44da")


