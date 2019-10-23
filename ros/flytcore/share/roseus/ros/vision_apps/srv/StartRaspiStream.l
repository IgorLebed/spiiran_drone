;; Auto-generated. Do not edit!


(when (boundp 'vision_apps::StartRaspiStream)
  (if (not (find-package "VISION_APPS"))
    (make-package "VISION_APPS"))
  (shadow 'StartRaspiStream (find-package "VISION_APPS")))
(unless (find-package "VISION_APPS::STARTRASPISTREAM")
  (make-package "VISION_APPS::STARTRASPISTREAM"))
(unless (find-package "VISION_APPS::STARTRASPISTREAMREQUEST")
  (make-package "VISION_APPS::STARTRASPISTREAMREQUEST"))
(unless (find-package "VISION_APPS::STARTRASPISTREAMRESPONSE")
  (make-package "VISION_APPS::STARTRASPISTREAMRESPONSE"))

(in-package "ROS")





(defclass vision_apps::StartRaspiStreamRequest
  :super ros::object
  :slots (_image_width _image_height _framerate _brightness _saturation _flip _remote_url _remote_target _bitrate ))

(defmethod vision_apps::StartRaspiStreamRequest
  (:init
   (&key
    ((:image_width __image_width) 0)
    ((:image_height __image_height) 0)
    ((:framerate __framerate) 0)
    ((:brightness __brightness) 0)
    ((:saturation __saturation) 0)
    ((:flip __flip) nil)
    ((:remote_url __remote_url) "")
    ((:remote_target __remote_target) nil)
    ((:bitrate __bitrate) 0)
    )
   (send-super :init)
   (setq _image_width (round __image_width))
   (setq _image_height (round __image_height))
   (setq _framerate (round __framerate))
   (setq _brightness (round __brightness))
   (setq _saturation (round __saturation))
   (setq _flip __flip)
   (setq _remote_url (string __remote_url))
   (setq _remote_target __remote_target)
   (setq _bitrate (round __bitrate))
   self)
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
  (:saturation
   (&optional __saturation)
   (if __saturation (setq _saturation __saturation)) _saturation)
  (:flip
   (&optional __flip)
   (if __flip (setq _flip __flip)) _flip)
  (:remote_url
   (&optional __remote_url)
   (if __remote_url (setq _remote_url __remote_url)) _remote_url)
  (:remote_target
   (&optional __remote_target)
   (if __remote_target (setq _remote_target __remote_target)) _remote_target)
  (:bitrate
   (&optional __bitrate)
   (if __bitrate (setq _bitrate __bitrate)) _bitrate)
  (:serialization-length
   ()
   (+
    ;; int64 _image_width
    8
    ;; int64 _image_height
    8
    ;; int64 _framerate
    8
    ;; int64 _brightness
    8
    ;; int64 _saturation
    8
    ;; bool _flip
    1
    ;; string _remote_url
    4 (length _remote_url)
    ;; bool _remote_target
    1
    ;; int64 _bitrate
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
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
     ;; int64 _saturation
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _saturation (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _saturation) (= (length (_saturation . bv)) 2)) ;; bignum
              (write-long (ash (elt (_saturation . bv) 0) 0) s)
              (write-long (ash (elt (_saturation . bv) 1) -1) s))
             ((and (class _saturation) (= (length (_saturation . bv)) 1)) ;; big1
              (write-long (elt (_saturation . bv) 0) s)
              (write-long (if (>= _saturation 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _saturation s)(write-long (if (>= _saturation 0) 0 #xffffffff) s)))
     ;; bool _flip
       (if _flip (write-byte -1 s) (write-byte 0 s))
     ;; string _remote_url
       (write-long (length _remote_url) s) (princ _remote_url s)
     ;; bool _remote_target
       (if _remote_target (write-byte -1 s) (write-byte 0 s))
     ;; int64 _bitrate
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _bitrate (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _bitrate) (= (length (_bitrate . bv)) 2)) ;; bignum
              (write-long (ash (elt (_bitrate . bv) 0) 0) s)
              (write-long (ash (elt (_bitrate . bv) 1) -1) s))
             ((and (class _bitrate) (= (length (_bitrate . bv)) 1)) ;; big1
              (write-long (elt (_bitrate . bv) 0) s)
              (write-long (if (>= _bitrate 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _bitrate s)(write-long (if (>= _bitrate 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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
   ;; int64 _saturation
#+(or :alpha :irix6 :x86_64)
      (setf _saturation (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _saturation (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _flip
     (setq _flip (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _remote_url
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _remote_url (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _remote_target
     (setq _remote_target (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int64 _bitrate
#+(or :alpha :irix6 :x86_64)
      (setf _bitrate (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _bitrate (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass vision_apps::StartRaspiStreamResponse
  :super ros::object
  :slots (_success _message ))

(defmethod vision_apps::StartRaspiStreamResponse
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

(defclass vision_apps::StartRaspiStream
  :super ros::object
  :slots ())

(setf (get vision_apps::StartRaspiStream :md5sum-) "c8ad8ed25dd91782467c8f3557791b57")
(setf (get vision_apps::StartRaspiStream :datatype-) "vision_apps/StartRaspiStream")
(setf (get vision_apps::StartRaspiStream :request) vision_apps::StartRaspiStreamRequest)
(setf (get vision_apps::StartRaspiStream :response) vision_apps::StartRaspiStreamResponse)

(defmethod vision_apps::StartRaspiStreamRequest
  (:response () (instance vision_apps::StartRaspiStreamResponse :init)))

(setf (get vision_apps::StartRaspiStreamRequest :md5sum-) "c8ad8ed25dd91782467c8f3557791b57")
(setf (get vision_apps::StartRaspiStreamRequest :datatype-) "vision_apps/StartRaspiStreamRequest")
(setf (get vision_apps::StartRaspiStreamRequest :definition-)
      "int64  image_width
int64  image_height
int64  framerate
int64  brightness
int64  saturation
bool   flip
string remote_url
bool   remote_target
int64  bitrate
---
bool success
string message

")

(setf (get vision_apps::StartRaspiStreamResponse :md5sum-) "c8ad8ed25dd91782467c8f3557791b57")
(setf (get vision_apps::StartRaspiStreamResponse :datatype-) "vision_apps/StartRaspiStreamResponse")
(setf (get vision_apps::StartRaspiStreamResponse :definition-)
      "int64  image_width
int64  image_height
int64  framerate
int64  brightness
int64  saturation
bool   flip
string remote_url
bool   remote_target
int64  bitrate
---
bool success
string message

")



(provide :vision_apps/StartRaspiStream "c8ad8ed25dd91782467c8f3557791b57")


