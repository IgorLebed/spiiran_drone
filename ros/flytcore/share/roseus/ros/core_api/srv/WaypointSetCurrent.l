;; Auto-generated. Do not edit!


(when (boundp 'core_api::WaypointSetCurrent)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'WaypointSetCurrent (find-package "CORE_API")))
(unless (find-package "CORE_API::WAYPOINTSETCURRENT")
  (make-package "CORE_API::WAYPOINTSETCURRENT"))
(unless (find-package "CORE_API::WAYPOINTSETCURRENTREQUEST")
  (make-package "CORE_API::WAYPOINTSETCURRENTREQUEST"))
(unless (find-package "CORE_API::WAYPOINTSETCURRENTRESPONSE")
  (make-package "CORE_API::WAYPOINTSETCURRENTRESPONSE"))

(in-package "ROS")





(defclass core_api::WaypointSetCurrentRequest
  :super ros::object
  :slots (_wp_seq ))

(defmethod core_api::WaypointSetCurrentRequest
  (:init
   (&key
    ((:wp_seq __wp_seq) 0)
    )
   (send-super :init)
   (setq _wp_seq (round __wp_seq))
   self)
  (:wp_seq
   (&optional __wp_seq)
   (if __wp_seq (setq _wp_seq __wp_seq)) _wp_seq)
  (:serialization-length
   ()
   (+
    ;; uint16 _wp_seq
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _wp_seq
       (write-word _wp_seq s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _wp_seq
     (setq _wp_seq (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass core_api::WaypointSetCurrentResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::WaypointSetCurrentResponse
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

(defclass core_api::WaypointSetCurrent
  :super ros::object
  :slots ())

(setf (get core_api::WaypointSetCurrent :md5sum-) "655ff49a7862991ba96f0c159eea7e23")
(setf (get core_api::WaypointSetCurrent :datatype-) "core_api/WaypointSetCurrent")
(setf (get core_api::WaypointSetCurrent :request) core_api::WaypointSetCurrentRequest)
(setf (get core_api::WaypointSetCurrent :response) core_api::WaypointSetCurrentResponse)

(defmethod core_api::WaypointSetCurrentRequest
  (:response () (instance core_api::WaypointSetCurrentResponse :init)))

(setf (get core_api::WaypointSetCurrentRequest :md5sum-) "655ff49a7862991ba96f0c159eea7e23")
(setf (get core_api::WaypointSetCurrentRequest :datatype-) "core_api/WaypointSetCurrentRequest")
(setf (get core_api::WaypointSetCurrentRequest :definition-)
      "



uint16 wp_seq
---
bool success
string message

")

(setf (get core_api::WaypointSetCurrentResponse :md5sum-) "655ff49a7862991ba96f0c159eea7e23")
(setf (get core_api::WaypointSetCurrentResponse :datatype-) "core_api/WaypointSetCurrentResponse")
(setf (get core_api::WaypointSetCurrentResponse :definition-)
      "



uint16 wp_seq
---
bool success
string message

")



(provide :core_api/WaypointSetCurrent "655ff49a7862991ba96f0c159eea7e23")


