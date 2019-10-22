
(cl:in-package :asdf)

(defsystem "flyt_ms-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DevSrv" :depends-on ("_package_DevSrv"))
    (:file "_package_DevSrv" :depends-on ("_package"))
    (:file "LicChkSrv" :depends-on ("_package_LicChkSrv"))
    (:file "_package_LicChkSrv" :depends-on ("_package"))
    (:file "LicSrv" :depends-on ("_package_LicSrv"))
    (:file "_package_LicSrv" :depends-on ("_package"))
  ))