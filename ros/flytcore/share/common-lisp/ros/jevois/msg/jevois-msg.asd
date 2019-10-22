
(cl:in-package :asdf)

(defsystem "jevois-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ArTag" :depends-on ("_package_ArTag"))
    (:file "_package_ArTag" :depends-on ("_package"))
    (:file "ArTagList" :depends-on ("_package_ArTagList"))
    (:file "_package_ArTagList" :depends-on ("_package"))
  ))