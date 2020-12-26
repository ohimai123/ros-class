; Auto-generated. Do not edit!


(cl:in-package hello_ros-msg)


;//! \htmlinclude led_state.msg.html

(cl:defclass <led_state> (roslisp-msg-protocol:ros-message)
  ((led_state
    :reader led_state
    :initarg :led_state
    :type cl:integer
    :initform 0))
)

(cl:defclass led_state (<led_state>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <led_state>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'led_state)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hello_ros-msg:<led_state> is deprecated: use hello_ros-msg:led_state instead.")))

(cl:ensure-generic-function 'led_state-val :lambda-list '(m))
(cl:defmethod led_state-val ((m <led_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hello_ros-msg:led_state-val is deprecated.  Use hello_ros-msg:led_state instead.")
  (led_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <led_state>) ostream)
  "Serializes a message object of type '<led_state>"
  (cl:let* ((signed (cl:slot-value msg 'led_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <led_state>) istream)
  "Deserializes a message object of type '<led_state>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'led_state) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<led_state>)))
  "Returns string type for a message object of type '<led_state>"
  "hello_ros/led_state")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'led_state)))
  "Returns string type for a message object of type 'led_state"
  "hello_ros/led_state")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<led_state>)))
  "Returns md5sum for a message object of type '<led_state>"
  "569a11dc0ada46c5a0c7d383fcce43c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'led_state)))
  "Returns md5sum for a message object of type 'led_state"
  "569a11dc0ada46c5a0c7d383fcce43c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<led_state>)))
  "Returns full string definition for message of type '<led_state>"
  (cl:format cl:nil "int64 led_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'led_state)))
  "Returns full string definition for message of type 'led_state"
  (cl:format cl:nil "int64 led_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <led_state>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <led_state>))
  "Converts a ROS message object to a list"
  (cl:list 'led_state
    (cl:cons ':led_state (led_state msg))
))
