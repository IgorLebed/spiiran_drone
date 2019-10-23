; Auto-generated. Do not edit!


(cl:in-package vision_apps-msg)


;//! \htmlinclude Checkpoint.msg.html

(cl:defclass <Checkpoint> (roslisp-msg-protocol:ros-message)
  ((checkpoint_id
    :reader checkpoint_id
    :initarg :checkpoint_id
    :type cl:fixnum
    :initform 0)
   (tag_id
    :reader tag_id
    :initarg :tag_id
    :type cl:fixnum
    :initform 0)
   (tag_x
    :reader tag_x
    :initarg :tag_x
    :type cl:float
    :initform 0.0)
   (tag_y
    :reader tag_y
    :initarg :tag_y
    :type cl:float
    :initform 0.0)
   (tag_z
    :reader tag_z
    :initarg :tag_z
    :type cl:float
    :initform 0.0)
   (tag_yaw
    :reader tag_yaw
    :initarg :tag_yaw
    :type cl:float
    :initform 0.0)
   (tag_size
    :reader tag_size
    :initarg :tag_size
    :type cl:float
    :initform 0.0))
)

(cl:defclass Checkpoint (<Checkpoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Checkpoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Checkpoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_apps-msg:<Checkpoint> is deprecated: use vision_apps-msg:Checkpoint instead.")))

(cl:ensure-generic-function 'checkpoint_id-val :lambda-list '(m))
(cl:defmethod checkpoint_id-val ((m <Checkpoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-msg:checkpoint_id-val is deprecated.  Use vision_apps-msg:checkpoint_id instead.")
  (checkpoint_id m))

(cl:ensure-generic-function 'tag_id-val :lambda-list '(m))
(cl:defmethod tag_id-val ((m <Checkpoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-msg:tag_id-val is deprecated.  Use vision_apps-msg:tag_id instead.")
  (tag_id m))

(cl:ensure-generic-function 'tag_x-val :lambda-list '(m))
(cl:defmethod tag_x-val ((m <Checkpoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-msg:tag_x-val is deprecated.  Use vision_apps-msg:tag_x instead.")
  (tag_x m))

(cl:ensure-generic-function 'tag_y-val :lambda-list '(m))
(cl:defmethod tag_y-val ((m <Checkpoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-msg:tag_y-val is deprecated.  Use vision_apps-msg:tag_y instead.")
  (tag_y m))

(cl:ensure-generic-function 'tag_z-val :lambda-list '(m))
(cl:defmethod tag_z-val ((m <Checkpoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-msg:tag_z-val is deprecated.  Use vision_apps-msg:tag_z instead.")
  (tag_z m))

(cl:ensure-generic-function 'tag_yaw-val :lambda-list '(m))
(cl:defmethod tag_yaw-val ((m <Checkpoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-msg:tag_yaw-val is deprecated.  Use vision_apps-msg:tag_yaw instead.")
  (tag_yaw m))

(cl:ensure-generic-function 'tag_size-val :lambda-list '(m))
(cl:defmethod tag_size-val ((m <Checkpoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_apps-msg:tag_size-val is deprecated.  Use vision_apps-msg:tag_size instead.")
  (tag_size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Checkpoint>) ostream)
  "Serializes a message object of type '<Checkpoint>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checkpoint_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tag_id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tag_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tag_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tag_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tag_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tag_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Checkpoint>) istream)
  "Deserializes a message object of type '<Checkpoint>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checkpoint_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tag_id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tag_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tag_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tag_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tag_yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tag_size) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Checkpoint>)))
  "Returns string type for a message object of type '<Checkpoint>"
  "vision_apps/Checkpoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Checkpoint)))
  "Returns string type for a message object of type 'Checkpoint"
  "vision_apps/Checkpoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Checkpoint>)))
  "Returns md5sum for a message object of type '<Checkpoint>"
  "f2a1ecea1fa4e57d3d72769bae7bcf7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Checkpoint)))
  "Returns md5sum for a message object of type 'Checkpoint"
  "f2a1ecea1fa4e57d3d72769bae7bcf7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Checkpoint>)))
  "Returns full string definition for message of type '<Checkpoint>"
  (cl:format cl:nil "uint8 checkpoint_id~%uint8 tag_id~%float32 tag_x~%float32 tag_y~%float32 tag_z~%float32 tag_yaw~%float32 tag_size~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Checkpoint)))
  "Returns full string definition for message of type 'Checkpoint"
  (cl:format cl:nil "uint8 checkpoint_id~%uint8 tag_id~%float32 tag_x~%float32 tag_y~%float32 tag_z~%float32 tag_yaw~%float32 tag_size~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Checkpoint>))
  (cl:+ 0
     1
     1
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Checkpoint>))
  "Converts a ROS message object to a list"
  (cl:list 'Checkpoint
    (cl:cons ':checkpoint_id (checkpoint_id msg))
    (cl:cons ':tag_id (tag_id msg))
    (cl:cons ':tag_x (tag_x msg))
    (cl:cons ':tag_y (tag_y msg))
    (cl:cons ':tag_z (tag_z msg))
    (cl:cons ':tag_yaw (tag_yaw msg))
    (cl:cons ':tag_size (tag_size msg))
))
