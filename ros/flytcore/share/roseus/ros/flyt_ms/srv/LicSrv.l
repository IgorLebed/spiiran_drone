;; Auto-generated. Do not edit!


(when (boundp 'flyt_ms::LicSrv)
  (if (not (find-package "FLYT_MS"))
    (make-package "FLYT_MS"))
  (shadow 'LicSrv (find-package "FLYT_MS")))
(unless (find-package "FLYT_MS::LICSRV")
  (make-package "FLYT_MS::LICSRV"))
(unless (find-package "FLYT_MS::LICSRVREQUEST")
  (make-package "FLYT_MS::LICSRVREQUEST"))
(unless (find-package "FLYT_MS::LICSRVRESPONSE")
  (make-package "FLYT_MS::LICSRVRESPONSE"))

(in-package "ROS")





(defclass flyt_ms::LicSrvRequest
  :super ros::object
  :slots (_ser_id _dev_id ))

(defmethod flyt_ms::LicSrvRequest
  (:init
   (&key
    ((:ser_id __ser_id) "")
    ((:dev_id __dev_id) "")
    )
   (send-super :init)
   (setq _ser_id (string __ser_id))
   (setq _dev_id (string __dev_id))
   self)
  (:ser_id
   (&optional __ser_id)
   (if __ser_id (setq _ser_id __ser_id)) _ser_id)
  (:dev_id
   (&optional __dev_id)
   (if __dev_id (setq _dev_id __dev_id)) _dev_id)
  (:serialization-length
   ()
   (+
    ;; string _ser_id
    4 (length _ser_id)
    ;; string _dev_id
    4 (length _dev_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ser_id
       (write-long (length _ser_id) s) (princ _ser_id s)
     ;; string _dev_id
       (write-long (length _dev_id) s) (princ _dev_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ser_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ser_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _dev_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dev_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass flyt_ms::LicSrvResponse
  :super ros::object
  :slots (_lic_type _exp_date ))

(defmethod flyt_ms::LicSrvResponse
  (:init
   (&key
    ((:lic_type __lic_type) "")
    ((:exp_date __exp_date) "")
    )
   (send-super :init)
   (setq _lic_type (string __lic_type))
   (setq _exp_date (string __exp_date))
   self)
  (:lic_type
   (&optional __lic_type)
   (if __lic_type (setq _lic_type __lic_type)) _lic_type)
  (:exp_date
   (&optional __exp_date)
   (if __exp_date (setq _exp_date __exp_date)) _exp_date)
  (:serialization-length
   ()
   (+
    ;; string _lic_type
    4 (length _lic_type)
    ;; string _exp_date
    4 (length _exp_date)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _lic_type
       (write-long (length _lic_type) s) (princ _lic_type s)
     ;; string _exp_date
       (write-long (length _exp_date) s) (princ _exp_date s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _lic_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lic_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _exp_date
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _exp_date (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass flyt_ms::LicSrv
  :super ros::object
  :slots ())

(setf (get flyt_ms::LicSrv :md5sum-) "78ae2287421c41faed757606acee0dc8")
(setf (get flyt_ms::LicSrv :datatype-) "flyt_ms/LicSrv")
(setf (get flyt_ms::LicSrv :request) flyt_ms::LicSrvRequest)
(setf (get flyt_ms::LicSrv :response) flyt_ms::LicSrvResponse)

(defmethod flyt_ms::LicSrvRequest
  (:response () (instance flyt_ms::LicSrvResponse :init)))

(setf (get flyt_ms::LicSrvRequest :md5sum-) "78ae2287421c41faed757606acee0dc8")
(setf (get flyt_ms::LicSrvRequest :datatype-) "flyt_ms/LicSrvRequest")
(setf (get flyt_ms::LicSrvRequest :definition-)
      "string ser_id
string dev_id
---
string lic_type
string exp_date

")

(setf (get flyt_ms::LicSrvResponse :md5sum-) "78ae2287421c41faed757606acee0dc8")
(setf (get flyt_ms::LicSrvResponse :datatype-) "flyt_ms/LicSrvResponse")
(setf (get flyt_ms::LicSrvResponse :definition-)
      "string ser_id
string dev_id
---
string lic_type
string exp_date

")



(provide :flyt_ms/LicSrv "78ae2287421c41faed757606acee0dc8")


