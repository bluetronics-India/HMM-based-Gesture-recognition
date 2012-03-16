
(cl:in-package :asdf)

(defsystem "g_detector-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Gesture" :depends-on ("_package_Gesture"))
    (:file "_package_Gesture" :depends-on ("_package"))
    (:file "featureVector" :depends-on ("_package_featureVector"))
    (:file "_package_featureVector" :depends-on ("_package"))
  ))