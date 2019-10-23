
(cl:in-package :asdf)

(defsystem "cpp_api-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "UserData" :depends-on ("_package_UserData"))
    (:file "_package_UserData" :depends-on ("_package"))
  ))