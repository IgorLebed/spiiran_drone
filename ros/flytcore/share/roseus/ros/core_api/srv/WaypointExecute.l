;; Auto-generated. Do not edit!


(when (boundp 'core_api::WaypointExecute)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'WaypointExecute (find-package "CORE_API")))
(unless (find-package "CORE_API::WAYPOINTEXECUTE")
  (make-package "CORE_API::WAYPOINTEXECUTE"))
(unless (find-package "CORE_API::WAYPOINTEXECUTEREQUEST")
  (make-package "CORE_API::WAYPOINTEXECUTEREQUEST"))
(unless (find-package "CORE_API::WAYPOINTEXECUTERESPONSE")
  (make-package "CORE_API::WAYPOINTEXECUTERESPONSE"))

(in-package "ROS")





(defclass core_api::WaypointExecuteRequest
  :super ros::object
  :slots ())

(defmethod core_api::WaypointExecuteRequest
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

(defclass core_api::WaypointExecuteResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::WaypointExecuteResponse
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

(defclass core_api::WaypointExecute
  :super ros::object
  :slots ())

(setf (get core_api::WaypointExecute :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::WaypointExecute :datatype-) "core_api/WaypointExecute")
(setf (get core_api::WaypointExecute :request) core_api::WaypointExecuteRequest)
(setf (get core_api::WaypointExecute :response) core_api::WaypointExecuteResponse)

(defmethod core_api::WaypointExecuteRequest
  (:response () (instance core_api::WaypointExecuteResponse :init)))

(setf (get core_api::WaypointExecuteRequest :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::WaypointExecuteRequest :datatype-) "core_api/WaypointExecuteRequest")
(setf (get core_api::WaypointExecuteRequest :definition-)
      "

---
bool success
string message

")

(setf (get core_api::WaypointExecuteResponse :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get core_api::WaypointExecuteResponse :datatype-) "core_api/WaypointExecuteResponse")
(setf (get core_api::WaypointExecuteResponse :definition-)
      "

---
bool success
string message

")



(provide :core_api/WaypointExecute "937c9679a518e3a18d831e57125ea522")


