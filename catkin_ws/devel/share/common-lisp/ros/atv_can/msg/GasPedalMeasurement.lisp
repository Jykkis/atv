; Auto-generated. Do not edit!


(cl:in-package atv_can-msg)


;//! \htmlinclude GasPedalMeasurement.msg.html

(cl:defclass <GasPedalMeasurement> (roslisp-msg-protocol:ros-message)
  ((pwm_ratio1
    :reader pwm_ratio1
    :initarg :pwm_ratio1
    :type cl:fixnum
    :initform 0)
   (pwm_ratio2
    :reader pwm_ratio2
    :initarg :pwm_ratio2
    :type cl:fixnum
    :initform 0)
   (time_received
    :reader time_received
    :initarg :time_received
    :type cl:real
    :initform 0))
)

(cl:defclass GasPedalMeasurement (<GasPedalMeasurement>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GasPedalMeasurement>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GasPedalMeasurement)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atv_can-msg:<GasPedalMeasurement> is deprecated: use atv_can-msg:GasPedalMeasurement instead.")))

(cl:ensure-generic-function 'pwm_ratio1-val :lambda-list '(m))
(cl:defmethod pwm_ratio1-val ((m <GasPedalMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atv_can-msg:pwm_ratio1-val is deprecated.  Use atv_can-msg:pwm_ratio1 instead.")
  (pwm_ratio1 m))

(cl:ensure-generic-function 'pwm_ratio2-val :lambda-list '(m))
(cl:defmethod pwm_ratio2-val ((m <GasPedalMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atv_can-msg:pwm_ratio2-val is deprecated.  Use atv_can-msg:pwm_ratio2 instead.")
  (pwm_ratio2 m))

(cl:ensure-generic-function 'time_received-val :lambda-list '(m))
(cl:defmethod time_received-val ((m <GasPedalMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atv_can-msg:time_received-val is deprecated.  Use atv_can-msg:time_received instead.")
  (time_received m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GasPedalMeasurement>) ostream)
  "Serializes a message object of type '<GasPedalMeasurement>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_ratio1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_ratio1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_ratio2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_ratio2)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GasPedalMeasurement>) istream)
  "Deserializes a message object of type '<GasPedalMeasurement>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_ratio1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_ratio1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_ratio2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_ratio2)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GasPedalMeasurement>)))
  "Returns string type for a message object of type '<GasPedalMeasurement>"
  "atv_can/GasPedalMeasurement")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GasPedalMeasurement)))
  "Returns string type for a message object of type 'GasPedalMeasurement"
  "atv_can/GasPedalMeasurement")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GasPedalMeasurement>)))
  "Returns md5sum for a message object of type '<GasPedalMeasurement>"
  "7369c5a20168a0f2c22c2ccc70f4a391")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GasPedalMeasurement)))
  "Returns md5sum for a message object of type 'GasPedalMeasurement"
  "7369c5a20168a0f2c22c2ccc70f4a391")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GasPedalMeasurement>)))
  "Returns full string definition for message of type '<GasPedalMeasurement>"
  (cl:format cl:nil "uint16 pwm_ratio1~%uint16 pwm_ratio2~%time time_received~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GasPedalMeasurement)))
  "Returns full string definition for message of type 'GasPedalMeasurement"
  (cl:format cl:nil "uint16 pwm_ratio1~%uint16 pwm_ratio2~%time time_received~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GasPedalMeasurement>))
  (cl:+ 0
     2
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GasPedalMeasurement>))
  "Converts a ROS message object to a list"
  (cl:list 'GasPedalMeasurement
    (cl:cons ':pwm_ratio1 (pwm_ratio1 msg))
    (cl:cons ':pwm_ratio2 (pwm_ratio2 msg))
    (cl:cons ':time_received (time_received msg))
))
