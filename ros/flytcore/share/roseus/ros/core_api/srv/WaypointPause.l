;; Auto-generated. Do not edit!


(when (boundp 'core_api::WaypointPause)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'WaypointPause (find-package "CORE_API")))
(unless (find-package "CORE_API::WAYPOINTPAUSE")
  (make-package "CORE_API::WAYPOINTPAUSE"))
(unless (find-package "CORE_API::WAYPOINTPAUSEREQUEST")
  (make-package "CORE_API::WAYPOINTPAUSEREQUEST"))
(unless (find-package "CORE_API::WAYPOINTPAUSERESPONSE")
  (make-package "CORE_API::WAYPOINTPAUSERESPONSE"))

(in-package "ROS")





(defclass core_api::WaypointPauseRequest
  :super ros::object
  :slots ())

(defmethod core_api::WaypointPauseRequest
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

(defclass core_api::WaypointPauseResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::WaypointPauseResponse
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

(defclass core_api::WaypointPause
  :super ros::object
  :slots ())

(setf (get core_api::WaypointPause :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::WaypointPause :datatype-) "core_api/WaypointPause")
(setf (get core_api::WaypointPause :request) core_api::WaypointPauseRequest)
(setf (get core_api::WaypointPause :response) core_api::WaypointPauseResponse)

(defmethod core_api::WaypointPauseRequest
  (:response () (instance core_api::WaypointPauseResponse :init)))

(setf (get core_api::WaypointPauseRequest :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::WaypointPauseRequest :datatype-) "core_api/WaypointPauseRequest")
(setf (get core_api::WaypointPauseRequest :definition-)
      "

---
bool success
string message

")

(setf (get core_api::WaypointPauseResponse :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::WaypointPauseResponse :datatype-) "core_api/WaypointPauseResponse")
(setf (get core_api::WaypointPauseResponse :definition-)
      "

---
bool success
string message

")



(provide :core_api/WaypointPause "937c9679a518e3a18d831e57125ea522")


