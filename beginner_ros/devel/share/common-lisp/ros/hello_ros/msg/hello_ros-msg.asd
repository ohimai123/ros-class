
(cl:in-package :asdf)

(defsystem "hello_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "led_state" :depends-on ("_package_led_state"))
    (:file "_package_led_state" :depends-on ("_package"))
  ))