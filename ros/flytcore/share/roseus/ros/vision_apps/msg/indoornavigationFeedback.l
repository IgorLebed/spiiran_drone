;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::indoornavigationFeedback)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'indoornavigationFeedback (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::INDOORNAVIGATIONFEEDBACK")
  (make-package "VISION_APPS::INDOORNAVIGATIONFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude indoornavigationFeedback.msg.html


(defclass vision_apps::indoornavigationFeedback
  :super ros::object
  :slots (_status _error_code _message ))

(defmethod vision_apps::indoornavigationFeedback
  (:init
   (&key
    ((:status __status) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _status __status)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ;; uint8 _error_code
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get vision_apps::indoornavigationFeedback :md5sum-) "ff6191949c08b965fd50fecd66eb390d")
(setf (get vision_apps::indoornavigationFeedback :datatype-) "vision_apps/indoornavigationFeedback")
(setf (get vision_apps::indoornavigationFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
bool status
uint8 error_code
string message

")



(provide :vision_apps/indoornavigationFeedback "ff6191949c08b965fd50fecd66eb390d")

