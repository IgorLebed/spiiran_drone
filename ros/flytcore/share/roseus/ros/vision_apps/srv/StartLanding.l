;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::StartLanding)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'StartLanding (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::STARTLANDING")
  (make-package "VISION_APPS::STARTLANDING"))
(unless (find-package "VISION_APPS::STARTLANDINGREQUEST")
  (make-package "VISION_APPS::STARTLANDINGREQUEST"))
(unless (find-package "VISION_APPS::STARTLANDINGRESPONSE")
  (make-package "VISION_APPS::STARTLANDINGRESPONSE"))

(in-package "ROS")





(defclass vision_apps::StartLandingRequest
  :super ros::object
  :slots (_landing_threshold _async _hover ))

(defmethod vision_apps::StartLandingRequest
  (:init
   (&key
    ((:landing_threshold __landing_threshold) 0.0)
    ((:async __async) nil)
    ((:hover __hover) nil)
    )
   (send-super :init)
   (setq _landing_threshold (float __landing_threshold))
   (setq _async __async)
   (setq _hover __hover)
   self)
  (:landing_threshold
   (&optional __landing_threshold)
   (if __landing_threshold (setq _landing_threshold __landing_threshold)) _landing_threshold)
  (:async
   (&optional __async)
   (if __async (setq _async __async)) _async)
  (:hover
   (&optional __hover)
   (if __hover (setq _hover __hover)) _hover)
  (:serialization-length
   ()
   (+
    ;; float32 _landing_threshold
    4
    ;; bool _async
    1
    ;; bool _hover
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _landing_threshold
       (sys::poke _landing_threshold (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _async
       (if _async (write-byte -1 s) (write-byte 0 s))
     ;; bool _hover
       (if _hover (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _landing_threshold
     (setq _landing_threshold (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _async
     (setq _async (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _hover
     (setq _hover (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass vision_apps::StartLandingResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod vision_apps::StartLandingResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint8 _error_code
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
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vision_apps::StartLanding
  :super ros::object
  :slots ())

(setf (get vision_apps::StartLanding :md5sum-) "f7ef1928f21c1b26b6ad552eeaf0c4ac")
(setf (get vision_apps::StartLanding :datatype-) "vision_apps/StartLanding")
(setf (get vision_apps::StartLanding :request) vision_apps::StartLandingRequest)
(setf (get vision_apps::StartLanding :response) vision_apps::StartLandingResponse)

(defmethod vision_apps::StartLandingRequest
  (:response () (instance vision_apps::StartLandingResponse :init)))

(setf (get vision_apps::StartLandingRequest :md5sum-) "f7ef1928f21c1b26b6ad552eeaf0c4ac")
(setf (get vision_apps::StartLandingRequest :datatype-) "vision_apps/StartLandingRequest")
(setf (get vision_apps::StartLandingRequest :definition-)
      "float32 landing_threshold
bool async
bool hover
---
bool success
uint8 error_code
string message

")

(setf (get vision_apps::StartLandingResponse :md5sum-) "f7ef1928f21c1b26b6ad552eeaf0c4ac")
(setf (get vision_apps::StartLandingResponse :datatype-) "vision_apps/StartLandingResponse")
(setf (get vision_apps::StartLandingResponse :definition-)
      "float32 landing_threshold
bool async
bool hover
---
bool success
uint8 error_code
string message

")



(provide :vision_apps/StartLanding "f7ef1928f21c1b26b6ad552eeaf0c4ac")


