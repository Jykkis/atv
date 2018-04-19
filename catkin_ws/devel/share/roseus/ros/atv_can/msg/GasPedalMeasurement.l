;; Auto-generated. Do not edit!


(when (boundp 'atv_can::GasPedalMeasurement)
  (if (not (find-package "ATV_CAN"))
    (make-package "ATV_CAN"))
  (shadow 'GasPedalMeasurement (find-package "ATV_CAN")))
(unless (find-package "ATV_CAN::GASPEDALMEASUREMENT")
  (make-package "ATV_CAN::GASPEDALMEASUREMENT"))

(in-package "ROS")
;;//! \htmlinclude GasPedalMeasurement.msg.html


(defclass atv_can::GasPedalMeasurement
  :super ros::object
  :slots (_pwm_ratio1 _pwm_ratio2 _time_received ))

(defmethod atv_can::GasPedalMeasurement
  (:init
   (&key
    ((:pwm_ratio1 __pwm_ratio1) 0)
    ((:pwm_ratio2 __pwm_ratio2) 0)
    ((:time_received __time_received) (instance ros::time :init))
    )
   (send-super :init)
   (setq _pwm_ratio1 (round __pwm_ratio1))
   (setq _pwm_ratio2 (round __pwm_ratio2))
   (setq _time_received __time_received)
   self)
  (:pwm_ratio1
   (&optional __pwm_ratio1)
   (if __pwm_ratio1 (setq _pwm_ratio1 __pwm_ratio1)) _pwm_ratio1)
  (:pwm_ratio2
   (&optional __pwm_ratio2)
   (if __pwm_ratio2 (setq _pwm_ratio2 __pwm_ratio2)) _pwm_ratio2)
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
   ;; time _time_received
     (send _time_received :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_received :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get atv_can::GasPedalMeasurement :md5sum-) "7369c5a20168a0f2c22c2ccc70f4a391")
(setf (get atv_can::GasPedalMeasurement :datatype-) "atv_can/GasPedalMeasurement")
(setf (get atv_can::GasPedalMeasurement :definition-)
      "uint16 pwm_ratio1
uint16 pwm_ratio2
time time_received

")



(provide :atv_can/GasPedalMeasurement "7369c5a20168a0f2c22c2ccc70f4a391")


