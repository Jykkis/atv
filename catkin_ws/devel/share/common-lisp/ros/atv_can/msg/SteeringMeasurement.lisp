; Auto-generated. Do not edit!


(cl:in-package atv_can-msg)


;//! \htmlinclude SteeringMeasurement.msg.html

(cl:defclass <SteeringMeasurement> (roslisp-msg-protocol:ros-message)
  ((encoder_position
    :reader encoder_position
    :initarg :encoder_position
    :type cl:integer
    :initform 0)
   (time_received
    :reader time_received
    :initarg :time_received
    :type cl:real
    :initform 0))
)

(cl:defclass SteeringMeasurement (<SteeringMeasurement>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SteeringMeasurement>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SteeringMeasurement)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atv_can-msg:<SteeringMeasurement> is deprecated: use atv_can-msg:SteeringMeasurement instead.")))

(cl:ensure-generic-function 'encoder_position-val :lambda-list '(m))
(cl:defmethod encoder_position-val ((m <SteeringMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atv_can-msg:encoder_position-val is deprecated.  Use atv_can-msg:encoder_position instead.")
  (encoder_position m))

(cl:ensure-generic-function 'time_received-val :lambda-list '(m))
(cl:defmethod time_received-val ((m <SteeringMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atv_can-msg:time_received-val is deprecated.  Use atv_can-msg:time_received instead.")
  (time_received m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SteeringMeasurement>) ostream)
  "Serializes a message object of type '<SteeringMeasurement>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'encoder_position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'encoder_position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'encoder_position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'encoder_position)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time_received)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time_received) (cl:floor (cl:slot-value msg 'time_received)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SteeringMeasurement>) istream)
  "Deserializes a message object of type '<SteeringMeasurement>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'encoder_position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'encoder_position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'encoder_position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'encoder_position)) (cl:read-byte istream))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_received) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SteeringMeasurement>)))
  "Returns string type for a message object of type '<SteeringMeasurement>"
  "atv_can/SteeringMeasurement")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SteeringMeasurement)))
  "Returns string type for a message object of type 'SteeringMeasurement"
  "atv_can/SteeringMeasurement")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SteeringMeasurement>)))
  "Returns md5sum for a message object of type '<SteeringMeasurement>"
  "1ea82a2a633f2b7c6b3360bca5c4c3ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SteeringMeasurement)))
  "Returns md5sum for a message object of type 'SteeringMeasurement"
  "1ea82a2a633f2b7c6b3360bca5c4c3ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SteeringMeasurement>)))
  "Returns full string definition for message of type '<SteeringMeasurement>"
  (cl:format cl:nil "uint32 encoder_position~%time time_received~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SteeringMeasurement)))
  "Returns full string definition for message of type 'SteeringMeasurement"
  (cl:format cl:nil "uint32 encoder_position~%time time_received~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SteeringMeasurement>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SteeringMeasurement>))
  "Converts a ROS message object to a list"
  (cl:list 'SteeringMeasurement
    (cl:cons ':encoder_position (encoder_position msg))
    (cl:cons ':time_received (time_received msg))
))
