;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::StopStream)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'StopStream (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::STOPSTREAM")
  (make-package "VISION_APPS::STOPSTREAM"))
(unless (find-package "VISION_APPS::STOPSTREAMREQUEST")
  (make-package "VISION_APPS::STOPSTREAMREQUEST"))
(unless (find-package "VISION_APPS::STOPSTREAMRESPONSE")
  (make-package "VISION_APPS::STOPSTREAMRESPONSE"))

(in-package "ROS")





(defclass vision_apps::StopStreamRequest
  :super ros::object
  :slots (_pid ))

(defmethod vision_apps::StopStreamRequest
  (:init
   (&key
    ((:pid __pid) 0)
    )
   (send-super :init)
   (setq _pid (round __pid))
   self)
  (:pid
   (&optional __pid)
   (if __pid (setq _pid __pid)) _pid)
  (:serialization-length
   ()
   (+
    ;; int32 _pid
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _pid
       (write-long _pid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _pid
     (setq _pid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vision_apps::StopStreamResponse
  :super ros::object
  :slots (_success ))

(defmethod vision_apps::StopStreamResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass vision_apps::StopStream
  :super ros::object
  :slots ())

(setf (get vision_apps::StopStream :md5sum-) "e68f3fbbba669be19f5e738564807335")
(setf (get vision_apps::StopStream :datatype-) "vision_apps/StopStream")
(setf (get vision_apps::StopStream :request) vision_apps::StopStreamRequest)
(setf (get vision_apps::StopStream :response) vision_apps::StopStreamResponse)

(defmethod vision_apps::StopStreamRequest
  (:response () (instance vision_apps::StopStreamResponse :init)))

(setf (get vision_apps::StopStreamRequest :md5sum-) "e68f3fbbba669be19f5e738564807335")
(setf (get vision_apps::StopStreamRequest :datatype-) "vision_apps/StopStreamRequest")
(setf (get vision_apps::StopStreamRequest :definition-)
      "int32 pid
---
bool success
")

(setf (get vision_apps::StopStreamResponse :md5sum-) "e68f3fbbba669be19f5e738564807335")
(setf (get vision_apps::StopStreamResponse :datatype-) "vision_apps/StopStreamResponse")
(setf (get vision_apps::StopStreamResponse :definition-)
      "int32 pid
---
bool success
")



(provide :vision_apps/StopStream "e68f3fbbba669be19f5e738564807335")


