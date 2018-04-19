;; Auto-generated. Do not edit!


(when (boundp 'atv_can::DashGasPedalMeasurement)
  (if (not (find-package "ATV_CAN"))
    (make-package "ATV_CAN"))
  (shadow 'DashGasPedalMeasurement (find-package "ATV_CAN")))
(unless (find-package "ATV_CAN::DASHGASPEDALMEASUREMENT")
  (make-package "ATV_CAN::DASHGASPEDALMEASUREMENT"))

(in-package "ROS")
;;//! \htmlinclude DashGasPedalMeasurement.msg.html


(defclass atv_can::DashGasPedalMeasurement
  :super ros::object
  :slots (_pwm_ratio1 _pwm_ratio2 _gear_ratio _all_wheel_drive _time_received ))

(defmethod atv_can::DashGasPedalMeasurement
  (:init
   (&key
    ((:pwm_ratio1 __pwm_ratio1) 0)
    ((:pwm_ratio2 __pwm_ratio2) 0)
    ((:gear_ratio __gear_ratio) 0)
    ((:all_wheel_drive __all_wheel_drive) 0)
    ((:time_received __time_received) (instance ros::time :init))
    )
   (send-super :init)
   (setq _pwm_ratio1 (round __pwm_ratio1))
   (setq _pwm_ratio2 (round __pwm_ratio2))
   (setq _gear_ratio (round __gear_ratio))
   (setq _all_wheel_drive (round __all_wheel_drive))
   (setq _time_received __time_received)
   self)
  (:pwm_ratio1
   (&optional __pwm_ratio1)
   (if __pwm_ratio1 (setq _pwm_ratio1 __pwm_ratio1)) _pwm_ratio1)
  (:pwm_ratio2
   (&optional __pwm_ratio2)
   (if __pwm_ratio2 (setq _pwm_ratio2 __pwm_ratio2)) _pwm_ratio2)
  (:gear_ratio
   (&optional __gear_ratio)
   (if __gear_ratio (setq _gear_ratio __gear_ratio)) _gear_ratio)
  (:all_wheel_drive
   (&optional __all_wheel_drive)
   (if __all_wheel_drive (setq _all_wheel_drive __all_wheel_drive)) _all_wheel_drive)
  (:time_received
   (&optional __time_received)
   (if __time_received (setq _time_received __time_received)) _time_received)
  (:serialization-length
   ()
   (+
    ;; uint16 _pwm_ratio1
    2
    ;; uint16 _pwm_ratio2
    2
    ;; uint8 _gear_ratio
    1
    ;; uint8 _all_wheel_drive
    1
    ;; time _time_received
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _pwm_ratio1
       (write-word _pwm_ratio1 s)
     ;; uint16 _pwm_ratio2
       (write-word _pwm_ratio2 s)
     ;; uint8 _gear_ratio
       (write-byte _gear_ratio s)
     ;; uint8 _all_wheel_drive
       (write-byte _all_wheel_drive s)
     ;; time _time_received
       (write-long (send _time_received :sec) s) (write-long (send _time_received :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _pwm_ratio1
     (setq _pwm_ratio1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _pwm_ratio2
     (setq _pwm_ratio2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _gear_ratio
     (setq _gear_ratio (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _all_wheel_drive
     (setq _all_wheel_drive (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; time _time_received
     (send _time_received :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_received :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get atv_can::DashGasPedalMeasurement :md5sum-) "4521633b3b1d64a460b4dfd592c4c89e")
(setf (get atv_can::DashGasPedalMeasurement :datatype-) "atv_can/DashGasPedalMeasurement")
(setf (get atv_can::DashGasPedalMeasurement :definition-)
      "uint16 pwm_ratio1
uint16 pwm_ratio2
uint8  gear_ratio
uint8  all_wheel_drive
time   time_received

")



(provide :atv_can/DashGasPedalMeasurement "4521633b3b1d64a460b4dfd592c4c89e")


