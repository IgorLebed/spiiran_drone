;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::SaveLandingTags)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'SaveLandingTags (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::SAVELANDINGTAGS")
  (make-package "VISION_APPS::SAVELANDINGTAGS"))
(unless (find-package "VISION_APPS::SAVELANDINGTAGSREQUEST")
  (make-package "VISION_APPS::SAVELANDINGTAGSREQUEST"))
(unless (find-package "VISION_APPS::SAVELANDINGTAGSRESPONSE")
  (make-package "VISION_APPS::SAVELANDINGTAGSRESPONSE"))

(in-package "ROS")





(defclass vision_apps::SaveLandingTagsRequest
  :super ros::object
  :slots ())

(defmethod vision_apps::SaveLandingTagsRequest
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

(defclass vision_apps::SaveLandingTagsResponse
  :super ros::object
  :slots (_success _error_code _message _no_of_tags ))

(defmethod vision_apps::SaveLandingTagsResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    ((:no_of_tags __no_of_tags) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   (setq _no_of_tags (round __no_of_tags))
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
  (:no_of_tags
   (&optional __no_of_tags)
   (if __no_of_tags (setq _no_of_tags __no_of_tags)) _no_of_tags)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint8 _error_code
    1
    ;; string _message
    4 (length _message)
    ;; uint8 _no_of_tags
    1
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
     ;; uint8 _no_of_tags
       (write-byte _no_of_tags s)
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
   ;; uint8 _no_of_tags
     (setq _no_of_tags (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass vision_apps::SaveLandingTags
  :super ros::object
  :slots ())

(setf (get vision_apps::SaveLandingTags :md5sum-) "1baebd8f9e081c78d7a8cd9ff7afcfe2")
(setf (get vision_apps::SaveLandingTags :datatype-) "vision_apps/SaveLandingTags")
(setf (get vision_apps::SaveLandingTags :request) vision_apps::SaveLandingTagsRequest)
(setf (get vision_apps::SaveLandingTags :response) vision_apps::SaveLandingTagsResponse)

(defmethod vision_apps::SaveLandingTagsRequest
  (:response () (instance vision_apps::SaveLandingTagsResponse :init)))

(setf (get vision_apps::SaveLandingTagsRequest :md5sum-) "1baebd8f9e081c78d7a8cd9ff7afcfe2")
(setf (get vision_apps::SaveLandingTagsRequest :datatype-) "vision_apps/SaveLandingTagsRequest")
(setf (get vision_apps::SaveLandingTagsRequest :definition-)
      "
---
bool success
uint8 error_code
string message
uint8 no_of_tags

")

(setf (get vision_apps::SaveLandingTagsResponse :md5sum-) "1baebd8f9e081c78d7a8cd9ff7afcfe2")
(setf (get vision_apps::SaveLandingTagsResponse :datatype-) "vision_apps/SaveLandingTagsResponse")
(setf (get vision_apps::SaveLandingTagsResponse :definition-)
      "
---
bool success
uint8 error_code
string message
uint8 no_of_tags

")



(provide :vision_apps/SaveLandingTags "1baebd8f9e081c78d7a8cd9ff7afcfe2")


