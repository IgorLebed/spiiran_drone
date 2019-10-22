;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::UploadRaspiVideos)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'UploadRaspiVideos (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::UPLOADRASPIVIDEOS")
  (make-package "VISION_APPS::UPLOADRASPIVIDEOS"))
(unless (find-package "VISION_APPS::UPLOADRASPIVIDEOSREQUEST")
  (make-package "VISION_APPS::UPLOADRASPIVIDEOSREQUEST"))
(unless (find-package "VISION_APPS::UPLOADRASPIVIDEOSRESPONSE")
  (make-package "VISION_APPS::UPLOADRASPIVIDEOSRESPONSE"))

(in-package "ROS")





(defclass vision_apps::UploadRaspiVideosRequest
  :super ros::object
  :slots ())

(defmethod vision_apps::UploadRaspiVideosRequest
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

(defclass vision_apps::UploadRaspiVideosResponse
  :super ros::object
  :slots (_success _message ))

(defmethod vision_apps::UploadRaspiVideosResponse
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

(defclass vision_apps::UploadRaspiVideos
  :super ros::object
  :slots ())

(setf (get vision_apps::UploadRaspiVideos :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get vision_apps::UploadRaspiVideos :datatype-) "vision_apps/UploadRaspiVideos")
(setf (get vision_apps::UploadRaspiVideos :request) vision_apps::UploadRaspiVideosRequest)
(setf (get vision_apps::UploadRaspiVideos :response) vision_apps::UploadRaspiVideosResponse)

(defmethod vision_apps::UploadRaspiVideosRequest
  (:response () (instance vision_apps::UploadRaspiVideosResponse :init)))

(setf (get vision_apps::UploadRaspiVideosRequest :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get vision_apps::UploadRaspiVideosRequest :datatype-) "vision_apps/UploadRaspiVideosRequest")
(setf (get vision_apps::UploadRaspiVideosRequest :definition-)
      "
---
bool success
string message
")

(setf (get vision_apps::UploadRaspiVideosResponse :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get vision_apps::UploadRaspiVideosResponse :datatype-) "vision_apps/UploadRaspiVideosResponse")
(setf (get vision_apps::UploadRaspiVideosResponse :definition-)
      "
---
bool success
string message
")



(provide :vision_apps/UploadRaspiVideos "937c9679a518e3a18d831e57125ea522")


