;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::StopRaspiStream)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'StopRaspiStream (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::STOPRASPISTREAM")
  (make-package "VISION_APPS::STOPRASPISTREAM"))
(unless (find-package "VISION_APPS::STOPRASPISTREAMREQUEST")
  (make-package "VISION_APPS::STOPRASPISTREAMREQUEST"))
(unless (find-package "VISION_APPS::STOPRASPISTREAMRESPONSE")
  (make-package "VISION_APPS::STOPRASPISTREAMRESPONSE"))

(in-package "ROS")





(defclass vision_apps::StopRaspiStreamRequest
  :super ros::object
  :slots ())

(defmethod vision_apps::StopRaspiStreamRequest
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

(defclass vision_apps::StopRaspiStreamResponse
  :super ros::object
  :slots (_success _message ))

(defmethod vision_apps::StopRaspiStreamResponse
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

(defclass vision_apps::StopRaspiStream
  :super ros::object
  :slots ())

(setf (get vision_apps::StopRaspiStream :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get vision_apps::StopRaspiStream :datatype-) "vision_apps/StopRaspiStream")
(setf (get vision_apps::StopRaspiStream :request) vision_apps::StopRaspiStreamRequest)
(setf (get vision_apps::StopRaspiStream :response) vision_apps::StopRaspiStreamResponse)

(defmethod vision_apps::StopRaspiStreamRequest
  (:response () (instance vision_apps::StopRaspiStreamResponse :init)))

(setf (get vision_apps::StopRaspiStreamRequest :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get vision_apps::StopRaspiStreamRequest :datatype-) "vision_apps/StopRaspiStreamRequest")
(setf (get vision_apps::StopRaspiStreamRequest :definition-)
      "
---
bool success
string message
")

(setf (get vision_apps::StopRaspiStreamResponse :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get vision_apps::StopRaspiStreamResponse :datatype-) "vision_apps/StopRaspiStreamResponse")
(setf (get vision_apps::StopRaspiStreamResponse :definition-)
      "
---
bool success
string message
")



(provide :vision_apps/StopRaspiStream "937c9679a518e3a18d831e57125ea522")


