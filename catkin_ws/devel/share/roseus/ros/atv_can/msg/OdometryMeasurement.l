;; Auto-generated. Do not edit!


(when (boundp 'atv_can::OdometryMeasurement)
  (if (not (find-package "ATV_CAN"))
    (make-package "ATV_CAN"))
  (shadow 'OdometryMeasurement (find-package "ATV_CAN")))
(unless (find-package "ATV_CAN::ODOMETRYMEASUREMENT")
  (make-package "ATV_CAN::ODOMETRYMEASUREMENT"))

(in-package "ROS")
;;//! \htmlinclude OdometryMeasurement.msg.html


(defclass atv_can::OdometryMeasurement
  :super ros::object
  :slots (_front_left _front_right _rear_left _rear_right _time_received ))

(defmethod atv_can::OdometryMeasurement
  (:init
   (&key
    ((:front_left __front_left) 0)
    ((:front_right __front_right) 0)
    ((:rear_left __rear_left) 0)
    ((:rear_right __rear_right) 0)
    ((:time_received __time_received) (instance ros::time :init))
    )
   (send-super :init)
   (setq _front_left (round __front_left))
   (setq _front_right (round __front_right))
   (setq _rear_left (round __rear_left))
   (setq _rear_right (round __rear_right))
   (setq _time_received __time_received)
   self)
  (:front_left
   (&optional __front_left)
   (if __front_left (setq _front_left __front_left)) _front_left)
  (:front_right
   (&optional __front_right)
   (if __front_right (setq _front_right __front_right)) _front_right)
  (:rear_left
   (&optional __rear_left)
   (if __rear_left (setq _rear_left __rear_left)) _rear_left)
  (:rear_right
   (&optional __rear_right)
   (if __rear_right (setq _rear_right __rear_right)) _rear_right)
  (:time_received
   (&optional __time_received)
   (if __time_received (setq _time_received __time_received)) _time_received)
  (:serialization-length
   ()
   (+
    ;; int16 _front_left
    2
    ;; int16 _front_right
    2
    ;; int16 _rear_left
    2
    ;; int16 _rear_right
    2
    ;; time _time_received
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _front_left
       (write-word _front_left s)
     ;; int16 _front_right
       (write-word _front_right s)
     ;; int16 _rear_left
       (write-word _rear_left s)
     ;; int16 _rear_right
       (write-word _rear_right s)
     ;; time _time_received
       (write-long (send _time_received :sec) s) (write-long (send _time_received :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _front_left
     (setq _front_left (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _front_right
     (setq _front_right (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _rear_left
     (setq _rear_left (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _rear_right
     (setq _rear_right (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; time _time_received
     (send _time_received :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_received :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get atv_can::OdometryMeasurement :md5sum-) "ee02656794889f6c998dfdb92a35704d")
(setf (get atv_can::OdometryMeasurement :datatype-) "atv_can/OdometryMeasurement")
(setf (get atv_can::OdometryMeasurement :definition-)
      "int16 front_left
int16 front_right
int16 rear_left
int16 rear_right
time time_received

")



(provide :atv_can/OdometryMeasurement "ee02656794889f6c998dfdb92a35704d")


