;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::Feedback)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'Feedback (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::FEEDBACK")
  (make-package "VISION_APPS::FEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude Feedback.msg.html


(defclass vision_apps::Feedback
  :super ros::object
  :slots (_error_code _status _message ))

(defmethod vision_apps::Feedback
  (:init
   (&key
    ((:error_code __error_code) 0)
    ((:status __status) "")
    ((:message __message) "")
    )
   (send-super :init)
   (setq _error_code (round __error_code))
   (setq _status (string __status))
   (setq _message (string __message))
   self)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int16 _error_code
    2
    ;; string _status
    4 (length _status)
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _error_code
       (write-word _error_code s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _error_code
     (setq _error_code (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get vision_apps::Feedback :md5sum-) "43a6cd74b10820dc809f2ddf6b4baca0")
(setf (get vision_apps::Feedback :datatype-) "vision_apps/Feedback")
(setf (get vision_apps::Feedback :definition-)
      "int16 error_code
string status
string message
")



(provide :vision_apps/Feedback "43a6cd74b10820dc809f2ddf6b4baca0")


