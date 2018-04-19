; Auto-generated. Do not edit!


(cl:in-package atv_can-srv)


;//! \htmlinclude DriveService-request.msg.html

(cl:defclass <DriveService-request> (roslisp-msg-protocol:ros-message)
  ((motor_control
    :reader motor_control
    :initarg :motor_control
    :type cl:fixnum
    :initform 0)
   (turning_radius
    :reader turning_radius
    :initarg :turning_radius
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
   (control_mode
    :reader control_mode
    :initarg :control_mode
    :type cl:boolean
    :initform cl:nil)
   (direction
    :reader direction
    :initarg :direction
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DriveService-request (<DriveService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriveService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriveService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atv_can-srv:<DriveService-request> is deprecated: use atv_can-srv:DriveService-request instead.")))

(cl:ensure-generic-function 'motor_control-val :lambda-list '(m))
(cl:defmethod motor_control-val ((m <DriveService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atv_can-srv:motor_control-val is deprecated.  Use atv_can-srv:motor_control instead.")
  (motor_control m))

(cl:ensure-generic-function 'turning_radius-val :lambda-list '(m))
(cl:defmethod turning_radius-val ((m <DriveService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atv_can-srv:turning_radius-val is deprecated.  Use atv_can-srv:turning_radius instead.")
  (turning_radius m))

(cl:ensure-generic-function 'gear_ratio-val :lambda-list '(m))
(cl:defmethod gear_ratio-val ((m <DriveService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atv_can-srv:gear_ratio-val is deprecated.  Use atv_can-srv:gear_ratio instead.")
  (gear_ratio m))

(cl:ensure-generic-function 'all_wheel_drive-val :lambda-list '(m))
(cl:defmethod all_wheel_drive-val ((m <DriveService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atv_can-srv:all_wheel_drive-val is deprecated.  Use atv_can-srv:all_wheel_drive instead.")
  (all_wheel_drive m))

(cl:ensure-generic-function 'control_mode-val :lambda-list '(m))
(cl:defmethod control_mode-val ((m <DriveService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atv_can-srv:control_mode-val is deprecated.  Use atv_can-srv:control_mode instead.")
  (control_mode m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <DriveService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atv_can-srv:direction-val is deprecated.  Use atv_can-srv:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriveService-request>) ostream)
  "Serializes a message object of type '<DriveService-request>"
  (cl:let* ((signed (cl:slot-value msg 'motor_control)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'turning_radius)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'turning_radius)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_ratio)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'all_wheel_drive)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'control_mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'direction) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriveService-request>) istream)
  "Deserializes a message object of type '<DriveService-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor_control) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'turning_radius)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'turning_radius)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_ratio)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'all_wheel_drive)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'control_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'direction) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriveService-request>)))
  "Returns string type for a service object of type '<DriveService-request>"
  "atv_can/DriveServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriveService-request)))
  "Returns string type for a service object of type 'DriveService-request"
  "atv_can/DriveServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriveService-request>)))
  "Returns md5sum for a message object of type '<DriveService-request>"
  "c25d42b04dddc79f7f5281624f435ed8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriveService-request)))
  "Returns md5sum for a message object of type 'DriveService-request"
  "c25d42b04dddc79f7f5281624f435ed8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriveService-request>)))
  "Returns full string definition for message of type '<DriveService-request>"
  (cl:format cl:nil "int16 motor_control~%uint16 turning_radius~%uint8 gear_ratio~%uint8 all_wheel_drive~%bool control_mode~%bool direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriveService-request)))
  "Returns full string definition for message of type 'DriveService-request"
  (cl:format cl:nil "int16 motor_control~%uint16 turning_radius~%uint8 gear_ratio~%uint8 all_wheel_drive~%bool control_mode~%bool direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriveService-request>))
  (cl:+ 0
     2
     2
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriveService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DriveService-request
    (cl:cons ':motor_control (motor_control msg))
    (cl:cons ':turning_radius (turning_radius msg))
    (cl:cons ':gear_ratio (gear_ratio msg))
    (cl:cons ':all_wheel_drive (all_wheel_drive msg))
    (cl:cons ':control_mode (control_mode msg))
    (cl:cons ':direction (direction msg))
))
;//! \htmlinclude DriveService-response.msg.html

(cl:defclass <DriveService-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass DriveService-response (<DriveService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriveService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriveService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name atv_can-srv:<DriveService-response> is deprecated: use atv_can-srv:DriveService-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <DriveService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader atv_can-srv:status-val is deprecated.  Use atv_can-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriveService-response>) ostream)
  "Serializes a message object of type '<DriveService-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriveService-response>) istream)
  "Deserializes a message object of type '<DriveService-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriveService-response>)))
  "Returns string type for a service object of type '<DriveService-response>"
  "atv_can/DriveServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriveService-response)))
  "Returns string type for a service object of type 'DriveService-response"
  "atv_can/DriveServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriveService-response>)))
  "Returns md5sum for a message object of type '<DriveService-response>"
  "c25d42b04dddc79f7f5281624f435ed8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriveService-response)))
  "Returns md5sum for a message object of type 'DriveService-response"
  "c25d42b04dddc79f7f5281624f435ed8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriveService-response>)))
  "Returns full string definition for message of type '<DriveService-response>"
  (cl:format cl:nil "string status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriveService-response)))
  "Returns full string definition for message of type 'DriveService-response"
  (cl:format cl:nil "string status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriveService-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriveService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DriveService-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DriveService)))
  'DriveService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DriveService)))
  'DriveService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriveService)))
  "Returns string type for a service object of type '<DriveService>"
  "atv_can/DriveService")