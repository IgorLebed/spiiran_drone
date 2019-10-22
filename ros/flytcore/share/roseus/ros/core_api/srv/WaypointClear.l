;; Auto-generated. Do not edit!


(when (boundp 'core_api::WaypointClear)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'WaypointClear (find-package "CORE_API")))
(unless (find-package "CORE_API::WAYPOINTCLEAR")
  (make-package "CORE_API::WAYPOINTCLEAR"))
(unless (find-package "CORE_API::WAYPOINTCLEARREQUEST")
  (make-package "CORE_API::WAYPOINTCLEARREQUEST"))
(unless (find-package "CORE_API::WAYPOINTCLEARRESPONSE")
  (make-package "CORE_API::WAYPOINTCLEARRESPONSE"))

(in-package "ROS")





(defclass core_api::WaypointClearRequest
  :super ros::object
  :slots ())

(defmethod core_api::WaypointClearRequest
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

(defclass core_api::WaypointClearResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::WaypointClearResponse
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

(defclass core_api::WaypointClear
  :super ros::object
  :slots ())

(setf (get core_api::WaypointClear :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::WaypointClear :datatype-) "core_api/WaypointClear")
(setf (get core_api::WaypointClear :request) core_api::WaypointClearRequest)
(setf (get core_api::WaypointClear :response) core_api::WaypointClearResponse)

(defmethod core_api::WaypointClearRequest
  (:response () (instance core_api::WaypointClearResponse :init)))

(setf (get core_api::WaypointClearRequest :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::WaypointClearRequest :datatype-) "core_api/WaypointClearRequest")
(setf (get core_api::WaypointClearRequest :definition-)
      "

---
bool success
string message

")

(setf (get core_api::WaypointClearResponse :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::WaypointClearResponse :datatype-) "core_api/WaypointClearResponse")
(setf (get core_api::WaypointClearResponse :definition-)
      "

---
bool success
string message

")



(provide :core_api/WaypointClear "937c9679a518e3a18d831e57125ea522")


