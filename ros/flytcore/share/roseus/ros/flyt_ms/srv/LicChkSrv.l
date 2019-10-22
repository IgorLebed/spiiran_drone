;; Auto-generated. Do not edit!


(when (boundp 'flyt_ms::LicChkSrv)
  (if (not (find-package "FLYT_MS"))
    (make-package "FLYT_MS"))
  (shadow 'LicChkSrv (find-package "FLYT_MS")))
(unless (find-package "FLYT_MS::LICCHKSRV")
  (make-package "FLYT_MS::LICCHKSRV"))
(unless (find-package "FLYT_MS::LICCHKSRVREQUEST")
  (make-package "FLYT_MS::LICCHKSRVREQUEST"))
(unless (find-package "FLYT_MS::LICCHKSRVRESPONSE")
  (make-package "FLYT_MS::LICCHKSRVRESPONSE"))

(in-package "ROS")





(defclass flyt_ms::LicChkSrvRequest
  :super ros::object
  :slots ())

(defmethod flyt_ms::LicChkSrvRequest
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

(defclass flyt_ms::LicChkSrvResponse
  :super ros::object
  :slots (_lic_type _lic_valid ))

(defmethod flyt_ms::LicChkSrvResponse
  (:init
   (&key
    ((:lic_type __lic_type) "")
    ((:lic_valid __lic_valid) nil)
    )
   (send-super :init)
   (setq _lic_type (string __lic_type))
   (setq _lic_valid __lic_valid)
   self)
  (:lic_type
   (&optional __lic_type)
   (if __lic_type (setq _lic_type __lic_type)) _lic_type)
  (:lic_valid
   (&optional __lic_valid)
   (if __lic_valid (setq _lic_valid __lic_valid)) _lic_valid)
  (:serialization-length
   ()
   (+
    ;; string _lic_type
    4 (length _lic_type)
    ;; bool _lic_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _lic_type
       (write-long (length _lic_type) s) (princ _lic_type s)
     ;; bool _lic_valid
       (if _lic_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _lic_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lic_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _lic_valid
     (setq _lic_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass flyt_ms::LicChkSrv
  :super ros::object
  :slots ())

(setf (get flyt_ms::LicChkSrv :md5sum-) "654af7e147b2d29af49c77584bd33b70")
(setf (get flyt_ms::LicChkSrv :datatype-) "flyt_ms/LicChkSrv")
(setf (get flyt_ms::LicChkSrv :request) flyt_ms::LicChkSrvRequest)
(setf (get flyt_ms::LicChkSrv :response) flyt_ms::LicChkSrvResponse)

(defmethod flyt_ms::LicChkSrvRequest
  (:response () (instance flyt_ms::LicChkSrvResponse :init)))

(setf (get flyt_ms::LicChkSrvRequest :md5sum-) "654af7e147b2d29af49c77584bd33b70")
(setf (get flyt_ms::LicChkSrvRequest :datatype-) "flyt_ms/LicChkSrvRequest")
(setf (get flyt_ms::LicChkSrvRequest :definition-)
      "---
string lic_type
bool lic_valid
")

(setf (get flyt_ms::LicChkSrvResponse :md5sum-) "654af7e147b2d29af49c77584bd33b70")
(setf (get flyt_ms::LicChkSrvResponse :datatype-) "flyt_ms/LicChkSrvResponse")
(setf (get flyt_ms::LicChkSrvResponse :definition-)
      "---
string lic_type
bool lic_valid
")



(provide :flyt_ms/LicChkSrv "654af7e147b2d29af49c77584bd33b70")


