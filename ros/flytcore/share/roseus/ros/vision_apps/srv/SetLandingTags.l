;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::SetLandingTags)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'SetLandingTags (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::SETLANDINGTAGS")
  (make-package "VISION_APPS::SETLANDINGTAGS"))
(unless (find-package "VISION_APPS::SETLANDINGTAGSREQUEST")
  (make-package "VISION_APPS::SETLANDINGTAGSREQUEST"))
(unless (find-package "VISION_APPS::SETLANDINGTAGSRESPONSE")
  (make-package "VISION_APPS::SETLANDINGTAGSRESPONSE"))

(in-package "ROS")





(defclass vision_apps::SetLandingTagsRequest
  :super ros::object
  :slots (_tags_list _tags_size _save ))

(defmethod vision_apps::SetLandingTagsRequest
  (:init
   (&key
    ((:tags_list __tags_list) (make-array 0 :initial-element 0 :element-type :integer))
    ((:tags_size __tags_size) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:save __save) nil)
    )
   (send-super :init)
   (setq _tags_list __tags_list)
   (setq _tags_size __tags_size)
   (setq _save __save)
   self)
  (:tags_list
   (&optional __tags_list)
   (if __tags_list (setq _tags_list __tags_list)) _tags_list)
  (:tags_size
   (&optional __tags_size)
   (if __tags_size (setq _tags_size __tags_size)) _tags_size)
  (:save
   (&optional __save)
   (if __save (setq _save __save)) _save)
  (:serialization-length
   ()
   (+
    ;; int16[] _tags_list
    (* 2    (length _tags_list)) 4
    ;; float32[] _tags_size
    (* 4    (length _tags_size)) 4
    ;; bool _save
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
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
     ;; bool _save
       (if _save (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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
   ;; bool _save
     (setq _save (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass vision_apps::SetLandingTagsResponse
  :super ros::object
  :slots (_success _error_code _message _no_of_tags ))

(defmethod vision_apps::SetLandingTagsResponse
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

(defclass vision_apps::SetLandingTags
  :super ros::object
  :slots ())

(setf (get vision_apps::SetLandingTags :md5sum-) "cd699613466cea6d48ccdaa53ecb88b7")
(setf (get vision_apps::SetLandingTags :datatype-) "vision_apps/SetLandingTags")
(setf (get vision_apps::SetLandingTags :request) vision_apps::SetLandingTagsRequest)
(setf (get vision_apps::SetLandingTags :response) vision_apps::SetLandingTagsResponse)

(defmethod vision_apps::SetLandingTagsRequest
  (:response () (instance vision_apps::SetLandingTagsResponse :init)))

(setf (get vision_apps::SetLandingTagsRequest :md5sum-) "cd699613466cea6d48ccdaa53ecb88b7")
(setf (get vision_apps::SetLandingTagsRequest :datatype-) "vision_apps/SetLandingTagsRequest")
(setf (get vision_apps::SetLandingTagsRequest :definition-)
      "int16[] tags_list
float32[] tags_size
bool save
---
bool success
uint8 error_code
string message
uint8 no_of_tags

")

(setf (get vision_apps::SetLandingTagsResponse :md5sum-) "cd699613466cea6d48ccdaa53ecb88b7")
(setf (get vision_apps::SetLandingTagsResponse :datatype-) "vision_apps/SetLandingTagsResponse")
(setf (get vision_apps::SetLandingTagsResponse :definition-)
      "int16[] tags_list
float32[] tags_size
bool save
---
bool success
uint8 error_code
string message
uint8 no_of_tags

")



(provide :vision_apps/SetLandingTags "cd699613466cea6d48ccdaa53ecb88b7")


