;; Auto-generated. Do not edit!


(when (boundp 'core_api::Land)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'Land (find-package "CORE_API")))
(unless (find-package "CORE_API::LAND")
  (make-package "CORE_API::LAND"))
(unless (find-package "CORE_API::LANDREQUEST")
  (make-package "CORE_API::LANDREQUEST"))
(unless (find-package "CORE_API::LANDRESPONSE")
  (make-package "CORE_API::LANDRESPONSE"))

(in-package "ROS")





(defclass core_api::LandRequest
  :super ros::object
  :slots (_async ))

(defmethod core_api::LandRequest
  (:init
   (&key
    ((:async __async) nil)
    )
   (send-super :init)
   (setq _async __async)
   self)
  (:async
   (&optional __async)
   (if __async (setq _async __async)) _async)
  (:serialization-length
   ()
   (+
    ;; bool _async
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _async
       (if _async (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _async
     (setq _async (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass core_api::LandResponse
  :super ros::object
  :slots (_success _message ))

(defmethod core_api::LandResponse
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

(defclass core_api::Land
  :super ros::object
  :slots ())

(setf (get core_api::Land :md5sum-) "69de5fed7bf47bdde23383e024152f0f")
(setf (get core_api::Land :datatype-) "core_api/Land")
(setf (get core_api::Land :request) core_api::LandRequest)
(setf (get core_api::Land :response) core_api::LandResponse)

(defmethod core_api::LandRequest
  (:response () (instance core_api::LandResponse :init)))

(setf (get core_api::LandRequest :md5sum-) "69de5fed7bf47bdde23383e024152f0f")
(setf (get core_api::LandRequest :datatype-) "core_api/LandRequest")
(setf (get core_api::LandRequest :definition-)
      "


bool async
---
bool success
string message

")

(setf (get core_api::LandResponse :md5sum-) "69de5fed7bf47bdde23383e024152f0f")
(setf (get core_api::LandResponse :datatype-) "core_api/LandResponse")
(setf (get core_api::LandResponse :definition-)
      "


bool async
---
bool success
string message

")



(provide :core_api/Land "69de5fed7bf47bdde23383e024152f0f")


