; Auto-generated. Do not edit!


(cl:in-package core_api-srv)


;//! \htmlinclude IsAuthenticated-request.msg.html

(cl:defclass <IsAuthenticated-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass IsAuthenticated-request (<IsAuthenticated-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IsAuthenticated-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IsAuthenticated-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<IsAuthenticated-request> is deprecated: use core_api-srv:IsAuthenticated-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IsAuthenticated-request>) ostream)
  "Serializes a message object of type '<IsAuthenticated-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IsAuthenticated-request>) istream)
  "Deserializes a message object of type '<IsAuthenticated-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IsAuthenticated-request>)))
  "Returns string type for a service object of type '<IsAuthenticated-request>"
  "core_api/IsAuthenticatedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsAuthenticated-request)))
  "Returns string type for a service object of type 'IsAuthenticated-request"
  "core_api/IsAuthenticatedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IsAuthenticated-request>)))
  "Returns md5sum for a message object of type '<IsAuthenticated-request>"
  "d77d7c0327f89f653a29b046a4817b94")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IsAuthenticated-request)))
  "Returns md5sum for a message object of type 'IsAuthenticated-request"
  "d77d7c0327f89f653a29b046a4817b94")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IsAuthenticated-request>)))
  "Returns full string definition for message of type '<IsAuthenticated-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IsAuthenticated-request)))
  "Returns full string definition for message of type 'IsAuthenticated-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IsAuthenticated-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IsAuthenticated-request>))
  "Converts a ROS message object to a list"
  (cl:list 'IsAuthenticated-request
))
;//! \htmlinclude IsAuthenticated-response.msg.html

(cl:defclass <IsAuthenticated-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (authenticated
    :reader authenticated
    :initarg :authenticated
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass IsAuthenticated-response (<IsAuthenticated-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IsAuthenticated-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IsAuthenticated-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core_api-srv:<IsAuthenticated-response> is deprecated: use core_api-srv:IsAuthenticated-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <IsAuthenticated-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:success-val is deprecated.  Use core_api-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'authenticated-val :lambda-list '(m))
(cl:defmethod authenticated-val ((m <IsAuthenticated-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:authenticated-val is deprecated.  Use core_api-srv:authenticated instead.")
  (authenticated m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <IsAuthenticated-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core_api-srv:message-val is deprecated.  Use core_api-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IsAuthenticated-response>) ostream)
  "Serializes a message object of type '<IsAuthenticated-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'authenticated) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IsAuthenticated-response>) istream)
  "Deserializes a message object of type '<IsAuthenticated-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'authenticated) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IsAuthenticated-response>)))
  "Returns string type for a service object of type '<IsAuthenticated-response>"
  "core_api/IsAuthenticatedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsAuthenticated-response)))
  "Returns string type for a service object of type 'IsAuthenticated-response"
  "core_api/IsAuthenticatedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IsAuthenticated-response>)))
  "Returns md5sum for a message object of type '<IsAuthenticated-response>"
  "d77d7c0327f89f653a29b046a4817b94")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IsAuthenticated-response)))
  "Returns md5sum for a message object of type 'IsAuthenticated-response"
  "d77d7c0327f89f653a29b046a4817b94")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IsAuthenticated-response>)))
  "Returns full string definition for message of type '<IsAuthenticated-response>"
  (cl:format cl:nil "bool success~%bool authenticated~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IsAuthenticated-response)))
  "Returns full string definition for message of type 'IsAuthenticated-response"
  (cl:format cl:nil "bool success~%bool authenticated~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IsAuthenticated-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IsAuthenticated-response>))
  "Converts a ROS message object to a list"
  (cl:list 'IsAuthenticated-response
    (cl:cons ':success (success msg))
    (cl:cons ':authenticated (authenticated msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'IsAuthenticated)))
  'IsAuthenticated-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'IsAuthenticated)))
  'IsAuthenticated-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsAuthenticated)))
  "Returns string type for a service object of type '<IsAuthenticated>"
  "core_api/IsAuthenticated")