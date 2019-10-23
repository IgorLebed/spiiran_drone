
(cl:in-package :asdf)

(defsystem "jevois-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "WriteData" :depends-on ("_package_WriteData"))
    (:file "_package_WriteData" :depends-on ("_package"))
  ))