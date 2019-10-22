;; Auto-generated. Do not edit!


(when (boundp 'maxbotix::ChangeAddress)
  (if (not (find-package "MAXBOTIX"))
    (make-package "MAXBOTIX"))
  (shadow 'ChangeAddress (find-package "MAXBOTIX")))
(unless (find-package "MAXBOTIX::CHANGEADDRESS")
  (make-package "MAXBOTIX::CHANGEADDRESS"))
(unless (find-package "MAXBOTIX::CHANGEADDRESSREQUEST")
  (make-package "MAXBOTIX::CHANGEADDRESSREQUEST"))
(unless (find-package "MAXBOTIX::CHANGEADDRESSRESPONSE")
  (make-package "MAXBOTIX::CHANGEADDRESSRESPONSE"))

(in-package "ROS")





(defclass maxbotix::ChangeAddressRequest
  :super ros::object
  :slots (_target_sensor_id _source_sensor_addr ))

(defmethod maxbotix::ChangeAddressRequest
  (:init
   (&key
    ((:target_sensor_id __target_sensor_id) "")
    ((:source_sensor_addr __source_sensor_addr) 0)
    )
   (send-super :init)
   (setq _target_sensor_id (string __target_sensor_id))
   (setq _source_sensor_addr (round __source_sensor_addr))
   self)
  (:target_sensor_id
   (&optional __target_sensor_id)
   (if __target_sensor_id (setq _target_sensor_id __target_sensor_id)) _target_sensor_id)
  (:source_sensor_addr
   (&optional __source_sensor_addr)
   (if __source_sensor_addr (setq _source_sensor_addr __source_sensor_addr)) _source_sensor_addr)
  (:serialization-length
   ()
   (+
    ;; string _target_sensor_id
    4 (length _target_sensor_id)
    ;; uint8 _source_sensor_addr
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _target_sensor_id
       (write-long (length _target_sensor_id) s) (princ _target_sensor_id s)
     ;; uint8 _source_sensor_addr
       (write-byte _source_sensor_addr s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _target_sensor_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_sensor_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _source_sensor_addr
     (setq _source_sensor_addr (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass maxbotix::ChangeAddressResponse
  :super ros::object
  :slots (_success _range _message ))

(defmethod maxbotix::ChangeAddressResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:range __range) 0.0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _range (float __range))
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; float32 _range
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; float32 _range
       (sys::poke _range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _range
     (setq _range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass maxbotix::ChangeAddress
  :super ros::object
  :slots ())

(setf (get maxbotix::ChangeAddress :md5sum-) "679a57e3b3b49facc4662b8ff5dd2743")
(setf (get maxbotix::ChangeAddress :datatype-) "maxbotix/ChangeAddress")
(setf (get maxbotix::ChangeAddress :request) maxbotix::ChangeAddressRequest)
(setf (get maxbotix::ChangeAddress :response) maxbotix::ChangeAddressResponse)

(defmethod maxbotix::ChangeAddressRequest
  (:response () (instance maxbotix::ChangeAddressResponse :init)))

(setf (get maxbotix::ChangeAddressRequest :md5sum-) "679a57e3b3b49facc4662b8ff5dd2743")
(setf (get maxbotix::ChangeAddressRequest :datatype-) "maxbotix/ChangeAddressRequest")
(setf (get maxbotix::ChangeAddressRequest :definition-)
      "



string target_sensor_id
uint8 source_sensor_addr
---
bool success
float32 range
string message
")

(setf (get maxbotix::ChangeAddressResponse :md5sum-) "679a57e3b3b49facc4662b8ff5dd2743")
(setf (get maxbotix::ChangeAddressResponse :datatype-) "maxbotix/ChangeAddressResponse")
(setf (get maxbotix::ChangeAddressResponse :definition-)
      "



string target_sensor_id
uint8 source_sensor_addr
---
bool success
float32 range
string message
")



(provide :maxbotix/ChangeAddress "679a57e3b3b49facc4662b8ff5dd2743")


