
(cl:in-package :asdf)

(defsystem "core_api-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ParamInfo" :depends-on ("_package_ParamInfo"))
    (:file "_package_ParamInfo" :depends-on ("_package"))
    (:file "ParamInfo" :depends-on ("_package_ParamInfo"))
    (:file "_package_ParamInfo" :depends-on ("_package"))
  ))