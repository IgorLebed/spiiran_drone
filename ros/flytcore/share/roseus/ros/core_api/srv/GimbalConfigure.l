;; Auto-generated. Do not edit!


(when (boundp 'core_api::GimbalConfigure)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'GimbalConfigure (find-package "CORE_API")))
(unless (find-package "CORE_API::GIMBALCONFIGURE")
  (make-package "CORE_API::GIMBALCONFIGURE"))
(unless (find-package "CORE_API::GIMBALCONFIGUREREQUEST")
  (make-package "CORE_API::GIMBALCONFIGUREREQUEST"))
(unless (find-package "CORE_API::GIMBALCONFIGURERESPONSE")
  (make-package "CORE_API::GIMBALCONFIGURERESPONSE"))

(in-package "ROS")





(defclass core_api::GimbalConfigureRequest
  :super ros::object
  :slots (_do_roll_compensation _do_pitch_compensation _do_yaw_compensation ))

(defmethod core_api::GimbalConfigureRequest
  (:init
   (&key
    ((:do_roll_compensation __do_roll_compensation) nil)
    ((:do_pitch_compensation __do_pitch_compensation) nil)
    ((:do_yaw_compensation __do_yaw_compensation) nil)
    )
   (send-super :init)
   (setq _do_roll_compensation __do_roll_compensation)
   (setq _do_pitch_compensation __do_pitch_compensation)
   (setq _do_yaw_compensation __do_yaw_compensation)
   self)
  (:do_roll_compensation
   (&optional __do_roll_compensation)
   (if __do_roll_compensation (setq _do_roll_compensation __do_roll_compensation)) _do_roll_compensation)
  (:do_pitch_compensation
   (&optional __do_pitch_compensation)
   (if __do_pitch_compensation (setq _do_pitch_compensation __do_pitch_compensation)) _do_pitch_compensation)
  (:do_yaw_compensation
   (&optional __do_yaw_compensation)
   (if __do_yaw_compensation (setq _do_yaw_compensation __do_yaw_compensation)) _do_yaw_compensation)
  (:serialization-length
   ()
   (+
    ;; bool _do_roll_compensation
    1
    ;; bool _do_pitch_compensation
    1
    ;; bool _do_yaw_compensation
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _do_roll_compensation
       (if _do_roll_compensation (write-byte -1 s) (write-byte 0 s))
     ;; bool _do_pitch_compensation
       (if _do_pitch_compensation (write-byte -1 s) (write-byte 0 s))
     ;; bool _do_yaw_compensation
       (if _do_yaw_compensation (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _do_roll_compensation
     (setq _do_roll_compensation (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _do_pitch_compensation
     (setq _do_pitch_compensation (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _do_yaw_compensation
     (setq _do_yaw_compensation (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass core_api::GimbalConfigureResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::GimbalConfigureResponse
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

(defclass core_api::GimbalConfigure
  :super ros::object
  :slots ())

(setf (get core_api::GimbalConfigure :md5sum-) "140f04545dd4676e72d880d299a0bd19")
(setf (get core_api::GimbalConfigure :datatype-) "core_api/GimbalConfigure")
(setf (get core_api::GimbalConfigure :request) core_api::GimbalConfigureRequest)
(setf (get core_api::GimbalConfigure :response) core_api::GimbalConfigureResponse)

(defmethod core_api::GimbalConfigureRequest
  (:response () (instance core_api::GimbalConfigureResponse :init)))

(setf (get core_api::GimbalConfigureRequest :md5sum-) "140f04545dd4676e72d880d299a0bd19")
(setf (get core_api::GimbalConfigureRequest :datatype-) "core_api/GimbalConfigureRequest")
(setf (get core_api::GimbalConfigureRequest :definition-)
      "


bool do_roll_compensation
bool do_pitch_compensation
bool do_yaw_compensation

---
bool success
string message

")

(setf (get core_api::GimbalConfigureResponse :md5sum-) "140f04545dd4676e72d880d299a0bd19")
(setf (get core_api::GimbalConfigureResponse :datatype-) "core_api/GimbalConfigureResponse")
(setf (get core_api::GimbalConfigureResponse :definition-)
      "


bool do_roll_compensation
bool do_pitch_compensation
bool do_yaw_compensation

---
bool success
string message

")



(provide :core_api/GimbalConfigure "140f04545dd4676e72d880d299a0bd19")


