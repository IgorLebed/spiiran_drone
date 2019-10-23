;; Auto-generated. Do not edit!


(when (boundp 'core_api::SetLED)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'SetLED (find-package "CORE_API")))
(unless (find-package "CORE_API::SETLED")
  (make-package "CORE_API::SETLED"))
(unless (find-package "CORE_API::SETLEDREQUEST")
  (make-package "CORE_API::SETLEDREQUEST"))
(unless (find-package "CORE_API::SETLEDRESPONSE")
  (make-package "CORE_API::SETLEDRESPONSE"))

(in-package "ROS")





(defclass core_api::SetLEDRequest
  :super ros::object
  :slots (_led _state ))

(defmethod core_api::SetLEDRequest
  (:init
   (&key
    ((:led __led) "")
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _led (string __led))
   (setq _state __state)
   self)
  (:led
   (&optional __led)
   (if __led (setq _led __led)) _led)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; string _led
    4 (length _led)
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _led
       (write-long (length _led) s) (princ _led s)
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _led
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _led (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass core_api::SetLEDResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::SetLEDResponse
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

(defclass core_api::SetLED
  :super ros::object
  :slots ())

(setf (get core_api::SetLED :md5sum-) "075d5cb58a54cdd3b1eee3d0d7b9c08b")
(setf (get core_api::SetLED :datatype-) "core_api/SetLED")
(setf (get core_api::SetLED :request) core_api::SetLEDRequest)
(setf (get core_api::SetLED :response) core_api::SetLEDResponse)

(defmethod core_api::SetLEDRequest
  (:response () (instance core_api::SetLEDResponse :init)))

(setf (get core_api::SetLEDRequest :md5sum-) "075d5cb58a54cdd3b1eee3d0d7b9c08b")
(setf (get core_api::SetLEDRequest :datatype-) "core_api/SetLEDRequest")
(setf (get core_api::SetLEDRequest :definition-)
      "

string led
bool state
---
bool success
string message

")

(setf (get core_api::SetLEDResponse :md5sum-) "075d5cb58a54cdd3b1eee3d0d7b9c08b")
(setf (get core_api::SetLEDResponse :datatype-) "core_api/SetLEDResponse")
(setf (get core_api::SetLEDResponse :definition-)
      "

string led
bool state
---
bool success
string message

")



(provide :core_api/SetLED "075d5cb58a54cdd3b1eee3d0d7b9c08b")


