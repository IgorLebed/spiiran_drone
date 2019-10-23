;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::StartStream)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'StartStream (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::STARTSTREAM")
  (make-package "VISION_APPS::STARTSTREAM"))
(unless (find-package "VISION_APPS::STARTSTREAMREQUEST")
  (make-package "VISION_APPS::STARTSTREAMREQUEST"))
(unless (find-package "VISION_APPS::STARTSTREAMRESPONSE")
  (make-package "VISION_APPS::STARTSTREAMRESPONSE"))

(in-package "ROS")





(defclass vision_apps::StartStreamRequest
  :super ros::object
  :slots (_streamer _ip _port _source_type _camera_alias _topic _camera_calib_file _image_width _image_height _framerate _brightness ))

(defmethod vision_apps::StartStreamRequest
  (:init
   (&key
    ((:streamer __streamer) "")
    ((:ip __ip) "")
    ((:port __port) "")
    ((:source_type __source_type) "")
    ((:camera_alias __camera_alias) "")
    ((:topic __topic) "")
    ((:camera_calib_file __camera_calib_file) "")
    ((:image_width __image_width) 0)
    ((:image_height __image_height) 0)
    ((:framerate __framerate) 0)
    ((:brightness __brightness) 0)
    )
   (send-super :init)
   (setq _streamer (string __streamer))
   (setq _ip (string __ip))
   (setq _port (string __port))
   (setq _source_type (string __source_type))
   (setq _camera_alias (string __camera_alias))
   (setq _topic (string __topic))
   (setq _camera_calib_file (string __camera_calib_file))
   (setq _image_width (round __image_width))
   (setq _image_height (round __image_height))
   (setq _framerate (round __framerate))
   (setq _brightness (round __brightness))
   self)
  (:streamer
   (&optional __streamer)
   (if __streamer (setq _streamer __streamer)) _streamer)
  (:ip
   (&optional __ip)
   (if __ip (setq _ip __ip)) _ip)
  (:port
   (&optional __port)
   (if __port (setq _port __port)) _port)
  (:source_type
   (&optional __source_type)
   (if __source_type (setq _source_type __source_type)) _source_type)
  (:camera_alias
   (&optional __camera_alias)
   (if __camera_alias (setq _camera_alias __camera_alias)) _camera_alias)
  (:topic
   (&optional __topic)
   (if __topic (setq _topic __topic)) _topic)
  (:camera_calib_file
   (&optional __camera_calib_file)
   (if __camera_calib_file (setq _camera_calib_file __camera_calib_file)) _camera_calib_file)
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
  (:serialization-length
   ()
   (+
    ;; string _streamer
    4 (length _streamer)
    ;; string _ip
    4 (length _ip)
    ;; string _port
    4 (length _port)
    ;; string _source_type
    4 (length _source_type)
    ;; string _camera_alias
    4 (length _camera_alias)
    ;; string _topic
    4 (length _topic)
    ;; string _camera_calib_file
    4 (length _camera_calib_file)
    ;; int64 _image_width
    8
    ;; int64 _image_height
    8
    ;; int64 _framerate
    8
    ;; int64 _brightness
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _streamer
       (write-long (length _streamer) s) (princ _streamer s)
     ;; string _ip
       (write-long (length _ip) s) (princ _ip s)
     ;; string _port
       (write-long (length _port) s) (princ _port s)
     ;; string _source_type
       (write-long (length _source_type) s) (princ _source_type s)
     ;; string _camera_alias
       (write-long (length _camera_alias) s) (princ _camera_alias s)
     ;; string _topic
       (write-long (length _topic) s) (princ _topic s)
     ;; string _camera_calib_file
       (write-long (length _camera_calib_file) s) (princ _camera_calib_file s)
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _streamer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _streamer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _ip
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ip (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _port
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _port (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _source_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _source_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _camera_alias
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _camera_alias (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _camera_calib_file
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _camera_calib_file (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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
   ;;
   self)
  )

(defclass vision_apps::StartStreamResponse
  :super ros::object
  :slots (_pid ))

(defmethod vision_apps::StartStreamResponse
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

(defclass vision_apps::StartStream
  :super ros::object
  :slots ())

(setf (get vision_apps::StartStream :md5sum-) "e80b3fbc60a44ad81af9ba0208e68957")
(setf (get vision_apps::StartStream :datatype-) "vision_apps/StartStream")
(setf (get vision_apps::StartStream :request) vision_apps::StartStreamRequest)
(setf (get vision_apps::StartStream :response) vision_apps::StartStreamResponse)

(defmethod vision_apps::StartStreamRequest
  (:response () (instance vision_apps::StartStreamResponse :init)))

(setf (get vision_apps::StartStreamRequest :md5sum-) "e80b3fbc60a44ad81af9ba0208e68957")
(setf (get vision_apps::StartStreamRequest :datatype-) "vision_apps/StartStreamRequest")
(setf (get vision_apps::StartStreamRequest :definition-)
      "string streamer
string ip
string port
string source_type
string camera_alias
string topic
string camera_calib_file
int64  image_width
int64  image_height
int64  framerate
int64  brightness
---
int32 pid

")

(setf (get vision_apps::StartStreamResponse :md5sum-) "e80b3fbc60a44ad81af9ba0208e68957")
(setf (get vision_apps::StartStreamResponse :datatype-) "vision_apps/StartStreamResponse")
(setf (get vision_apps::StartStreamResponse :definition-)
      "string streamer
string ip
string port
string source_type
string camera_alias
string topic
string camera_calib_file
int64  image_width
int64  image_height
int64  framerate
int64  brightness
---
int32 pid

")



(provide :vision_apps/StartStream "e80b3fbc60a44ad81af9ba0208e68957")


