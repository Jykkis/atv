;; Auto-generated. Do not edit!


(when (boundp 'camera_control_msgs::GrabImagesResult)
  (if (not (find-package "CAMERA_CONTROL_MSGS"))
    (make-package "CAMERA_CONTROL_MSGS"))
  (shadow 'GrabImagesResult (find-package "CAMERA_CONTROL_MSGS")))
(unless (find-package "CAMERA_CONTROL_MSGS::GRABIMAGESRESULT")
  (make-package "CAMERA_CONTROL_MSGS::GRABIMAGESRESULT"))

(in-package "ROS")
;;//! \htmlinclude GrabImagesResult.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass camera_control_msgs::GrabImagesResult
  :super ros::object
  :slots (_reached_values _images _reached_exposure_times _reached_brightness_values _reached_gain_values _reached_gamma_values _success ))

(defmethod camera_control_msgs::GrabImagesResult
  (:init
   (&key
    ((:reached_values __reached_values) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:images __images) (let (r) (dotimes (i 0) (push (instance sensor_msgs::Image :init) r)) r))
    ((:reached_exposure_times __reached_exposure_times) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:reached_brightness_values __reached_brightness_values) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:reached_gain_values __reached_gain_values) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:reached_gamma_values __reached_gamma_values) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _reached_values __reached_values)
   (setq _images __images)
   (setq _reached_exposure_times __reached_exposure_times)
   (setq _reached_brightness_values __reached_brightness_values)
   (setq _reached_gain_values __reached_gain_values)
   (setq _reached_gamma_values __reached_gamma_values)
   (setq _success __success)
   self)
  (:reached_values
   (&optional __reached_values)
   (if __reached_values (setq _reached_values __reached_values)) _reached_values)
  (:images
   (&rest __images)
   (if (keywordp (car __images))
       (send* _images __images)
     (progn
       (if __images (setq _images (car __images)))
       _images)))
  (:reached_exposure_times
   (&optional __reached_exposure_times)
   (if __reached_exposure_times (setq _reached_exposure_times __reached_exposure_times)) _reached_exposure_times)
  (:reached_brightness_values
   (&optional __reached_brightness_values)
   (if __reached_brightness_values (setq _reached_brightness_values __reached_brightness_values)) _reached_brightness_values)
  (:reached_gain_values
   (&optional __reached_gain_values)
   (if __reached_gain_values (setq _reached_gain_values __reached_gain_values)) _reached_gain_values)
  (:reached_gamma_values
   (&optional __reached_gamma_values)
   (if __reached_gamma_values (setq _reached_gamma_values __reached_gamma_values)) _reached_gamma_values)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; float32[] _reached_values
    (* 4    (length _reached_values)) 4
    ;; sensor_msgs/Image[] _images
    (apply #'+ (send-all _images :serialization-length)) 4
    ;; float32[] _reached_exposure_times
    (* 4    (length _reached_exposure_times)) 4
    ;; float32[] _reached_brightness_values
    (* 4    (length _reached_brightness_values)) 4
    ;; float32[] _reached_gain_values
    (* 4    (length _reached_gain_values)) 4
    ;; float32[] _reached_gamma_values
    (* 4    (length _reached_gamma_values)) 4
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _reached_values
     (write-long (length _reached_values) s)
     (dotimes (i (length _reached_values))
       (sys::poke (elt _reached_values i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; sensor_msgs/Image[] _images
     (write-long (length _images) s)
     (dolist (elem _images)
       (send elem :serialize s)
       )
     ;; float32[] _reached_exposure_times
     (write-long (length _reached_exposure_times) s)
     (dotimes (i (length _reached_exposure_times))
       (sys::poke (elt _reached_exposure_times i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _reached_brightness_values
     (write-long (length _reached_brightness_values) s)
     (dotimes (i (length _reached_brightness_values))
       (sys::poke (elt _reached_brightness_values i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _reached_gain_values
     (write-long (length _reached_gain_values) s)
     (dotimes (i (length _reached_gain_values))
       (sys::poke (elt _reached_gain_values i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _reached_gamma_values
     (write-long (length _reached_gamma_values) s)
     (dotimes (i (length _reached_gamma_values))
       (sys::poke (elt _reached_gamma_values i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _reached_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reached_values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _reached_values i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; sensor_msgs/Image[] _images
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _images (let (r) (dotimes (i n) (push (instance sensor_msgs::Image :init) r)) r))
     (dolist (elem- _images)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _reached_exposure_times
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reached_exposure_times (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _reached_exposure_times i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _reached_brightness_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reached_brightness_values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _reached_brightness_values i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _reached_gain_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reached_gain_values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _reached_gain_values i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _reached_gamma_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reached_gamma_values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _reached_gamma_values i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get camera_control_msgs::GrabImagesResult :md5sum-) "9064484959c52efa531a9708033fd887")
(setf (get camera_control_msgs::GrabImagesResult :datatype-) "camera_control_msgs/GrabImagesResult")
(setf (get camera_control_msgs::GrabImagesResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
##########################################
################# RESULT #################
##########################################

########################################## DEPRECATED !!!
# target values can not always be reached
float32[] reached_values
########################################## DEPRECATED !!!

# The resulting images with the inquired image intensity settings.
# The size of the vector equals the size of the exposure_times or the
# brightness_values-vector
sensor_msgs/Image[] images

# The reached values of the images e.g. the values that were set to the camera
# before the grab
float32[] reached_exposure_times

float32[] reached_brightness_values

float32[] reached_gain_values

float32[] reached_gamma_values

# Flag which indicates the success of the grabbing action
# In case of failure, the images-vector contains only the images, that could be
# grabbed before the failure occurred.
bool success


================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of cameara
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :camera_control_msgs/GrabImagesResult "9064484959c52efa531a9708033fd887")


