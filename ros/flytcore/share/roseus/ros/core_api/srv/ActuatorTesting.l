;; Auto-generated. Do not edit!


(when (boundp 'core_api::ActuatorTesting)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'ActuatorTesting (find-package "CORE_API")))
(unless (find-package "CORE_API::ACTUATORTESTING")
  (make-package "CORE_API::ACTUATORTESTING"))
(unless (find-package "CORE_API::ACTUATORTESTINGREQUEST")
  (make-package "CORE_API::ACTUATORTESTINGREQUEST"))
(unless (find-package "CORE_API::ACTUATORTESTINGRESPONSE")
  (make-package "CORE_API::ACTUATORTESTINGRESPONSE"))

(in-package "ROS")





(defclass core_api::ActuatorTestingRequest
  :super ros::object
  :slots (_actuator_id _time_s ))

(defmethod core_api::ActuatorTestingRequest
  (:init
   (&key
    ((:actuator_id __actuator_id) 0)
    ((:time_s __time_s) 0.0)
    )
   (send-super :init)
   (setq _actuator_id (round __actuator_id))
   (setq _time_s (float __time_s))
   self)
  (:actuator_id
   (&optional __actuator_id)
   (if __actuator_id (setq _actuator_id __actuator_id)) _actuator_id)
  (:time_s
   (&optional __time_s)
   (if __time_s (setq _time_s __time_s)) _time_s)
  (:serialization-length
   ()
   (+
    ;; uint8 _actuator_id
    1
    ;; float32 _time_s
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _actuator_id
       (write-byte _actuator_id s)
     ;; float32 _time_s
       (sys::poke _time_s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _actuator_id
     (setq _actuator_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _time_s
     (setq _time_s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass core_api::ActuatorTestingResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::ActuatorTestingResponse
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

(defclass core_api::ActuatorTesting
  :super ros::object
  :slots ())

(setf (get core_api::ActuatorTesting :md5sum-) "b11d01d67fd996b3e6a87d0afb45636c")
(setf (get core_api::ActuatorTesting :datatype-) "core_api/ActuatorTesting")
(setf (get core_api::ActuatorTesting :request) core_api::ActuatorTestingRequest)
(setf (get core_api::ActuatorTesting :response) core_api::ActuatorTestingResponse)

(defmethod core_api::ActuatorTestingRequest
  (:response () (instance core_api::ActuatorTestingResponse :init)))

(setf (get core_api::ActuatorTestingRequest :md5sum-) "b11d01d67fd996b3e6a87d0afb45636c")
(setf (get core_api::ActuatorTestingRequest :datatype-) "core_api/ActuatorTestingRequest")
(setf (get core_api::ActuatorTestingRequest :definition-)
      "uint8 actuator_id
float32 time_s
---
bool success
string message

")

(setf (get core_api::ActuatorTestingResponse :md5sum-) "b11d01d67fd996b3e6a87d0afb45636c")
(setf (get core_api::ActuatorTestingResponse :datatype-) "core_api/ActuatorTestingResponse")
(setf (get core_api::ActuatorTestingResponse :definition-)
      "uint8 actuator_id
float32 time_s
---
bool success
string message

")



(provide :core_api/ActuatorTesting "b11d01d67fd996b3e6a87d0afb45636c")


