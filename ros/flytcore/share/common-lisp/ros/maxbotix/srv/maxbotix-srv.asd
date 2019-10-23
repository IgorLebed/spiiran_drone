
(cl:in-package :asdf)

(defsystem "maxbotix-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ChangeAddress" :depends-on ("_package_ChangeAddress"))
    (:file "_package_ChangeAddress" :depends-on ("_package"))
  ))