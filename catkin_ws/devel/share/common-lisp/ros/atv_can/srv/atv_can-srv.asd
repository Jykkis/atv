
(cl:in-package :asdf)

(defsystem "atv_can-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DriveService" :depends-on ("_package_DriveService"))
    (:file "_package_DriveService" :depends-on ("_package"))
  ))