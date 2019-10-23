;; Auto-generated. Do not edit!


(when (boundp 'core_api::GetSetGPIO)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'GetSetGPIO (find-package "CORE_API")))
(unless (find-package "CORE_API::GETSETGPIO")
  (make-package "CORE_API::GETSETGPIO"))
(unless (find-package "CORE_API::GETSETGPIOREQUEST")
  (make-package "CORE_API::GETSETGPIOREQUEST"))
(unless (find-package "CORE_API::GETSETGPIORESPONSE")
  (make-package "CORE_API::GETSETGPIORESPONSE"))

(in-package "ROS")





(defclass core_api::GetSetGPIORequest
  :super ros::object
  :slots (_pin _mode _state ))

(defmethod core_api::GetSetGPIORequest
  (:init
   (&key
    ((:pin __pin) 0)
    ((:mode __mode) nil)
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _pin (round __pin))
   (setq _mode __mode)
   (setq _state __state)
   self)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int8 _pin
    1
    ;; bool _mode
    1
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _pin
       (write-byte _pin s)
     ;; bool _mode
       (if _mode (write-byte -1 s) (write-byte 0 s))
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _pin 127) (setq _pin (- _pin 256)))
   ;; bool _mode
     (setq _mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass core_api::GetSetGPIOResponse
  :super ros::object
  :slots (_state _success _message ))

(defmethod core_api::GetSetGPIOResponse
  (:init
   (&key
    ((:state __state) nil)
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _state __state)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _state
    1
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass core_api::GetSetGPIO
  :super ros::object
  :slots ())

(setf (get core_api::GetSetGPIO :md5sum-) "88ce3c80d9fdfb2b8176053d0296fd4a")
(setf (get core_api::GetSetGPIO :datatype-) "core_api/GetSetGPIO")
(setf (get core_api::GetSetGPIO :request) core_api::GetSetGPIORequest)
(setf (get core_api::GetSetGPIO :response) core_api::GetSetGPIOResponse)

(defmethod core_api::GetSetGPIORequest
  (:response () (instance core_api::GetSetGPIOResponse :init)))

(setf (get core_api::GetSetGPIORequest :md5sum-) "88ce3c80d9fdfb2b8176053d0296fd4a")
(setf (get core_api::GetSetGPIORequest :datatype-) "core_api/GetSetGPIORequest")
(setf (get core_api::GetSetGPIORequest :definition-)
      "

int8 pin
bool mode
bool state
---
bool state
bool success
string message

")

(setf (get core_api::GetSetGPIOResponse :md5sum-) "88ce3c80d9fdfb2b8176053d0296fd4a")
(setf (get core_api::GetSetGPIOResponse :datatype-) "core_api/GetSetGPIOResponse")
(setf (get core_api::GetSetGPIOResponse :definition-)
      "

int8 pin
bool mode
bool state
---
bool state
bool success
string message

")



(provide :core_api/GetSetGPIO "88ce3c80d9fdfb2b8176053d0296fd4a")


