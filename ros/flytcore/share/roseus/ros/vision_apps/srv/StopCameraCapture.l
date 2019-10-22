;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::StopCameraCapture)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'StopCameraCapture (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::STOPCAMERACAPTURE")
  (make-package "VISION_APPS::STOPCAMERACAPTURE"))
(unless (find-package "VISION_APPS::STOPCAMERACAPTUREREQUEST")
  (make-package "VISION_APPS::STOPCAMERACAPTUREREQUEST"))
(unless (find-package "VISION_APPS::STOPCAMERACAPTURERESPONSE")
  (make-package "VISION_APPS::STOPCAMERACAPTURERESPONSE"))

(in-package "ROS")





(defclass vision_apps::StopCameraCaptureRequest
  :super ros::object
  :slots (_pid ))

(defmethod vision_apps::StopCameraCaptureRequest
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

(defclass vision_apps::StopCameraCaptureResponse
  :super ros::object
  :slots (_success ))

(defmethod vision_apps::StopCameraCaptureResponse
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

(defclass vision_apps::StopCameraCapture
  :super ros::object
  :slots ())

(setf (get vision_apps::StopCameraCapture :md5sum-) "e68f3fbbba669be19f5e738564807335")
(setf (get vision_apps::StopCameraCapture :datatype-) "vision_apps/StopCameraCapture")
(setf (get vision_apps::StopCameraCapture :request) vision_apps::StopCameraCaptureRequest)
(setf (get vision_apps::StopCameraCapture :response) vision_apps::StopCameraCaptureResponse)

(defmethod vision_apps::StopCameraCaptureRequest
  (:response () (instance vision_apps::StopCameraCaptureResponse :init)))

(setf (get vision_apps::StopCameraCaptureRequest :md5sum-) "e68f3fbbba669be19f5e738564807335")
(setf (get vision_apps::StopCameraCaptureRequest :datatype-) "vision_apps/StopCameraCaptureRequest")
(setf (get vision_apps::StopCameraCaptureRequest :definition-)
      "int32 pid
---
bool success
")

(setf (get vision_apps::StopCameraCaptureResponse :md5sum-) "e68f3fbbba669be19f5e738564807335")
(setf (get vision_apps::StopCameraCaptureResponse :datatype-) "vision_apps/StopCameraCaptureResponse")
(setf (get vision_apps::StopCameraCaptureResponse :definition-)
      "int32 pid
---
bool success
")



(provide :vision_apps/StopCameraCapture "e68f3fbbba669be19f5e738564807335")


