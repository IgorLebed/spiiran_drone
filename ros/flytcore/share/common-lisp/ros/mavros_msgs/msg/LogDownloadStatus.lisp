; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude LogDownloadStatus.msg.html

(cl:defclass <LogDownloadStatus> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LogDownloadStatus (<LogDownloadStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LogDownloadStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LogDownloadStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<LogDownloadStatus> is deprecated: use mavros_msgs-msg:LogDownloadStatus instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <LogDownloadStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:id-val is deprecated.  Use mavros_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <LogDownloadStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:filename-val is deprecated.  Use mavros_msgs-msg:filename instead.")
  (filename m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <LogDownloadStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavros_msgs-msg:status-val is deprecated.  Use mavros_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LogDownloadStatus>) ostream)
  "Serializes a message object of type '<LogDownloadStatus>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LogDownloadStatus>) istream)
  "Deserializes a message object of type '<LogDownloadStatus>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LogDownloadStatus>)))
  "Returns string type for a message object of type '<LogDownloadStatus>"
  "mavros_msgs/LogDownloadStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LogDownloadStatus)))
  "Returns string type for a message object of type 'LogDownloadStatus"
  "mavros_msgs/LogDownloadStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LogDownloadStatus>)))
  "Returns md5sum for a message object of type '<LogDownloadStatus>"
  "3d840e70d7837109a254981cf6cf6a98")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LogDownloadStatus)))
  "Returns md5sum for a message object of type 'LogDownloadStatus"
  "3d840e70d7837109a254981cf6cf6a98")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LogDownloadStatus>)))
  "Returns full string definition for message of type '<LogDownloadStatus>"
  (cl:format cl:nil "# Log Download Filename and Status~%#filename - as per actual download format~%#status - (-1) for not Downloading~%#         0-99 for Downloading~%#          100 for Download Finished~%~%int8 id~%string filename~%int8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LogDownloadStatus)))
  "Returns full string definition for message of type 'LogDownloadStatus"
  (cl:format cl:nil "# Log Download Filename and Status~%#filename - as per actual download format~%#status - (-1) for not Downloading~%#         0-99 for Downloading~%#          100 for Download Finished~%~%int8 id~%string filename~%int8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LogDownloadStatus>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'filename))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LogDownloadStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'LogDownloadStatus
    (cl:cons ':id (id msg))
    (cl:cons ':filename (filename msg))
    (cl:cons ':status (status msg))
))
