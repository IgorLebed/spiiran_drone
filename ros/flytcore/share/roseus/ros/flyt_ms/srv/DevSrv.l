;; Auto-generated. Do not edit!


(when (boundp 'flyt_ms::DevSrv)
  (if (not (find-package "FLYT_MS"))
    (make-package "FLYT_MS"))
  (shadow 'DevSrv (find-package "FLYT_MS")))
(unless (find-package "FLYT_MS::DEVSRV")
  (make-package "FLYT_MS::DEVSRV"))
(unless (find-package "FLYT_MS::DEVSRVREQUEST")
  (make-package "FLYT_MS::DEVSRVREQUEST"))
(unless (find-package "FLYT_MS::DEVSRVRESPONSE")
  (make-package "FLYT_MS::DEVSRVRESPONSE"))

(in-package "ROS")





(defclass flyt_ms::DevSrvRequest
  :super ros::object
  :slots ())

(defmethod flyt_ms::DevSrvRequest
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

(defclass flyt_ms::DevSrvResponse
  :super ros::object
  :slots (_resp ))

(defmethod flyt_ms::DevSrvResponse
  (:init
   (&key
    ((:resp __resp) "")
    )
   (send-super :init)
   (setq _resp (string __resp))
   self)
  (:resp
   (&optional __resp)
   (if __resp (setq _resp __resp)) _resp)
  (:serialization-length
   ()
   (+
    ;; string _resp
    4 (length _resp)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _resp
       (write-long (length _resp) s) (princ _resp s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _resp
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _resp (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass flyt_ms::DevSrv
  :super ros::object
  :slots ())

(setf (get flyt_ms::DevSrv :md5sum-) "b791c1a4a4f0cee32b54dd1a73706a59")
(setf (get flyt_ms::DevSrv :datatype-) "flyt_ms/DevSrv")
(setf (get flyt_ms::DevSrv :request) flyt_ms::DevSrvRequest)
(setf (get flyt_ms::DevSrv :response) flyt_ms::DevSrvResponse)

(defmethod flyt_ms::DevSrvRequest
  (:response () (instance flyt_ms::DevSrvResponse :init)))

(setf (get flyt_ms::DevSrvRequest :md5sum-) "b791c1a4a4f0cee32b54dd1a73706a59")
(setf (get flyt_ms::DevSrvRequest :datatype-) "flyt_ms/DevSrvRequest")
(setf (get flyt_ms::DevSrvRequest :definition-)
      "---
string resp
")

(setf (get flyt_ms::DevSrvResponse :md5sum-) "b791c1a4a4f0cee32b54dd1a73706a59")
(setf (get flyt_ms::DevSrvResponse :datatype-) "flyt_ms/DevSrvResponse")
(setf (get flyt_ms::DevSrvResponse :definition-)
      "---
string resp
")



(provide :flyt_ms/DevSrv "b791c1a4a4f0cee32b54dd1a73706a59")


