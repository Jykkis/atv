; Auto-generated. Do not edit!


(cl:in-package atv_can-msg)


;//! \htmlinclude OdometryMeasurement.msg.html

(cl:defclass <OdometryMeasurement> (roslisp-msg-protocol:ros-message)
  ((front_left
    :reader front_left
    :initarg :front_left
    :type cl:fixnum
    :initform 0)
   (front_right
    :reader front_right
    :initarg :front_right
    :type cl:fixnum
    :initform 0)
   (rear_left
    :reader rear_left
    :initarg :rear_left
    :type cl:fixnum
    :initform 0)
   (rear_right
    :reader rear_right
    :initarg :rear_right
    :type cl:fixnum
    :initform 0)
   (time_received
    :reader time_received
    :initarg :time_received
    :type cl:real
    :initform 0))
)

(cl:defclass OdometryMeasurement (<OdometryMeasurement>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OdometryMeasurement>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OdometryMeasurement)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atv_can-msg:<OdometryMeasurement> is deprecated: use atv_can-msg:OdometryMeasurement instead.")))

(cl:ensure-generic-function 'front_left-val :lambda-list '(m))
(cl:defmethod front_left-val ((m <OdometryMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atv_can-msg:front_left-val is deprecated.  Use atv_can-msg:front_left instead.")
  (front_left m))

(cl:ensure-generic-function 'front_right-val :lambda-list '(m))
(cl:defmethod front_right-val ((m <OdometryMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atv_can-msg:front_right-val is deprecated.  Use atv_can-msg:front_right instead.")
  (front_right m))

(cl:ensure-generic-function 'rear_left-val :lambda-list '(m))
(cl:defmethod rear_left-val ((m <OdometryMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atv_can-msg:rear_left-val is deprecated.  Use atv_can-msg:rear_left instead.")
  (rear_left m))

(cl:ensure-generic-function 'rear_right-val :lambda-list '(m))
(cl:defmethod rear_right-val ((m <OdometryMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atv_can-msg:rear_right-val is deprecated.  Use atv_can-msg:rear_right instead.")
  (rear_right m))

(cl:ensure-generic-function 'time_received-val :lambda-list '(m))
(cl:defmethod time_received-val ((m <OdometryMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atv_can-msg:time_received-val is deprecated.  Use atv_can-msg:time_received instead.")
  (time_received m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OdometryMeasurement>) ostream)
  "Serializes a message object of type '<OdometryMeasurement>"
  (cl:let* ((signed (cl:slot-value msg 'front_left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'front_right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rear_left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rear_right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OdometryMeasurement>) istream)
  "Deserializes a message object of type '<OdometryMeasurement>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'front_left) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'front_right) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rear_left) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rear_right) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OdometryMeasurement>)))
  "Returns string type for a message object of type '<OdometryMeasurement>"
  "atv_can/OdometryMeasurement")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OdometryMeasurement)))
  "Returns string type for a message object of type 'OdometryMeasurement"
  "atv_can/OdometryMeasurement")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OdometryMeasurement>)))
  "Returns md5sum for a message object of type '<OdometryMeasurement>"
  "ee02656794889f6c998dfdb92a35704d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OdometryMeasurement)))
  "Returns md5sum for a message object of type 'OdometryMeasurement"
  "ee02656794889f6c998dfdb92a35704d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OdometryMeasurement>)))
  "Returns full string definition for message of type '<OdometryMeasurement>"
  (cl:format cl:nil "int16 front_left~%int16 front_right~%int16 rear_left~%int16 rear_right~%time time_received~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OdometryMeasurement)))
  "Returns full string definition for message of type 'OdometryMeasurement"
  (cl:format cl:nil "int16 front_left~%int16 front_right~%int16 rear_left~%int16 rear_right~%time time_received~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OdometryMeasurement>))
  (cl:+ 0
     2
     2
     2
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OdometryMeasurement>))
  "Converts a ROS message object to a list"
  (cl:list 'OdometryMeasurement
    (cl:cons ':front_left (front_left msg))
    (cl:cons ':front_right (front_right msg))
    (cl:cons ':rear_left (rear_left msg))
    (cl:cons ':rear_right (rear_right msg))
    (cl:cons ':time_received (time_received msg))
))
