;; Auto-generated. Do not edit!


(when (boundp 'atv_can::SteeringMeasurement)
  (if (not (find-package "ATV_CAN"))
    (make-package "ATV_CAN"))
  (shadow 'SteeringMeasurement (find-package "ATV_CAN")))
(unless (find-package "ATV_CAN::STEERINGMEASUREMENT")
  (make-package "ATV_CAN::STEERINGMEASUREMENT"))

(in-package "ROS")
;;//! \htmlinclude SteeringMeasurement.msg.html


(defclass atv_can::SteeringMeasurement
  :super ros::object
  :slots (_encoder_position _time_received ))

(defmethod atv_can::SteeringMeasurement
  (:init
   (&key
    ((:encoder_position __encoder_position) 0)
    ((:time_received __time_received) (instance ros::time :init))
    )
   (send-super :init)
   (setq _encoder_position (round __encoder_position))
   (setq _time_received __time_received)
   self)
  (:encoder_position
   (&optional __encoder_position)
   (if __encoder_position (setq _encoder_position __encoder_position)) _encoder_position)
  (:time_received
   (&optional __time_received)
   (if __time_received (setq _time_received __time_received)) _time_received)
  (:serialization-length
   ()
   (+
    ;; uint32 _encoder_position
    4
    ;; time _time_received
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _encoder_position
       (write-long _encoder_position s)
     ;; time _time_received
       (write-long (send _time_received :sec) s) (write-long (send _time_received :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _encoder_position
     (setq _encoder_position (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _time_received
     (send _time_received :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_received :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get atv_can::SteeringMeasurement :md5sum-) "1ea82a2a633f2b7c6b3360bca5c4c3ea")
(setf (get atv_can::SteeringMeasurement :datatype-) "atv_can/SteeringMeasurement")
(setf (get atv_can::SteeringMeasurement :definition-)
      "uint32 encoder_position
time time_received

")



(provide :atv_can/SteeringMeasurement "1ea82a2a633f2b7c6b3360bca5c4c3ea")


