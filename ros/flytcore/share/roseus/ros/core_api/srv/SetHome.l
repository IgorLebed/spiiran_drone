;; Auto-generated. Do not edit!


(when (boundp 'core_api::SetHome)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'SetHome (find-package "CORE_API")))
(unless (find-package "CORE_API::SETHOME")
  (make-package "CORE_API::SETHOME"))
(unless (find-package "CORE_API::SETHOMEREQUEST")
  (make-package "CORE_API::SETHOMEREQUEST"))
(unless (find-package "CORE_API::SETHOMERESPONSE")
  (make-package "CORE_API::SETHOMERESPONSE"))

(in-package "ROS")





(defclass core_api::SetHomeRequest
  :super ros::object
  :slots (_lat _lon _alt _set_current ))

(defmethod core_api::SetHomeRequest
  (:init
   (&key
    ((:lat __lat) 0.0)
    ((:lon __lon) 0.0)
    ((:alt __alt) 0.0)
    ((:set_current __set_current) nil)
    )
   (send-super :init)
   (setq _lat (float __lat))
   (setq _lon (float __lon))
   (setq _alt (float __alt))
   (setq _set_current __set_current)
   self)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:alt
   (&optional __alt)
   (if __alt (setq _alt __alt)) _alt)
  (:set_current
   (&optional __set_current)
   (if __set_current (setq _set_current __set_current)) _set_current)
  (:serialization-length
   ()
   (+
    ;; float64 _lat
    8
    ;; float64 _lon
    8
    ;; float64 _alt
    8
    ;; bool _set_current
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _alt
       (sys::poke _alt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _set_current
       (if _set_current (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _alt
     (setq _alt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _set_current
     (setq _set_current (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass core_api::SetHomeResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::SetHomeResponse
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

(defclass core_api::SetHome
  :super ros::object
  :slots ())

(setf (get core_api::SetHome :md5sum-) "6fecffddcd142aa151250a5dd831cd59")
(setf (get core_api::SetHome :datatype-) "core_api/SetHome")
(setf (get core_api::SetHome :request) core_api::SetHomeRequest)
(setf (get core_api::SetHome :response) core_api::SetHomeResponse)

(defmethod core_api::SetHomeRequest
  (:response () (instance core_api::SetHomeResponse :init)))

(setf (get core_api::SetHomeRequest :md5sum-) "6fecffddcd142aa151250a5dd831cd59")
(setf (get core_api::SetHomeRequest :datatype-) "core_api/SetHomeRequest")
(setf (get core_api::SetHomeRequest :definition-)
      "



float64 lat
float64 lon
float64 alt
bool set_current

---
bool success
string message

")

(setf (get core_api::SetHomeResponse :md5sum-) "6fecffddcd142aa151250a5dd831cd59")
(setf (get core_api::SetHomeResponse :datatype-) "core_api/SetHomeResponse")
(setf (get core_api::SetHomeResponse :definition-)
      "



float64 lat
float64 lon
float64 alt
bool set_current

---
bool success
string message

")



(provide :core_api/SetHome "6fecffddcd142aa151250a5dd831cd59")


