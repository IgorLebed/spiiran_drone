;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::LogDownloadStatus)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'LogDownloadStatus (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::LOGDOWNLOADSTATUS")
  (make-package "MAVROS_MSGS::LOGDOWNLOADSTATUS"))

(in-package "ROS")
;;//! \htmlinclude LogDownloadStatus.msg.html


(defclass mavros_msgs::LogDownloadStatus
  :super ros::object
  :slots (_id _filename _status ))

(defmethod mavros_msgs::LogDownloadStatus
  (:init
   (&key
    ((:id __id) 0)
    ((:filename __filename) "")
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _filename (string __filename))
   (setq _status (round __status))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int8 _id
    1
    ;; string _filename
    4 (length _filename)
    ;; int8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _id
       (write-byte _id s)
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;; int8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _id 127) (setq _id (- _id 256)))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;;
   self)
  )

(setf (get mavros_msgs::LogDownloadStatus :md5sum-) "3d840e70d7837109a254981cf6cf6a98")
(setf (get mavros_msgs::LogDownloadStatus :datatype-) "mavros_msgs/LogDownloadStatus")
(setf (get mavros_msgs::LogDownloadStatus :definition-)
      "# Log Download Filename and Status
#filename - as per actual download format
#status - (-1) for not Downloading
#         0-99 for Downloading
#          100 for Download Finished

int8 id
string filename
int8 status

")



(provide :mavros_msgs/LogDownloadStatus "3d840e70d7837109a254981cf6cf6a98")


