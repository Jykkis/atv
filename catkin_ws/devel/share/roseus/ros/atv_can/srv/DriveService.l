;; Auto-generated. Do not edit!


(when (boundp 'atv_can::DriveService)
  (if (not (find-package "ATV_CAN"))
    (make-package "ATV_CAN"))
  (shadow 'DriveService (find-package "ATV_CAN")))
(unless (find-package "ATV_CAN::DRIVESERVICE")
  (make-package "ATV_CAN::DRIVESERVICE"))
(unless (find-package "ATV_CAN::DRIVESERVICEREQUEST")
  (make-package "ATV_CAN::DRIVESERVICEREQUEST"))
(unless (find-package "ATV_CAN::DRIVESERVICERESPONSE")
  (make-package "ATV_CAN::DRIVESERVICERESPONSE"))

(in-package "ROS")





(defclass atv_can::DriveServiceRequest
  :super ros::object
  :slots (_motor_control _turning_radius _gear_ratio _all_wheel_drive _control_mode _direction ))

(defmethod atv_can::DriveServiceRequest
  (:init
   (&key
    ((:motor_control __motor_control) 0)
    ((:turning_radius __turning_radius) 0)
    ((:gear_ratio __gear_ratio) 0)
    ((:all_wheel_drive __all_wheel_drive) 0)
    ((:control_mode __control_mode) nil)
    ((:direction __direction) nil)
    )
   (send-super :init)
   (setq _motor_control (round __motor_control))
   (setq _turning_radius (round __turning_radius))
   (setq _gear_ratio (round __gear_ratio))
   (setq _all_wheel_drive (round __all_wheel_drive))
   (setq _control_mode __control_mode)
   (setq _direction __direction)
   self)
  (:motor_control
   (&optional __motor_control)
   (if __motor_control (setq _motor_control __motor_control)) _motor_control)
  (:turning_radius
   (&optional __turning_radius)
   (if __turning_radius (setq _turning_radius __turning_radius)) _turning_radius)
  (:gear_ratio
   (&optional __gear_ratio)
   (if __gear_ratio (setq _gear_ratio __gear_ratio)) _gear_ratio)
  (:all_wheel_drive
   (&optional __all_wheel_drive)
   (if __all_wheel_drive (setq _all_wheel_drive __all_wheel_drive)) _all_wheel_drive)
  (:control_mode
   (&optional __control_mode)
   (if __control_mode (setq _control_mode __control_mode)) _control_mode)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; int16 _motor_control
    2
    ;; uint16 _turning_radius
    2
    ;; uint8 _gear_ratio
    1
    ;; uint8 _all_wheel_drive
    1
    ;; bool _control_mode
    1
    ;; bool _direction
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _motor_control
       (write-word _motor_control s)
     ;; uint16 _turning_radius
       (write-word _turning_radius s)
     ;; uint8 _gear_ratio
       (write-byte _gear_ratio s)
     ;; uint8 _all_wheel_drive
       (write-byte _all_wheel_drive s)
     ;; bool _control_mode
       (if _control_mode (write-byte -1 s) (write-byte 0 s))
     ;; bool _direction
       (if _direction (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _motor_control
     (setq _motor_control (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _turning_radius
     (setq _turning_radius (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _gear_ratio
     (setq _gear_ratio (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _all_wheel_drive
     (setq _all_wheel_drive (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _control_mode
     (setq _control_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _direction
     (setq _direction (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass atv_can::DriveServiceResponse
  :super ros::object
  :slots (_status ))

(defmethod atv_can::DriveServiceResponse
  (:init
   (&key
    ((:status __status) "")
    )
   (send-super :init)
   (setq _status (string __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass atv_can::DriveService
  :super ros::object
  :slots ())

(setf (get atv_can::DriveService :md5sum-) "c25d42b04dddc79f7f5281624f435ed8")
(setf (get atv_can::DriveService :datatype-) "atv_can/DriveService")
(setf (get atv_can::DriveService :request) atv_can::DriveServiceRequest)
(setf (get atv_can::DriveService :response) atv_can::DriveServiceResponse)

(defmethod atv_can::DriveServiceRequest
  (:response () (instance atv_can::DriveServiceResponse :init)))

(setf (get atv_can::DriveServiceRequest :md5sum-) "c25d42b04dddc79f7f5281624f435ed8")
(setf (get atv_can::DriveServiceRequest :datatype-) "atv_can/DriveServiceRequest")
(setf (get atv_can::DriveServiceRequest :definition-)
      "int16 motor_control
uint16 turning_radius
uint8 gear_ratio
uint8 all_wheel_drive
bool control_mode
bool direction
---
string status

")

(setf (get atv_can::DriveServiceResponse :md5sum-) "c25d42b04dddc79f7f5281624f435ed8")
(setf (get atv_can::DriveServiceResponse :datatype-) "atv_can/DriveServiceResponse")
(setf (get atv_can::DriveServiceResponse :definition-)
      "int16 motor_control
uint16 turning_radius
uint8 gear_ratio
uint8 all_wheel_drive
bool control_mode
bool direction
---
string status

")



(provide :atv_can/DriveService "c25d42b04dddc79f7f5281624f435ed8")


