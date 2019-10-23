; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude GetFrameType-request.msg.html

(cl:defclass <GetFrameType-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetFrameType-request (<GetFrameType-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFrameType-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFrameType-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<GetFrameType-request> is deprecated: use core_api-srv:GetFrameType-request instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GetFrameType-request>)))
    "Constants for message type '<GetFrameType-request>"
  '((:MAV_TYPE_GENERIC . 0)
    (:MAV_TYPE_FIXED_WING . 1)
    (:MAV_TYPE_QUADROTOR . 2)
    (:MAV_TYPE_COAXIAL . 3)
    (:MAV_TYPE_HELICOPTER . 4)
    (:MAV_TYPE_ANTENNA_TRACKER . 5)
    (:MAV_TYPE_GCS . 6)
    (:MAV_TYPE_AIRSHIP . 7)
    (:MAV_TYPE_FREE_BALLOON . 8)
    (:MAV_TYPE_ROCKET . 9)
    (:MAV_TYPE_GROUND_ROVER . 10)
    (:MAV_TYPE_SURFACE_BOAT . 11)
    (:MAV_TYPE_SUBMARINE . 12)
    (:MAV_TYPE_HEXAROTOR . 13)
    (:MAV_TYPE_OCTOROTOR . 14)
    (:MAV_TYPE_TRICOPTER . 15)
    (:MAV_TYPE_FLAPPING_WING . 16)
    (:MAV_TYPE_KITE . 17)
    (:MAV_TYPE_ONBOARD_CONTROLLER . 18)
    (:MAV_TYPE_VTOL_DUOROTOR . 19)
    (:MAV_TYPE_VTOL_QUADROTOR . 20)
    (:MAV_TYPE_VTOL_TILTROTOR . 21)
    (:MAV_TYPE_VTOL_RESERVED2 . 22)
    (:MAV_TYPE_VTOL_RESERVED3 . 23)
    (:MAV_TYPE_VTOL_RESERVED4 . 24)
    (:MAV_TYPE_VTOL_RESERVED5 . 25)
    (:MAV_TYPE_GIMBAL . 26)
    (:MAV_TYPE_ADSB . 27))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GetFrameType-request)))
    "Constants for message type 'GetFrameType-request"
  '((:MAV_TYPE_GENERIC . 0)
    (:MAV_TYPE_FIXED_WING . 1)
    (:MAV_TYPE_QUADROTOR . 2)
    (:MAV_TYPE_COAXIAL . 3)
    (:MAV_TYPE_HELICOPTER . 4)
    (:MAV_TYPE_ANTENNA_TRACKER . 5)
    (:MAV_TYPE_GCS . 6)
    (:MAV_TYPE_AIRSHIP . 7)
    (:MAV_TYPE_FREE_BALLOON . 8)
    (:MAV_TYPE_ROCKET . 9)
    (:MAV_TYPE_GROUND_ROVER . 10)
    (:MAV_TYPE_SURFACE_BOAT . 11)
    (:MAV_TYPE_SUBMARINE . 12)
    (:MAV_TYPE_HEXAROTOR . 13)
    (:MAV_TYPE_OCTOROTOR . 14)
    (:MAV_TYPE_TRICOPTER . 15)
    (:MAV_TYPE_FLAPPING_WING . 16)
    (:MAV_TYPE_KITE . 17)
    (:MAV_TYPE_ONBOARD_CONTROLLER . 18)
    (:MAV_TYPE_VTOL_DUOROTOR . 19)
    (:MAV_TYPE_VTOL_QUADROTOR . 20)
    (:MAV_TYPE_VTOL_TILTROTOR . 21)
    (:MAV_TYPE_VTOL_RESERVED2 . 22)
    (:MAV_TYPE_VTOL_RESERVED3 . 23)
    (:MAV_TYPE_VTOL_RESERVED4 . 24)
    (:MAV_TYPE_VTOL_RESERVED5 . 25)
    (:MAV_TYPE_GIMBAL . 26)
    (:MAV_TYPE_ADSB . 27))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFrameType-request>) ostream)
  "Serializes a message object of type '<GetFrameType-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFrameType-request>) istream)
  "Deserializes a message object of type '<GetFrameType-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFrameType-request>)))
  "Returns string type for a service object of type '<GetFrameType-request>"
  "core_api/GetFrameTypeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFrameType-request)))
  "Returns string type for a service object of type 'GetFrameType-request"
  "core_api/GetFrameTypeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFrameType-request>)))
  "Returns md5sum for a message object of type '<GetFrameType-request>"
  "2ec2f59783788c725a2606f728cb44da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFrameType-request)))
  "Returns md5sum for a message object of type 'GetFrameType-request"
  "2ec2f59783788c725a2606f728cb44da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFrameType-request>)))
  "Returns full string definition for message of type '<GetFrameType-request>"
  (cl:format cl:nil "uint8 MAV_TYPE_GENERIC=0~%uint8 MAV_TYPE_FIXED_WING=1~%uint8 MAV_TYPE_QUADROTOR=2~%uint8 MAV_TYPE_COAXIAL=3~%uint8 MAV_TYPE_HELICOPTER=4~%uint8 MAV_TYPE_ANTENNA_TRACKER=5~%uint8 MAV_TYPE_GCS=6~%uint8 MAV_TYPE_AIRSHIP=7~%uint8 MAV_TYPE_FREE_BALLOON=8~%uint8 MAV_TYPE_ROCKET=9~%uint8 MAV_TYPE_GROUND_ROVER=10~%uint8 MAV_TYPE_SURFACE_BOAT=11~%uint8 MAV_TYPE_SUBMARINE=12~%uint8 MAV_TYPE_HEXAROTOR=13~%uint8 MAV_TYPE_OCTOROTOR=14~%uint8 MAV_TYPE_TRICOPTER=15~%uint8 MAV_TYPE_FLAPPING_WING=16~%uint8 MAV_TYPE_KITE=17~%uint8 MAV_TYPE_ONBOARD_CONTROLLER=18~%uint8 MAV_TYPE_VTOL_DUOROTOR=19~%uint8 MAV_TYPE_VTOL_QUADROTOR=20~%uint8 MAV_TYPE_VTOL_TILTROTOR=21~%uint8 MAV_TYPE_VTOL_RESERVED2=22~%uint8 MAV_TYPE_VTOL_RESERVED3=23~%uint8 MAV_TYPE_VTOL_RESERVED4=24~%uint8 MAV_TYPE_VTOL_RESERVED5=25~%uint8 MAV_TYPE_GIMBAL=26~%uint8 MAV_TYPE_ADSB=27~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFrameType-request)))
  "Returns full string definition for message of type 'GetFrameType-request"
  (cl:format cl:nil "uint8 MAV_TYPE_GENERIC=0~%uint8 MAV_TYPE_FIXED_WING=1~%uint8 MAV_TYPE_QUADROTOR=2~%uint8 MAV_TYPE_COAXIAL=3~%uint8 MAV_TYPE_HELICOPTER=4~%uint8 MAV_TYPE_ANTENNA_TRACKER=5~%uint8 MAV_TYPE_GCS=6~%uint8 MAV_TYPE_AIRSHIP=7~%uint8 MAV_TYPE_FREE_BALLOON=8~%uint8 MAV_TYPE_ROCKET=9~%uint8 MAV_TYPE_GROUND_ROVER=10~%uint8 MAV_TYPE_SURFACE_BOAT=11~%uint8 MAV_TYPE_SUBMARINE=12~%uint8 MAV_TYPE_HEXAROTOR=13~%uint8 MAV_TYPE_OCTOROTOR=14~%uint8 MAV_TYPE_TRICOPTER=15~%uint8 MAV_TYPE_FLAPPING_WING=16~%uint8 MAV_TYPE_KITE=17~%uint8 MAV_TYPE_ONBOARD_CONTROLLER=18~%uint8 MAV_TYPE_VTOL_DUOROTOR=19~%uint8 MAV_TYPE_VTOL_QUADROTOR=20~%uint8 MAV_TYPE_VTOL_TILTROTOR=21~%uint8 MAV_TYPE_VTOL_RESERVED2=22~%uint8 MAV_TYPE_VTOL_RESERVED3=23~%uint8 MAV_TYPE_VTOL_RESERVED4=24~%uint8 MAV_TYPE_VTOL_RESERVED5=25~%uint8 MAV_TYPE_GIMBAL=26~%uint8 MAV_TYPE_ADSB=27~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFrameType-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFrameType-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFrameType-request
))
;//! \htmlinclude GetFrameType-response.msg.html

