;; Auto-generated. Do not edit!


(when (boundp 'core_api::GeofenceSet)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'GeofenceSet (find-package "CORE_API")))
(unless (find-package "CORE_API::GEOFENCESET")
  (make-package "CORE_API::GEOFENCESET"))
(unless (find-package "CORE_API::GEOFENCESETREQUEST")
  (make-package "CORE_API::GEOFENCESETREQUEST"))
(unless (find-package "CORE_API::GEOFENCESETRESPONSE")
  (make-package "CORE_API::GEOFENCESETRESPONSE"))

(in-package "ROS")





(defclass core_api::GeofenceSetRequest
  :super ros::object
  :slots (_min_alt _max_alt _lat _lng ))

(defmethod core_api::GeofenceSetRequest
  (:init
   (&key
    ((:min_alt __min_alt) 0.0)
    ((:max_alt __max_alt) 0.0)
    ((:lat __lat) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:lng __lng) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _min_alt (float __min_alt))
   (setq _max_alt (float __max_alt))
   (setq _lat __lat)
   (setq _lng __lng)
   self)
  (:min_alt
   (&optional __min_alt)
   (if __min_alt (setq _min_alt __min_alt)) _min_alt)
  (:max_alt
   (&optional __max_alt)
   (if __max_alt (setq _max_alt __max_alt)) _max_alt)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lng
   (&optional __lng)
   (if __lng (setq _lng __lng)) _lng)
  (:serialization-length
   ()
   (+
    ;; float64 _min_alt
    8
    ;; float64 _max_alt
    8
    ;; float64[] _lat
    (* 8    (length _lat)) 4
    ;; float64[] _lng
    (* 8    (length _lng)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _min_alt
       (sys::poke _min_alt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_alt
       (sys::poke _max_alt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64 _min_alt
     (setq _min_alt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_alt
     (setq _max_alt (sys::peek buf ptr- :double)) (incf ptr- 8)
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

(defclass core_api::GeofenceSetResponse
  :super ros::object
  :slots (_success _message _count ))

(defmethod core_api::GeofenceSetResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _count (round __count))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; uint8 _count
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; uint8 _count
       (write-byte _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _count
     (setq _count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass core_api::GeofenceSet
  :super ros::object
  :slots ())

(setf (get core_api::GeofenceSet :md5sum-) "acfd36e0ae928bc2121a03e763a1984f")
(setf (get core_api::GeofenceSet :datatype-) "core_api/GeofenceSet")
(setf (get core_api::GeofenceSet :request) core_api::GeofenceSetRequest)
(setf (get core_api::GeofenceSet :response) core_api::GeofenceSetResponse)

(defmethod core_api::GeofenceSetRequest
  (:response () (instance core_api::GeofenceSetResponse :init)))

(setf (get core_api::GeofenceSetRequest :md5sum-) "acfd36e0ae928bc2121a03e763a1984f")
(setf (get core_api::GeofenceSetRequest :datatype-) "core_api/GeofenceSetRequest")
(setf (get core_api::GeofenceSetRequest :definition-)
      "



float64 min_alt
float64 max_alt
float64[] lat
float64[] lng
---
bool success
string message
uint8 count

")

(setf (get core_api::GeofenceSetResponse :md5sum-) "acfd36e0ae928bc2121a03e763a1984f")
(setf (get core_api::GeofenceSetResponse :datatype-) "core_api/GeofenceSetResponse")
(setf (get core_api::GeofenceSetResponse :definition-)
      "



float64 min_alt
float64 max_alt
float64[] lat
float64[] lng
---
bool success
string message
uint8 count

")



(provide :core_api/GeofenceSet "acfd36e0ae928bc2121a03e763a1984f")


