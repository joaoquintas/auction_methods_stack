
(cl:in-package :asdf)

(defsystem "auction_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Bid" :depends-on ("_package_Bid"))
    (:file "_package_Bid" :depends-on ("_package"))
    (:file "Auction" :depends-on ("_package_Auction"))
    (:file "_package_Auction" :depends-on ("_package"))
  ))