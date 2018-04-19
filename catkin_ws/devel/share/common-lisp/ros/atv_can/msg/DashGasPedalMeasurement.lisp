; Auto-generated. Do not edit!


(cl:in-package atv_can-msg)


;//! \htmlinclude DashGasPedalMeasurement.msg.html

(cl:defclass <DashGasPedalMeasurement> (roslisp-msg-protocol:ros-message)
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
   (gear_ratio
    :reader gear_ratio
    :initarg :gear_ratio
    :type cl:fixnum
    :initform 0)
   (all_wheel_drive
    :reader all_wheel_drive
    :initarg :all_wheel_drive
    :type cl:fixnum
    :initform 0)
   (time_received
    :reader time_received
    :initarg :time_received
    :type cl:real
    :initform 0))
)

(cl:defclass DashGasPedalMeasurement (<DashGasPedalMeasurement>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DashGasPedalMeasurement>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DashGasPedalMeasurement)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atv_can-msg:<DashGasPedalMeasurement> is deprecated: use atv_can-msg:DashGasPedalMeasurement instead.")))

(cl:ensure-generic-function 'pwm_ratio1-val :lambda-list '(m))
(cl:defmethod pwm_ratio1-val ((m <DashGasPedalMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atv_can-msg:pwm_ratio1-val is deprecated.  Use atv_can-msg:pwm_ratio1 instead.")
  (pwm_ratio1 m))

(cl:ensure-generic-function 'pwm_ratio2-val :lambda-list '(m))
(cl:defmethod pwm_ratio2-val ((m <DashGasPedalMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atv_can-msg:pwm_ratio2-val is deprecated.  Use atv_can-msg:pwm_ratio2 instead.")
  (pwm_ratio2 m))

(cl:ensure-generic-function 'gear_ratio-val :lambda-list '(m))
(cl:defmethod gear_ratio-val ((m <DashGasPedalMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atv_can-msg:gear_ratio-val is deprecated.  Use atv_can-msg:gear_ratio instead.")
  (gear_ratio m))

(cl:ensure-generic-function 'all_wheel_drive-val :lambda-list '(m))
(cl:defmethod all_wheel_drive-val ((m <DashGasPedalMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atv_can-msg:all_wheel_drive-val is deprecated.  Use atv_can-msg:all_wheel_drive instead.")
  (all_wheel_drive m))

(cl:ensure-generic-function 'time_received-val :lambda-list '(m))
(cl:defmethod time_received-val ((m <DashGasPedalMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atv_can-msg:time_received-val is deprecated.  Use atv_can-msg:time_received instead.")
  (time_received m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DashGasPedalMeasurement>) ostream)
  "Serializes a message object of type '<DashGasPedalMeasurement>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_ratio1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_ratio1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_ratio2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_ratio2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_ratio)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'all_wheel_drive)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DashGasPedalMeasurement>) istream)
  "Deserializes a message object of type '<DashGasPedalMeasurement>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_ratio1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_ratio1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_ratio2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_ratio2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_ratio)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'all_wheel_drive)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DashGasPedalMeasurement>)))
  "Returns string type for a message object of type '<DashGasPedalMeasurement>"
  "atv_can/DashGasPedalMeasurement")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DashGasPedalMeasurement)))
  "Returns string type for a message object of type 'DashGasPedalMeasurement"
  "atv_can/DashGasPedalMeasurement")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DashGasPedalMeasurement>)))
  "Returns md5sum for a message object of type '<DashGasPedalMeasurement>"
  "4521633b3b1d64a460b4dfd592c4c89e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DashGasPedalMeasurement)))
  "Returns md5sum for a message object of type 'DashGasPedalMeasurement"
  "4521633b3b1d64a460b4dfd592c4c89e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DashGasPedalMeasurement>)))
  "Returns full string definition for message of type '<DashGasPedalMeasurement>"
  (cl:format cl:nil "uint16 pwm_ratio1~%uint16 pwm_ratio2~%uint8  gear_ratio~%uint8  all_wheel_drive~%time   time_received~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DashGasPedalMeasurement)))
  "Returns full string definition for message of type 'DashGasPedalMeasurement"
  (cl:format cl:nil "uint16 pwm_ratio1~%uint16 pwm_ratio2~%uint8  gear_ratio~%uint8  all_wheel_drive~%time   time_received~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DashGasPedalMeasurement>))
  (cl:+ 0
     2
     2
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DashGasPedalMeasurement>))
  "Converts a ROS message object to a list"
  (cl:list 'DashGasPedalMeasurement
    (cl:cons ':pwm_ratio1 (pwm_ratio1 msg))
    (cl:cons ':pwm_ratio2 (pwm_ratio2 msg))
    (cl:cons ':gear_ratio (gear_ratio msg))
    (cl:cons ':all_wheel_drive (all_wheel_drive msg))
    (cl:cons ':time_received (time_received msg))
))
