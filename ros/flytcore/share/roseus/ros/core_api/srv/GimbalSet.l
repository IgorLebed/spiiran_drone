;; Auto-generated. Do not edit!


(when (boundp 'core_api::GimbalSet)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'GimbalSet (find-package "CORE_API")))
(unless (find-package "CORE_API::GIMBALSET")
  (make-package "CORE_API::GIMBALSET"))
(unless (find-package "CORE_API::GIMBALSETREQUEST")
  (make-package "CORE_API::GIMBALSETREQUEST"))
(unless (find-package "CORE_API::GIMBALSETRESPONSE")
  (make-package "CORE_API::GIMBALSETRESPONSE"))

(in-package "ROS")





(defclass core_api::GimbalSetRequest
  :super ros::object
  :slots (_roll _pitch _yaw ))

(defmethod core_api::GimbalSetRequest
  (:init
   (&key
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   self)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _yaw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass core_api::GimbalSetResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::GimbalSetResponse
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

(defclass core_api::GimbalSet
  :super ros::object
  :slots ())

(setf (get core_api::GimbalSet :md5sum-) "3f3faf5b1a96812718aae31048033855")
(setf (get core_api::GimbalSet :datatype-) "core_api/GimbalSet")
(setf (get core_api::GimbalSet :request) core_api::GimbalSetRequest)
(setf (get core_api::GimbalSet :response) core_api::GimbalSetResponse)

(defmethod core_api::GimbalSetRequest
  (:response () (instance core_api::GimbalSetResponse :init)))

(setf (get core_api::GimbalSetRequest :md5sum-) "3f3faf5b1a96812718aae31048033855")
(setf (get core_api::GimbalSetRequest :datatype-) "core_api/GimbalSetRequest")
(setf (get core_api::GimbalSetRequest :definition-)
      "


float64 roll
float64 pitch
float64 yaw
---
bool success
string message

")

(setf (get core_api::GimbalSetResponse :md5sum-) "3f3faf5b1a96812718aae31048033855")
(setf (get core_api::GimbalSetResponse :datatype-) "core_api/GimbalSetResponse")
(setf (get core_api::GimbalSetResponse :definition-)
      "


float64 roll
float64 pitch
float64 yaw
---
bool success
string message

")



(provide :core_api/GimbalSet "3f3faf5b1a96812718aae31048033855")


