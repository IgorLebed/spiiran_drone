; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude WaypointSet-request.msg.html

(cl:defclass <WaypointSet-request> (roslisp-msg-protocol:ros-message)
  ((waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector mavros_msgs-msg:Waypoint)
   :initform (cl:make-array 0 :element-type 'mavros_msgs-msg:Waypoint :initial-element (cl:make-instance 'mavros_msgs-msg:Waypoint))))
)

(cl:defclass WaypointSet-request (<WaypointSet-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointSet-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointSet-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<WaypointSet-request> is deprecated: use core_api-srv:WaypointSet-request instead.")))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <WaypointSet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:waypoints-val is deprecated.  Use core_api-srv:waypoints instead.")
  (waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointSet-request>) ostream)
  "Serializes a message object of type '<WaypointSet-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointSet-request>) istream)
  "Deserializes a message object of type '<WaypointSet-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mavros_msgs-msg:Waypoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointSet-request>)))
  "Returns string type for a service object of type '<WaypointSet-request>"
  "core_api/WaypointSetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointSet-request)))
  "Returns string type for a service object of type 'WaypointSet-request"
  "core_api/WaypointSetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointSet-request>)))
  "Returns md5sum for a message object of type '<WaypointSet-request>"
  "3f085b910f9f393c0159cd4cdfc61799")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointSet-request)))
  "Returns md5sum for a message object of type 'WaypointSet-request"
  "3f085b910f9f393c0159cd4cdfc61799")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointSet-request>)))
  "Returns full string definition for message of type '<WaypointSet-request>"
  (cl:format cl:nil "~%~%~%~%mavros_msgs/Waypoint[] waypoints~%~%================================================================================~%MSG: mavros_msgs/Waypoint~%# Waypoint.msg~%#~%# ROS representation of MAVLink MISSION_ITEM~%# See mavlink documentation~%~%~%~%# see enum MAV_FRAME~%uint8 frame~%uint8 FRAME_GLOBAL = 0~%uint8 FRAME_LOCAL_NED = 1~%uint8 FRAME_MISSION = 2~%uint8 FRAME_GLOBAL_REL_ALT = 3~%uint8 FRAME_LOCAL_ENU = 4~%~%# see enum MAV_CMD and CommandCode.msg~%uint16 command~%~%bool is_current~%bool autocontinue~%# meaning of this params described in enum MAV_CMD~%float32 param1~%float32 param2~%float32 param3~%float32 param4~%float64 x_lat~%float64 y_long~%float64 z_alt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointSet-request)))
  "Returns full string definition for message of type 'WaypointSet-request"
  (cl:format cl:nil "~%~%~%~%mavros_msgs/Waypoint[] waypoints~%~%================================================================================~%MSG: mavros_msgs/Waypoint~%# Waypoint.msg~%#~%# ROS representation of MAVLink MISSION_ITEM~%# See mavlink documentation~%~%~%~%# see enum MAV_FRAME~%uint8 frame~%uint8 FRAME_GLOBAL = 0~%uint8 FRAME_LOCAL_NED = 1~%uint8 FRAME_MISSION = 2~%uint8 FRAME_GLOBAL_REL_ALT = 3~%uint8 FRAME_LOCAL_ENU = 4~%~%# see enum MAV_CMD and CommandCode.msg~%uint16 command~%~%bool is_current~%bool autocontinue~%# meaning of this params described in enum MAV_CMD~%float32 param1~%float32 param2~%float32 param3~%float32 param4~%float64 x_lat~%float64 y_long~%float64 z_alt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointSet-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointSet-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointSet-request
    (cl:cons ':waypoints (waypoints msg))
))
;//! \htmlinclude WaypointSet-response.msg.html

(cl:defclass <WaypointSet-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (wp_transfered
    :reader wp_transfered
    :initarg :wp_transfered
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass WaypointSet-response (<WaypointSet-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointSet-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointSet-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<WaypointSet-response> is deprecated: use core_api-srv:WaypointSet-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <WaypointSet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'wp_transfered-val :lambda-list '(m))
(cl:defmethod wp_transfered-val ((m <WaypointSet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:wp_transfered-val is deprecated.  Use core_api-srv:wp_transfered instead.")
  (wp_transfered m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <WaypointSet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointSet-response>) ostream)
  "Serializes a message object of type '<WaypointSet-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wp_transfered)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wp_transfered)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'wp_transfered)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'wp_transfered)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointSet-response>) istream)
  "Deserializes a message object of type '<WaypointSet-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wp_transfered)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wp_transfered)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'wp_transfered)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'wp_transfered)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointSet-response>)))
  "Returns string type for a service object of type '<WaypointSet-response>"
  "core_api/WaypointSetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointSet-response)))
  "Returns string type for a service object of type 'WaypointSet-response"
  "core_api/WaypointSetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointSet-response>)))
  "Returns md5sum for a message object of type '<WaypointSet-response>"
  "3f085b910f9f393c0159cd4cdfc61799")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointSet-response)))
  "Returns md5sum for a message object of type 'WaypointSet-response"
  "3f085b910f9f393c0159cd4cdfc61799")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointSet-response>)))
  "Returns full string definition for message of type '<WaypointSet-response>"
  (cl:format cl:nil "bool success~%uint32 wp_transfered~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointSet-response)))
  "Returns full string definition for message of type 'WaypointSet-response"
  (cl:format cl:nil "bool success~%uint32 wp_transfered~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointSet-response>))
  (cl:+ 0
     1
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointSet-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointSet-response
    (cl:cons ':success (success msg))
    (cl:cons ':wp_transfered (wp_transfered msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WaypointSet)))
  'WaypointSet-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WaypointSet)))
  'WaypointSet-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointSet)))
  "Returns string type for a service object of type '<WaypointSet>"
  "core_api/WaypointSet")