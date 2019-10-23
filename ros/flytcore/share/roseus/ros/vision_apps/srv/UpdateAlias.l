;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::UpdateAlias)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'UpdateAlias (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::UPDATEALIAS")
  (make-package "VISION_APPS::UPDATEALIAS"))
(unless (find-package "VISION_APPS::UPDATEALIASREQUEST")
  (make-package "VISION_APPS::UPDATEALIASREQUEST"))
(unless (find-package "VISION_APPS::UPDATEALIASRESPONSE")
  (make-package "VISION_APPS::UPDATEALIASRESPONSE"))

(in-package "ROS")





(defclass vision_apps::UpdateAliasRequest
  :super ros::object
  :slots (_old_alias _new_alias ))

(defmethod vision_apps::UpdateAliasRequest
  (:init
   (&key
    ((:old_alias __old_alias) "")
    ((:new_alias __new_alias) "")
    )
   (send-super :init)
   (setq _old_alias (string __old_alias))
   (setq _new_alias (string __new_alias))
   self)
  (:old_alias
   (&optional __old_alias)
   (if __old_alias (setq _old_alias __old_alias)) _old_alias)
  (:new_alias
   (&optional __new_alias)
   (if __new_alias (setq _new_alias __new_alias)) _new_alias)
  (:serialization-length
   ()
   (+
    ;; string _old_alias
    4 (length _old_alias)
    ;; string _new_alias
    4 (length _new_alias)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _old_alias
       (write-long (length _old_alias) s) (princ _old_alias s)
     ;; string _new_alias
       (write-long (length _new_alias) s) (princ _new_alias s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _old_alias
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _old_alias (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _new_alias
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _new_alias (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vision_apps::UpdateAliasResponse
  :super ros::object
  :slots (_success ))

(defmethod vision_apps::UpdateAliasResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass vision_apps::UpdateAlias
  :super ros::object
  :slots ())

(setf (get vision_apps::UpdateAlias :md5sum-) "0a1770d68691fd4da5d99ac89cb0df8b")
(setf (get vision_apps::UpdateAlias :datatype-) "vision_apps/UpdateAlias")
(setf (get vision_apps::UpdateAlias :request) vision_apps::UpdateAliasRequest)
(setf (get vision_apps::UpdateAlias :response) vision_apps::UpdateAliasResponse)

(defmethod vision_apps::UpdateAliasRequest
  (:response () (instance vision_apps::UpdateAliasResponse :init)))

(setf (get vision_apps::UpdateAliasRequest :md5sum-) "0a1770d68691fd4da5d99ac89cb0df8b")
(setf (get vision_apps::UpdateAliasRequest :datatype-) "vision_apps/UpdateAliasRequest")
(setf (get vision_apps::UpdateAliasRequest :definition-)
      "string old_alias
string new_alias
---
bool success

")

(setf (get vision_apps::UpdateAliasResponse :md5sum-) "0a1770d68691fd4da5d99ac89cb0df8b")
(setf (get vision_apps::UpdateAliasResponse :datatype-) "vision_apps/UpdateAliasResponse")
(setf (get vision_apps::UpdateAliasResponse :definition-)
      "string old_alias
string new_alias
---
bool success

")



(provide :vision_apps/UpdateAlias "0a1770d68691fd4da5d99ac89cb0df8b")


