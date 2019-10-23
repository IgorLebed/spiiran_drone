;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::GetCamList)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'GetCamList (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::GETCAMLIST")
  (make-package "VISION_APPS::GETCAMLIST"))
(unless (find-package "VISION_APPS::GETCAMLISTREQUEST")
  (make-package "VISION_APPS::GETCAMLISTREQUEST"))
(unless (find-package "VISION_APPS::GETCAMLISTRESPONSE")
  (make-package "VISION_APPS::GETCAMLISTRESPONSE"))

(in-package "ROS")





(defclass vision_apps::GetCamListRequest
  :super ros::object
  :slots ())

(defmethod vision_apps::GetCamListRequest
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

(defclass vision_apps::GetCamListResponse
  :super ros::object
  :slots (_camera_aliases ))

(defmethod vision_apps::GetCamListResponse
  (:init
   (&key
    ((:camera_aliases __camera_aliases) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _camera_aliases __camera_aliases)
   self)
  (:camera_aliases
   (&optional __camera_aliases)
   (if __camera_aliases (setq _camera_aliases __camera_aliases)) _camera_aliases)
  (:serialization-length
   ()
   (+
    ;; string[] _camera_aliases
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _camera_aliases)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _camera_aliases
     (write-long (length _camera_aliases) s)
     (dolist (elem _camera_aliases)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _camera_aliases
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _camera_aliases (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _camera_aliases i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass vision_apps::GetCamList
  :super ros::object
  :slots ())

(setf (get vision_apps::GetCamList :md5sum-) "9902e78c4ccd49c8d03303243efb89fc")
(setf (get vision_apps::GetCamList :datatype-) "vision_apps/GetCamList")
(setf (get vision_apps::GetCamList :request) vision_apps::GetCamListRequest)
(setf (get vision_apps::GetCamList :response) vision_apps::GetCamListResponse)

(defmethod vision_apps::GetCamListRequest
  (:response () (instance vision_apps::GetCamListResponse :init)))

(setf (get vision_apps::GetCamListRequest :md5sum-) "9902e78c4ccd49c8d03303243efb89fc")
(setf (get vision_apps::GetCamListRequest :datatype-) "vision_apps/GetCamListRequest")
(setf (get vision_apps::GetCamListRequest :definition-)
      "---
string[] camera_aliases

")

(setf (get vision_apps::GetCamListResponse :md5sum-) "9902e78c4ccd49c8d03303243efb89fc")
(setf (get vision_apps::GetCamListResponse :datatype-) "vision_apps/GetCamListResponse")
(setf (get vision_apps::GetCamListResponse :definition-)
      "---
string[] camera_aliases

")



(provide :vision_apps/GetCamList "9902e78c4ccd49c8d03303243efb89fc")


