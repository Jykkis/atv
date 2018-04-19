
(cl:in-package :asdf)

(defsystem "atv_can-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "OdometryMeasurement" :depends-on ("_package_OdometryMeasurement"))
    (:file "_package_OdometryMeasurement" :depends-on ("_package"))
    (:file "DashGasPedalMeasurement" :depends-on ("_package_DashGasPedalMeasurement"))
    (:file "_package_DashGasPedalMeasurement" :depends-on ("_package"))
    (:file "SteeringMeasurement" :depends-on ("_package_SteeringMeasurement"))
    (:file "_package_SteeringMeasurement" :depends-on ("_package"))
  ))