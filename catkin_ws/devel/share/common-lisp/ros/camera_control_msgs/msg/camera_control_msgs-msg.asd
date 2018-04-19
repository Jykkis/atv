
(cl:in-package :asdf)

(defsystem "camera_control_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GrabHDRImageFeedback" :depends-on ("_package_GrabHDRImageFeedback"))
    (:file "_package_GrabHDRImageFeedback" :depends-on ("_package"))
    (:file "GrabAndSaveImageResult" :depends-on ("_package_GrabAndSaveImageResult"))
    (:file "_package_GrabAndSaveImageResult" :depends-on ("_package"))
    (:file "GrabImagesFeedback" :depends-on ("_package_GrabImagesFeedback"))
    (:file "_package_GrabImagesFeedback" :depends-on ("_package"))
    (:file "GrabAndSaveImageGoal" :depends-on ("_package_GrabAndSaveImageGoal"))
    (:file "_package_GrabAndSaveImageGoal" :depends-on ("_package"))
    (:file "GrabHDRImageResult" :depends-on ("_package_GrabHDRImageResult"))
    (:file "_package_GrabHDRImageResult" :depends-on ("_package"))
    (:file "GrabAndSaveImageActionResult" :depends-on ("_package_GrabAndSaveImageActionResult"))
    (:file "_package_GrabAndSaveImageActionResult" :depends-on ("_package"))
    (:file "GrabAndSaveImageFeedback" :depends-on ("_package_GrabAndSaveImageFeedback"))
    (:file "_package_GrabAndSaveImageFeedback" :depends-on ("_package"))
    (:file "GrabAndSaveImageActionGoal" :depends-on ("_package_GrabAndSaveImageActionGoal"))
    (:file "_package_GrabAndSaveImageActionGoal" :depends-on ("_package"))
    (:file "GrabImagesActionGoal" :depends-on ("_package_GrabImagesActionGoal"))
    (:file "_package_GrabImagesActionGoal" :depends-on ("_package"))
    (:file "GrabHDRImageActionFeedback" :depends-on ("_package_GrabHDRImageActionFeedback"))
    (:file "_package_GrabHDRImageActionFeedback" :depends-on ("_package"))
    (:file "GrabImagesActionResult" :depends-on ("_package_GrabImagesActionResult"))
    (:file "_package_GrabImagesActionResult" :depends-on ("_package"))
    (:file "GrabAndSaveImageAction" :depends-on ("_package_GrabAndSaveImageAction"))
    (:file "_package_GrabAndSaveImageAction" :depends-on ("_package"))
    (:file "GrabHDRImageAction" :depends-on ("_package_GrabHDRImageAction"))
    (:file "_package_GrabHDRImageAction" :depends-on ("_package"))
    (:file "GrabAndSaveImageActionFeedback" :depends-on ("_package_GrabAndSaveImageActionFeedback"))
    (:file "_package_GrabAndSaveImageActionFeedback" :depends-on ("_package"))
    (:file "GrabImagesActionFeedback" :depends-on ("_package_GrabImagesActionFeedback"))
    (:file "_package_GrabImagesActionFeedback" :depends-on ("_package"))
    (:file "GrabHDRImageGoal" :depends-on ("_package_GrabHDRImageGoal"))
    (:file "_package_GrabHDRImageGoal" :depends-on ("_package"))
    (:file "GrabHDRImageActionResult" :depends-on ("_package_GrabHDRImageActionResult"))
    (:file "_package_GrabHDRImageActionResult" :depends-on ("_package"))
    (:file "GrabImagesAction" :depends-on ("_package_GrabImagesAction"))
    (:file "_package_GrabImagesAction" :depends-on ("_package"))
    (:file "GrabHDRImageActionGoal" :depends-on ("_package_GrabHDRImageActionGoal"))
    (:file "_package_GrabHDRImageActionGoal" :depends-on ("_package"))
    (:file "GrabImagesGoal" :depends-on ("_package_GrabImagesGoal"))
    (:file "_package_GrabImagesGoal" :depends-on ("_package"))
    (:file "GrabImagesResult" :depends-on ("_package_GrabImagesResult"))
    (:file "_package_GrabImagesResult" :depends-on ("_package"))
  ))