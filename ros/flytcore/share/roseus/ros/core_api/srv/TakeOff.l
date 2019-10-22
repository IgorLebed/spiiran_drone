;; Auto-generated. Do not edit!


(when (boundp 'core_api::TakeOff)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'TakeOff (find-package "CORE_API")))
(unless (find-package "CORE_API::TAKEOFF")
  (make-package "CORE_API::TAKEOFF"))
(unless (find-package "CORE_API::TAKEOFFREQUEST")
  (make-package "CORE_API::TAKEOFFREQUEST"))
(unless (find-package "CORE_API::TAKEOFFRESPONSE")
  (make-package "CORE_API::TAKEOFFRESPONSE"))

(in-package "ROS")





(defclass core_api::TakeOffRequest
  :super ros::object
  :slots (_takeoff_alt ))

(defmethod core_api::TakeOffRequest
  (:init
   (&key
    ((:takeoff_alt __takeoff_alt) 0.0)
    )
   (send-super :init)
   (setq _takeoff_alt (float __takeoff_alt))
   self)
  (:takeoff_alt
   (&optional __takeoff_alt)
   (if __takeoff_alt (setq _takeoff_alt __takeoff_alt)) _takeoff_alt)
  (:serialization-length
   ()
   (+
    ;; float32 _takeoff_alt
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _takeoff_alt
       (sys::poke _takeoff_alt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _takeoff_alt
     (setq _takeoff_alt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass core_api::TakeOffResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::TakeOffResponse
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

(defclass core_api::TakeOff
  :super ros::object
  :slots ())

(setf (get core_api::TakeOff :md5sum-) "8cfca9a26364ca62689da1c045d9ce94")
(setf (get core_api::TakeOff :datatype-) "core_api/TakeOff")
(setf (get core_api::TakeOff :request) core_api::TakeOffRequest)
(setf (get core_api::TakeOff :response) core_api::TakeOffResponse)

(defmethod core_api::TakeOffRequest
  (:response () (instance core_api::TakeOffResponse :init)))

(setf (get core_api::TakeOffRequest :md5sum-) "8cfca9a26364ca62689da1c045d9ce94")
(setf (get core_api::TakeOffRequest :datatype-) "core_api/TakeOffRequest")
(setf (get core_api::TakeOffRequest :definition-)
      "


float32 takeoff_alt
---
bool success
string message

")

(setf (get core_api::TakeOffResponse :md5sum-) "8cfca9a26364ca62689da1c045d9ce94")
(setf (get core_api::TakeOffResponse :datatype-) "core_api/TakeOffResponse")
(setf (get core_api::TakeOffResponse :definition-)
      "


float32 takeoff_alt
---
bool success
string message

")



(provide :core_api/TakeOff "8cfca9a26364ca62689da1c045d9ce94")


