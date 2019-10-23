;; Auto-generated. Do not edit!


(when (boundp 'core_api::BrightPiLED)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'BrightPiLED (find-package "CORE_API")))
(unless (find-package "CORE_API::BRIGHTPILED")
  (make-package "CORE_API::BRIGHTPILED"))
(unless (find-package "CORE_API::BRIGHTPILEDREQUEST")
  (make-package "CORE_API::BRIGHTPILEDREQUEST"))
(unless (find-package "CORE_API::BRIGHTPILEDRESPONSE")
  (make-package "CORE_API::BRIGHTPILEDRESPONSE"))

(in-package "ROS")





(intern "*MODE_GET_LED_STATUS*" (find-package "CORE_API::BRIGHTPILEDREQUEST"))
(shadow '*MODE_GET_LED_STATUS* (find-package "CORE_API::BRIGHTPILEDREQUEST"))
(defconstant core_api::BrightPiLEDRequest::*MODE_GET_LED_STATUS* 1)
(intern "*MODE_SET_LED_STATUS*" (find-package "CORE_API::BRIGHTPILEDREQUEST"))
(shadow '*MODE_SET_LED_STATUS* (find-package "CORE_API::BRIGHTPILEDREQUEST"))
(defconstant core_api::BrightPiLEDRequest::*MODE_SET_LED_STATUS* 2)
(intern "*MODE_SET_LED_GAIN*" (find-package "CORE_API::BRIGHTPILEDREQUEST"))
(shadow '*MODE_SET_LED_GAIN* (find-package "CORE_API::BRIGHTPILEDREQUEST"))
(defconstant core_api::BrightPiLEDRequest::*MODE_SET_LED_GAIN* 3)
(defclass core_api::BrightPiLEDRequest
  :super ros::object
  :slots (_mode _state _gain ))

(defmethod core_api::BrightPiLEDRequest
  (:init
   (&key
    ((:mode __mode) 0)
    ((:state __state) nil)
    ((:gain __gain) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _state __state)
   (setq _gain (round __gain))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:gain
   (&optional __gain)
   (if __gain (setq _gain __gain)) _gain)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ;; bool _state
    1
    ;; uint8 _gain
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _gain
       (write-byte _gain s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _gain
     (setq _gain (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass core_api::BrightPiLEDResponse
  :super ros::object
  :slots (_success _state _message ))

(defmethod core_api::BrightPiLEDResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:state __state) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _state __state)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; bool _state
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
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass core_api::BrightPiLED
  :super ros::object
  :slots ())

(setf (get core_api::BrightPiLED :md5sum-) "17e462bdcd84d82b4992ac5262b3fcf8")
(setf (get core_api::BrightPiLED :datatype-) "core_api/BrightPiLED")
(setf (get core_api::BrightPiLED :request) core_api::BrightPiLEDRequest)
(setf (get core_api::BrightPiLED :response) core_api::BrightPiLEDResponse)

(defmethod core_api::BrightPiLEDRequest
  (:response () (instance core_api::BrightPiLEDResponse :init)))

(setf (get core_api::BrightPiLEDRequest :md5sum-) "17e462bdcd84d82b4992ac5262b3fcf8")
(setf (get core_api::BrightPiLEDRequest :datatype-) "core_api/BrightPiLEDRequest")
(setf (get core_api::BrightPiLEDRequest :definition-)
      "


uint8 MODE_GET_LED_STATUS = 1
uint8 MODE_SET_LED_STATUS = 2
uint8 MODE_SET_LED_GAIN = 3

uint8 mode
bool state
uint8 gain
---
bool success
bool state
string message

")

(setf (get core_api::BrightPiLEDResponse :md5sum-) "17e462bdcd84d82b4992ac5262b3fcf8")
(setf (get core_api::BrightPiLEDResponse :datatype-) "core_api/BrightPiLEDResponse")
(setf (get core_api::BrightPiLEDResponse :definition-)
      "


uint8 MODE_GET_LED_STATUS = 1
uint8 MODE_SET_LED_STATUS = 2
uint8 MODE_SET_LED_GAIN = 3

uint8 mode
bool state
uint8 gain
---
bool success
bool state
string message

")



(provide :core_api/BrightPiLED "17e462bdcd84d82b4992ac5262b3fcf8")


