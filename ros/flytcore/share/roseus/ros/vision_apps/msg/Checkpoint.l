;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::Checkpoint)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'Checkpoint (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::CHECKPOINT")
  (make-package "VISION_APPS::CHECKPOINT"))

(in-package "ROS")
;;//! \htmlinclude Checkpoint.msg.html


(defclass vision_apps::Checkpoint
  :super ros::object
  :slots (_checkpoint_id _tag_id _tag_x _tag_y _tag_z _tag_yaw _tag_size ))

(defmethod vision_apps::Checkpoint
  (:init
   (&key
    ((:checkpoint_id __checkpoint_id) 0)
    ((:tag_id __tag_id) 0)
    ((:tag_x __tag_x) 0.0)
    ((:tag_y __tag_y) 0.0)
    ((:tag_z __tag_z) 0.0)
    ((:tag_yaw __tag_yaw) 0.0)
    ((:tag_size __tag_size) 0.0)
    )
   (send-super :init)
   (setq _checkpoint_id (round __checkpoint_id))
   (setq _tag_id (round __tag_id))
   (setq _tag_x (float __tag_x))
   (setq _tag_y (float __tag_y))
   (setq _tag_z (float __tag_z))
   (setq _tag_yaw (float __tag_yaw))
   (setq _tag_size (float __tag_size))
   self)
  (:checkpoint_id
   (&optional __checkpoint_id)
   (if __checkpoint_id (setq _checkpoint_id __checkpoint_id)) _checkpoint_id)
  (:tag_id
   (&optional __tag_id)
   (if __tag_id (setq _tag_id __tag_id)) _tag_id)
  (:tag_x
   (&optional __tag_x)
   (if __tag_x (setq _tag_x __tag_x)) _tag_x)
  (:tag_y
   (&optional __tag_y)
   (if __tag_y (setq _tag_y __tag_y)) _tag_y)
  (:tag_z
   (&optional __tag_z)
   (if __tag_z (setq _tag_z __tag_z)) _tag_z)
  (:tag_yaw
   (&optional __tag_yaw)
   (if __tag_yaw (setq _tag_yaw __tag_yaw)) _tag_yaw)
  (:tag_size
   (&optional __tag_size)
   (if __tag_size (setq _tag_size __tag_size)) _tag_size)
  (:serialization-length
   ()
   (+
    ;; uint8 _checkpoint_id
    1
    ;; uint8 _tag_id
    1
    ;; float32 _tag_x
    4
    ;; float32 _tag_y
    4
    ;; float32 _tag_z
    4
    ;; float32 _tag_yaw
    4
    ;; float32 _tag_size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _checkpoint_id
       (write-byte _checkpoint_id s)
     ;; uint8 _tag_id
       (write-byte _tag_id s)
     ;; float32 _tag_x
       (sys::poke _tag_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tag_y
       (sys::poke _tag_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tag_z
       (sys::poke _tag_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tag_yaw
       (sys::poke _tag_yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tag_size
       (sys::poke _tag_size (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _checkpoint_id
     (setq _checkpoint_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _tag_id
     (setq _tag_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _tag_x
     (setq _tag_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tag_y
     (setq _tag_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tag_z
     (setq _tag_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tag_yaw
     (setq _tag_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tag_size
     (setq _tag_size (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get vision_apps::Checkpoint :md5sum-) "f2a1ecea1fa4e57d3d72769bae7bcf7a")
(setf (get vision_apps::Checkpoint :datatype-) "vision_apps/Checkpoint")
(setf (get vision_apps::Checkpoint :definition-)
      "uint8 checkpoint_id
uint8 tag_id
float32 tag_x
float32 tag_y
float32 tag_z
float32 tag_yaw
float32 tag_size
")



(provide :vision_apps/Checkpoint "f2a1ecea1fa4e57d3d72769bae7bcf7a")