(cl:defclass <GetFrameType-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (frame_type
    :reader frame_type
    :initarg :frame_type
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass GetFrameType-response (<GetFrameType-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFrameType-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFrameType-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<GetFrameType-response> is deprecated: use core_api-srv:GetFrameType-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetFrameType-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'frame_type-val :lambda-list '(m))
(cl:defmethod frame_type-val ((m <GetFrameType-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:frame_type-val is deprecated.  Use core_api-srv:frame_type instead.")
  (frame_type m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetFrameType-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFrameType-response>) ostream)
  "Serializes a message object of type '<GetFrameType-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_type)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFrameType-response>) istream)
  "Deserializes a message object of type '<GetFrameType-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_type)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFrameType-response>)))
  "Returns string type for a service object of type '<GetFrameType-response>"
  "core_api/GetFrameTypeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFrameType-response)))
  "Returns string type for a service object of type 'GetFrameType-response"
  "core_api/GetFrameTypeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFrameType-response>)))
  "Returns md5sum for a message object of type '<GetFrameType-response>"
  "2ec2f59783788c725a2606f728cb44da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFrameType-response)))
  "Returns md5sum for a message object of type 'GetFrameType-response"
  "2ec2f59783788c725a2606f728cb44da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFrameType-response>)))
  "Returns full string definition for message of type '<GetFrameType-response>"
  (cl:format cl:nil "bool success~%uint8 frame_type~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFrameType-response)))
  "Returns full string definition for message of type 'GetFrameType-response"
  (cl:format cl:nil "bool success~%uint8 frame_type~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFrameType-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFrameType-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFrameType-response
    (cl:cons ':success (success msg))
    (cl:cons ':frame_type (frame_type msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetFrameType)))
  'GetFrameType-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetFrameType)))
  'GetFrameType-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFrameType)))
  "Returns string type for a service object of type '<GetFrameType>"
  "core_api/GetFrameType")