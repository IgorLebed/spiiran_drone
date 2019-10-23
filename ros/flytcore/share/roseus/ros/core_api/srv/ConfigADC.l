;; Auto-generated. Do not edit!


(when (boundp 'core_api::ConfigADC)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'ConfigADC (find-package "CORE_API")))
(unless (find-package "CORE_API::CONFIGADC")
  (make-package "CORE_API::CONFIGADC"))
(unless (find-package "CORE_API::CONFIGADCREQUEST")
  (make-package "CORE_API::CONFIGADCREQUEST"))
(unless (find-package "CORE_API::CONFIGADCRESPONSE")
  (make-package "CORE_API::CONFIGADCRESPONSE"))

(in-package "ROS")





(defclass core_api::ConfigADCRequest
  :super ros::object
  :slots (_channel _stream_rate ))

(defmethod core_api::ConfigADCRequest
  (:init
   (&key
    ((:channel __channel) 0)
    ((:stream_rate __stream_rate) 0)
    )
   (send-super :init)
   (setq _channel (round __channel))
   (setq _stream_rate (round __stream_rate))
   self)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:stream_rate
   (&optional __stream_rate)
   (if __stream_rate (setq _stream_rate __stream_rate)) _stream_rate)
  (:serialization-length
   ()
   (+
    ;; int32 _channel
    4
    ;; int32 _stream_rate
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _channel
       (write-long _channel s)
     ;; int32 _stream_rate
       (write-long _stream_rate s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _channel
     (setq _channel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _stream_rate
     (setq _stream_rate (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass core_api::ConfigADCResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::ConfigADCResponse
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

(defclass core_api::ConfigADC
  :super ros::object
  :slots ())

(setf (get core_api::ConfigADC :md5sum-) "f5076d4723a127313ec1786e0634dbd2")
(setf (get core_api::ConfigADC :datatype-) "core_api/ConfigADC")
(setf (get core_api::ConfigADC :request) core_api::ConfigADCRequest)
(setf (get core_api::ConfigADC :response) core_api::ConfigADCResponse)

(defmethod core_api::ConfigADCRequest
  (:response () (instance core_api::ConfigADCResponse :init)))

(setf (get core_api::ConfigADCRequest :md5sum-) "f5076d4723a127313ec1786e0634dbd2")
(setf (get core_api::ConfigADCRequest :datatype-) "core_api/ConfigADCRequest")
(setf (get core_api::ConfigADCRequest :definition-)
      "





int32 channel
int32 stream_rate
---
bool success
string message

")

(setf (get core_api::ConfigADCResponse :md5sum-) "f5076d4723a127313ec1786e0634dbd2")
(setf (get core_api::ConfigADCResponse :datatype-) "core_api/ConfigADCResponse")
(setf (get core_api::ConfigADCResponse :definition-)
      "





int32 channel
int32 stream_rate
---
bool success
string message

")



(provide :core_api/ConfigADC "f5076d4723a127313ec1786e0634dbd2")


