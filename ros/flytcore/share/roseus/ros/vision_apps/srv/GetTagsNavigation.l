;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::GetTagsNavigation)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'GetTagsNavigation (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::GETTAGSNAVIGATION")
  (make-package "VISION_APPS::GETTAGSNAVIGATION"))
(unless (find-package "VISION_APPS::GETTAGSNAVIGATIONREQUEST")
  (make-package "VISION_APPS::GETTAGSNAVIGATIONREQUEST"))
(unless (find-package "VISION_APPS::GETTAGSNAVIGATIONRESPONSE")
  (make-package "VISION_APPS::GETTAGSNAVIGATIONRESPONSE"))

(in-package "ROS")





(defclass vision_apps::GetTagsNavigationRequest
  :super ros::object
  :slots ())

(defmethod vision_apps::GetTagsNavigationRequest
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

(defclass vision_apps::GetTagsNavigationResponse
  :super ros::object
  :slots (_success _tags_list _tags_size ))

(defmethod vision_apps::GetTagsNavigationResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:tags_list __tags_list) (make-array 0 :initial-element 0 :element-type :integer))
    ((:tags_size __tags_size) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _success __success)
   (setq _tags_list __tags_list)
   (setq _tags_size __tags_size)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:tags_list
   (&optional __tags_list)
   (if __tags_list (setq _tags_list __tags_list)) _tags_list)
  (:tags_size
   (&optional __tags_size)
   (if __tags_size (setq _tags_size __tags_size)) _tags_size)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; int16[] _tags_list
    (* 2    (length _tags_list)) 4
    ;; float32[] _tags_size
    (* 4    (length _tags_size)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; int16[] _tags_list
     (write-long (length _tags_list) s)
     (dotimes (i (length _tags_list))
       (write-word (elt _tags_list i) s)
       )
     ;; float32[] _tags_size
     (write-long (length _tags_size) s)
     (dotimes (i (length _tags_size))
       (sys::poke (elt _tags_size i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16[] _tags_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tags_list (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _tags_list i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; float32[] _tags_size
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tags_size (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tags_size i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass vision_apps::GetTagsNavigation
  :super ros::object
  :slots ())

(setf (get vision_apps::GetTagsNavigation :md5sum-) "53782a4fae57c38fe64c9c19dae267f7")
(setf (get vision_apps::GetTagsNavigation :datatype-) "vision_apps/GetTagsNavigation")
(setf (get vision_apps::GetTagsNavigation :request) vision_apps::GetTagsNavigationRequest)
(setf (get vision_apps::GetTagsNavigation :response) vision_apps::GetTagsNavigationResponse)

(defmethod vision_apps::GetTagsNavigationRequest
  (:response () (instance vision_apps::GetTagsNavigationResponse :init)))

(setf (get vision_apps::GetTagsNavigationRequest :md5sum-) "53782a4fae57c38fe64c9c19dae267f7")
(setf (get vision_apps::GetTagsNavigationRequest :datatype-) "vision_apps/GetTagsNavigationRequest")
(setf (get vision_apps::GetTagsNavigationRequest :definition-)
      "
---
bool success
int16[] tags_list
float32[] tags_size
")

(setf (get vision_apps::GetTagsNavigationResponse :md5sum-) "53782a4fae57c38fe64c9c19dae267f7")
(setf (get vision_apps::GetTagsNavigationResponse :datatype-) "vision_apps/GetTagsNavigationResponse")
(setf (get vision_apps::GetTagsNavigationResponse :definition-)
      "
---
bool success
int16[] tags_list
float32[] tags_size
")



(provide :vision_apps/GetTagsNavigation "53782a4fae57c38fe64c9c19dae267f7")


