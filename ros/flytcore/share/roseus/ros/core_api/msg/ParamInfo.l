;; Auto-generated. Do not edit!


(when (boundp 'core_api::ParamInfo)
  (if (not (find-package "CORE_API"))
    (make-package "CORE_API"))
  (shadow 'ParamInfo (find-package "CORE_API")))
(unless (find-package "CORE_API::PARAMINFO")
  (make-package "CORE_API::PARAMINFO"))

(in-package "ROS")
;;//! \htmlinclude ParamInfo.msg.html


(defclass core_api::ParamInfo
  :super ros::object
  :slots (_param_id _param_value ))

(defmethod core_api::ParamInfo
  (:init
   (&key
    ((:param_id __param_id) "")
    ((:param_value __param_value) "")
    )
   (send-super :init)
   (setq _param_id (string __param_id))
   (setq _param_value (string __param_value))
   self)
  (:param_id
   (&optional __param_id)
   (if __param_id (setq _param_id __param_id)) _param_id)
  (:param_value
   (&optional __param_value)
   (if __param_value (setq _param_value __param_value)) _param_value)
  (:serialization-length
   ()
   (+
    ;; string _param_id
    4 (length _param_id)
    ;; string _param_value
    4 (length _param_value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _param_id
       (write-long (length _param_id) s) (princ _param_id s)
     ;; string _param_value
       (write-long (length _param_value) s) (princ _param_value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _param_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _param_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _param_value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _param_value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get core_api::ParamInfo :md5sum-) "a944080ebad844ddaa75505407d5efa8")
(setf (get core_api::ParamInfo :datatype-) "core_api/ParamInfo")
(setf (get core_api::ParamInfo :definition-)
      "string param_id
string param_value

")



(provide :core_api/ParamInfo "a944080ebad844ddaa75505407d5efa8")


