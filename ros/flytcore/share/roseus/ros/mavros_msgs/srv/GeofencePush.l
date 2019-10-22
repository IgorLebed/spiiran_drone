;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::GeofencePush)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'GeofencePush (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::GEOFENCEPUSH")
  (make-package "MAVROS_MSGS::GEOFENCEPUSH"))
(unless (find-package "MAVROS_MSGS::GEOFENCEPUSHREQUEST")
  (make-package "MAVROS_MSGS::GEOFENCEPUSHREQUEST"))
(unless (find-package "MAVROS_MSGS::GEOFENCEPUSHRESPONSE")
  (make-package "MAVROS_MSGS::GEOFENCEPUSHRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::GeofencePushRequest
  :super ros::object
  :slots (_lat _lng ))

(defmethod mavros_msgs::GeofencePushRequest
  (:init
   (&key
    ((:lat __lat) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:lng __lng) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _lat __lat)
   (setq _lng __lng)
   self)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lng
   (&optional __lng)
   (if __lng (setq _lng __lng)) _lng)
  (:serialization-length
   ()
   (+
    ;; float64[] _lat
    (* 8    (length _lat)) 4
    ;; float64[] _lng
    (* 8    (length _lng)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
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

(defclass mavros_msgs::GeofencePushResponse
  :super ros::object
  :slots (_success _count ))

(defmethod mavros_msgs::GeofencePushResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _count (round __count))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint8 _count
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _count
       (write-byte _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _count
     (setq _count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass mavros_msgs::GeofencePush
  :super ros::object
  :slots ())

(setf (get mavros_msgs::GeofencePush :md5sum-) "c3af180efb144ee3fa6be1613192bb21")
(setf (get mavros_msgs::GeofencePush :datatype-) "mavros_msgs/GeofencePush")
(setf (get mavros_msgs::GeofencePush :request) mavros_msgs::GeofencePushRequest)
(setf (get mavros_msgs::GeofencePush :response) mavros_msgs::GeofencePushResponse)

(defmethod mavros_msgs::GeofencePushRequest
  (:response () (instance mavros_msgs::GeofencePushResponse :init)))

(setf (get mavros_msgs::GeofencePushRequest :md5sum-) "c3af180efb144ee3fa6be1613192bb21")
(setf (get mavros_msgs::GeofencePushRequest :datatype-) "mavros_msgs/GeofencePushRequest")
(setf (get mavros_msgs::GeofencePushRequest :definition-)
      "



float64[] lat
float64[] lng
---
bool success
uint8 count

")

(setf (get mavros_msgs::GeofencePushResponse :md5sum-) "c3af180efb144ee3fa6be1613192bb21")
(setf (get mavros_msgs::GeofencePushResponse :datatype-) "mavros_msgs/GeofencePushResponse")
(setf (get mavros_msgs::GeofencePushResponse :definition-)
      "



float64[] lat
float64[] lng
---
bool success
uint8 count

")



(provide :mavros_msgs/GeofencePush "c3af180efb144ee3fa6be1613192bb21")


