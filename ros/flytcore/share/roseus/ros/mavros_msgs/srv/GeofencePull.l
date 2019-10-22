;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::GeofencePull)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'GeofencePull (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::GEOFENCEPULL")
  (make-package "MAVROS_MSGS::GEOFENCEPULL"))
(unless (find-package "MAVROS_MSGS::GEOFENCEPULLREQUEST")
  (make-package "MAVROS_MSGS::GEOFENCEPULLREQUEST"))
(unless (find-package "MAVROS_MSGS::GEOFENCEPULLRESPONSE")
  (make-package "MAVROS_MSGS::GEOFENCEPULLRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::GeofencePullRequest
  :super ros::object
  :slots ())

(defmethod mavros_msgs::GeofencePullRequest
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

(defclass mavros_msgs::GeofencePullResponse
  :super ros::object
  :slots (_success _count _lat _lng ))

(defmethod mavros_msgs::GeofencePullResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:count __count) 0)
    ((:lat __lat) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:lng __lng) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _success __success)
   (setq _count (round __count))
   (setq _lat __lat)
   (setq _lng __lng)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lng
   (&optional __lng)
   (if __lng (setq _lng __lng)) _lng)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint8 _count
    1
    ;; float64[] _lat
    (* 8    (length _lat)) 4
    ;; float64[] _lng
    (* 8    (length _lng)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _count
       (write-byte _count s)
     ;; float64[] _lat
     (write-long (length _lat) s)
     (dotimes (i (length _lat))
       (sys::poke (elt _lat i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _lng
     (write-long (length _lng) s)
     (dotimes (i (length _lng))
       (sys::poke (elt _lng i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _count
     (setq _count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64[] _lat
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lat (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _lat i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _lng
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lng (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _lng i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass mavros_msgs::GeofencePull
  :super ros::object
  :slots ())

(setf (get mavros_msgs::GeofencePull :md5sum-) "de057806094fca5534c26aac204ab4b9")
(setf (get mavros_msgs::GeofencePull :datatype-) "mavros_msgs/GeofencePull")
(setf (get mavros_msgs::GeofencePull :request) mavros_msgs::GeofencePullRequest)
(setf (get mavros_msgs::GeofencePull :response) mavros_msgs::GeofencePullResponse)

(defmethod mavros_msgs::GeofencePullRequest
  (:response () (instance mavros_msgs::GeofencePullResponse :init)))

(setf (get mavros_msgs::GeofencePullRequest :md5sum-) "de057806094fca5534c26aac204ab4b9")
(setf (get mavros_msgs::GeofencePullRequest :datatype-) "mavros_msgs/GeofencePullRequest")
(setf (get mavros_msgs::GeofencePullRequest :definition-)
      "



---
bool success
uint8 count
float64[] lat
float64[] lng
")

(setf (get mavros_msgs::GeofencePullResponse :md5sum-) "de057806094fca5534c26aac204ab4b9")
(setf (get mavros_msgs::GeofencePullResponse :datatype-) "mavros_msgs/GeofencePullResponse")
(setf (get mavros_msgs::GeofencePullResponse :definition-)
      "



---
bool success
uint8 count
float64[] lat
float64[] lng
")



(provide :mavros_msgs/GeofencePull "de057806094fca5534c26aac204ab4b9")


