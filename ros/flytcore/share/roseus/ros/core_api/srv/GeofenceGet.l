;; Auto-generated. Do not edit!


(when (boundp 'core_api::GeofenceGet)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'GeofenceGet (find-package "CORE_API")))
(unless (find-package "CORE_API::GEOFENCEGET")
  (make-package "CORE_API::GEOFENCEGET"))
(unless (find-package "CORE_API::GEOFENCEGETREQUEST")
  (make-package "CORE_API::GEOFENCEGETREQUEST"))
(unless (find-package "CORE_API::GEOFENCEGETRESPONSE")
  (make-package "CORE_API::GEOFENCEGETRESPONSE"))

(in-package "ROS")





(defclass core_api::GeofenceGetRequest
  :super ros::object
  :slots ())

(defmethod core_api::GeofenceGetRequest
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

(defclass core_api::GeofenceGetResponse
  :super ros::object
  :slots (_success _message _count _lat _lng ))

(defmethod core_api::GeofenceGetResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:count __count) 0)
    ((:lat __lat) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:lng __lng) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _count (round __count))
   (setq _lat __lat)
   (setq _lng __lng)
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
    ;; string _message
    4 (length _message)
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
     ;; string _message
       (write-long (length _message) s) (princ _message s)
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
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(defclass core_api::GeofenceGet
  :super ros::object
  :slots ())

(setf (get core_api::GeofenceGet :md5sum-) "a90ed9d96938845509f17e1cccecd160")
(setf (get core_api::GeofenceGet :datatype-) "core_api/GeofenceGet")
(setf (get core_api::GeofenceGet :request) core_api::GeofenceGetRequest)
(setf (get core_api::GeofenceGet :response) core_api::GeofenceGetResponse)

(defmethod core_api::GeofenceGetRequest
  (:response () (instance core_api::GeofenceGetResponse :init)))

(setf (get core_api::GeofenceGetRequest :md5sum-) "a90ed9d96938845509f17e1cccecd160")
(setf (get core_api::GeofenceGetRequest :datatype-) "core_api/GeofenceGetRequest")
(setf (get core_api::GeofenceGetRequest :definition-)
      "



---
bool success
string message
uint8 count
float64[] lat
float64[] lng

")

(setf (get core_api::GeofenceGetResponse :md5sum-) "a90ed9d96938845509f17e1cccecd160")
(setf (get core_api::GeofenceGetResponse :datatype-) "core_api/GeofenceGetResponse")
(setf (get core_api::GeofenceGetResponse :definition-)
      "



---
bool success
string message
uint8 count
float64[] lat
float64[] lng

")



(provide :core_api/GeofenceGet "a90ed9d96938845509f17e1cccecd160")


