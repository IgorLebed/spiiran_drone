;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::GetLandingTags)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'GetLandingTags (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::GETLANDINGTAGS")
  (make-package "VISION_APPS::GETLANDINGTAGS"))
(unless (find-package "VISION_APPS::GETLANDINGTAGSREQUEST")
  (make-package "VISION_APPS::GETLANDINGTAGSREQUEST"))
(unless (find-package "VISION_APPS::GETLANDINGTAGSRESPONSE")
  (make-package "VISION_APPS::GETLANDINGTAGSRESPONSE"))

(in-package "ROS")





(defclass vision_apps::GetLandingTagsRequest
  :super ros::object
  :slots ())

(defmethod vision_apps::GetLandingTagsRequest
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

(defclass vision_apps::GetLandingTagsResponse
  :super ros::object
  :slots (_success _error_code _message _no_of_tags _tags_list _tags_size ))

(defmethod vision_apps::GetLandingTagsResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    ((:no_of_tags __no_of_tags) 0)
    ((:tags_list __tags_list) (make-array 0 :initial-element 0 :element-type :integer))
    ((:tags_size __tags_size) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   (setq _no_of_tags (round __no_of_tags))
   (setq _tags_list __tags_list)
   (setq _tags_size __tags_size)
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
    ;; uint8 _error_code
    1
    ;; string _message
    4 (length _message)
    ;; uint8 _no_of_tags
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
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; uint8 _no_of_tags
       (write-byte _no_of_tags s)
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
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _no_of_tags
     (setq _no_of_tags (sys::peek buf ptr- :char)) (incf ptr- 1)
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

(defclass vision_apps::GetLandingTags
  :super ros::object
  :slots ())

(setf (get vision_apps::GetLandingTags :md5sum-) "aae0ee202470603e74d4947917bad750")
(setf (get vision_apps::GetLandingTags :datatype-) "vision_apps/GetLandingTags")
(setf (get vision_apps::GetLandingTags :request) vision_apps::GetLandingTagsRequest)
(setf (get vision_apps::GetLandingTags :response) vision_apps::GetLandingTagsResponse)

(defmethod vision_apps::GetLandingTagsRequest
  (:response () (instance vision_apps::GetLandingTagsResponse :init)))

(setf (get vision_apps::GetLandingTagsRequest :md5sum-) "aae0ee202470603e74d4947917bad750")
(setf (get vision_apps::GetLandingTagsRequest :datatype-) "vision_apps/GetLandingTagsRequest")
(setf (get vision_apps::GetLandingTagsRequest :definition-)
      "
---
bool success
uint8 error_code
string message
uint8 no_of_tags
int16[] tags_list
float32[] tags_size

")

(setf (get vision_apps::GetLandingTagsResponse :md5sum-) "aae0ee202470603e74d4947917bad750")
(setf (get vision_apps::GetLandingTagsResponse :datatype-) "vision_apps/GetLandingTagsResponse")
(setf (get vision_apps::GetLandingTagsResponse :definition-)
      "
---
bool success
uint8 error_code
string message
uint8 no_of_tags
int16[] tags_list
float32[] tags_size

")



(provide :vision_apps/GetLandingTags "aae0ee202470603e74d4947917bad750")


