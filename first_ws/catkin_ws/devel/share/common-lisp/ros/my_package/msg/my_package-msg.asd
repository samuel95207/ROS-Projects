
(cl:in-package :asdf)

(defsystem "my_package-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "my_message_2" :depends-on ("_package_my_message_2"))
    (:file "_package_my_message_2" :depends-on ("_package"))
    (:file "xyzw" :depends-on ("_package_xyzw"))
    (:file "_package_xyzw" :depends-on ("_package"))
  ))