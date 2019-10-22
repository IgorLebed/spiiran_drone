;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::StartCameraCapture)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'StartCameraCapture (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::STARTCAMERACAPTURE")
  (make-package "VISION_APPS::STARTCAMERACAPTURE"))
(unless (find-package "VISION_APPS::STARTCAMERACAPTUREREQUEST")
  (make-package "VISION_APPS::STARTCAMERACAPTUREREQUEST"))
(unless (find-package "VISION_APPS::STARTCAMERACAPTURERESPONSE")
  (make-package "VISION_APPS::STARTCAMERACAPTURERESPONSE"))

(in-package "ROS")





(defclass vision_apps::StartCameraCaptureRequest
  :super ros::object
  :slots (_camera_alias _pixel_format _image_width _image_height _framerate _brightness _camera_info_url ))

(defmethod vision_apps::StartCameraCaptureRequest
  (:init
   (&key
    ((:camera_alias __camera_alias) "")
    ((:pixel_format __pixel_format) "")
    ((:image_width __image_width) 0)
    ((:image_height __image_height) 0)
    ((:framerate __framerate) 0)
    ((:brightness __brightness) 0)
    ((:camera_info_url __camera_info_url) "")
    )
   (send-super :init)
   (setq _camera_alias (string __camera_alias))
   (setq _pixel_format (string __pixel_format))
   (setq _image_width (round __image_width))
   (setq _image_height (round __image_height))
   (setq _framerate (round __framerate))
   (setq _brightness (round __brightness))
   (setq _camera_info_url (string __camera_info_url))
   self)
  (:camera_alias
   (&optional __camera_alias)
   (if __camera_alias (setq _camera_alias __camera_alias)) _camera_alias)
  (:pixel_format
   (&optional __pixel_format)
   (if __pixel_format (setq _pixel_format __pixel_format)) _pixel_format)
  (:image_width
   (&optional __image_width)
   (if __image_width (setq _image_width __image_width)) _image_width)
  (:image_height
   (&optional __image_height)
   (if __image_height (setq _image_height __image_height)) _image_height)
  (:framerate
   (&optional __framerate)
   (if __framerate (setq _framerate __framerate)) _framerate)
  (:brightness
   (&optional __brightness)
   (if __brightness (setq _brightness __brightness)) _brightness)
  (:camera_info_url
   (&optional __camera_info_url)
   (if __camera_info_url (setq _camera_info_url __camera_info_url)) _camera_info_url)
  (:serialization-length
   ()
   (+
    ;; string _camera_alias
    4 (length _camera_alias)
    ;; string _pixel_format
    4 (length _pixel_format)
    ;; int64 _image_width
    8
    ;; int64 _image_height
    8
    ;; int64 _framerate
    8
    ;; int64 _brightness
    8
    ;; string _camera_info_url
    4 (length _camera_info_url)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _camera_alias
       (write-long (length _camera_alias) s) (princ _camera_alias s)
     ;; string _pixel_format
       (write-long (length _pixel_format) s) (princ _pixel_format s)
     ;; int64 _image_width
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _image_width (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _image_width) (= (length (_image_width . bv)) 2)) ;; bignum
              (write-long (ash (elt (_image_width . bv) 0) 0) s)
              (write-long (ash (elt (_image_width . bv) 1) -1) s))
             ((and (class _image_width) (= (length (_image_width . bv)) 1)) ;; big1
              (write-long (elt (_image_width . bv) 0) s)
              (write-long (if (>= _image_width 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _image_width s)(write-long (if (>= _image_width 0) 0 #xffffffff) s)))
     ;; int64 _image_height
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _image_height (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _image_height) (= (length (_image_height . bv)) 2)) ;; bignum
              (write-long (ash (elt (_image_height . bv) 0) 0) s)
              (write-long (ash (elt (_image_height . bv) 1) -1) s))
             ((and (class _image_height) (= (length (_image_height . bv)) 1)) ;; big1
              (write-long (elt (_image_height . bv) 0) s)
              (write-long (if (>= _image_height 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _image_height s)(write-long (if (>= _image_height 0) 0 #xffffffff) s)))
     ;; int64 _framerate
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _framerate (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _framerate) (= (length (_framerate . bv)) 2)) ;; bignum
              (write-long (ash (elt (_framerate . bv) 0) 0) s)
              (write-long (ash (elt (_framerate . bv) 1) -1) s))
             ((and (class _framerate) (= (length (_framerate . bv)) 1)) ;; big1
              (write-long (elt (_framerate . bv) 0) s)
              (write-long (if (>= _framerate 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _framerate s)(write-long (if (>= _framerate 0) 0 #xffffffff) s)))
     ;; int64 _brightness
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _brightness (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _brightness) (= (length (_brightness . bv)) 2)) ;; bignum
              (write-long (ash (elt (_brightness . bv) 0) 0) s)
              (write-long (ash (elt (_brightness . bv) 1) -1) s))
             ((and (class _brightness) (= (length (_brightness . bv)) 1)) ;; big1
              (write-long (elt (_brightness . bv) 0) s)
              (write-long (if (>= _brightness 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _brightness s)(write-long (if (>= _brightness 0) 0 #xffffffff) s)))
     ;; string _camera_info_url
       (write-long (length _camera_info_url) s) (princ _camera_info_url s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _camera_alias
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _camera_alias (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _pixel_format
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pixel_format (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _image_width
#+(or :alpha :irix6 :x86_64)
      (setf _image_width (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _image_width (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _image_height
#+(or :alpha :irix6 :x86_64)
      (setf _image_height (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _image_height (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _framerate
#+(or :alpha :irix6 :x86_64)
      (setf _framerate (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _framerate (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _brightness
#+(or :alpha :irix6 :x86_64)
      (setf _brightness (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _brightness (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _camera_info_url
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _camera_info_url (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vision_apps::StartCameraCaptureResponse
  :super ros::object
  :slots (_pid ))

(defmethod vision_apps::StartCameraCaptureResponse
  (:init
   (&key
    ((:pid __pid) 0)
    )
   (send-super :init)
   (setq _pid (round __pid))
   self)
  (:pid
   (&optional __pid)
   (if __pid (setq _pid __pid)) _pid)
  (:serialization-length
   ()
   (+
    ;; int32 _pid
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _pid
       (write-long _pid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _pid
     (setq _pid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vision_apps::StartCameraCapture
  :super ros::object
  :slots ())

(setf (get vision_apps::StartCameraCapture :md5sum-) "5501cdfd5da9afae41c8afd579b3c676")
(setf (get vision_apps::StartCameraCapture :datatype-) "vision_apps/StartCameraCapture")
(setf (get vision_apps::StartCameraCapture :request) vision_apps::StartCameraCaptureRequest)
(setf (get vision_apps::StartCameraCapture :response) vision_apps::StartCameraCaptureResponse)

(defmethod vision_apps::StartCameraCaptureRequest
  (:response () (instance vision_apps::StartCameraCaptureResponse :init)))

(setf (get vision_apps::StartCameraCaptureRequest :md5sum-) "5501cdfd5da9afae41c8afd579b3c676")
(setf (get vision_apps::StartCameraCaptureRequest :datatype-) "vision_apps/StartCameraCaptureRequest")
(setf (get vision_apps::StartCameraCaptureRequest :definition-)
      "string camera_alias
string pixel_format
int64  image_width
int64  image_height
int64  framerate
int64  brightness
string camera_info_url
---
int32 pid

")

(setf (get vision_apps::StartCameraCaptureResponse :md5sum-) "5501cdfd5da9afae41c8afd579b3c676")
(setf (get vision_apps::StartCameraCaptureResponse :datatype-) "vision_apps/StartCameraCaptureResponse")
(setf (get vision_apps::StartCameraCaptureResponse :definition-)
      "string camera_alias
string pixel_format
int64  image_width
int64  image_height
int64  framerate
int64  brightness
string camera_info_url
---
int32 pid

")



(provide :vision_apps/StartCameraCapture "5501cdfd5da9afae41c8afd579b3c676")


