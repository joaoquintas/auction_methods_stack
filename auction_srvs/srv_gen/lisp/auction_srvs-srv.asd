
(cl:in-package :asdf)

(defsystem "auction_srvs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :auction_msgs-msg
)
  :components ((:file "_package")
    (:file "BuyerService" :depends-on ("_package_BuyerService"))
    (:file "_package_BuyerService" :depends-on ("_package"))
    (:file "AuctioneerService" :depends-on ("_package_AuctioneerService"))
    (:file "_package_AuctioneerService" :depends-on ("_package"))
    (:file "AuctionService" :depends-on ("_package_AuctionService"))
    (:file "_package_AuctionService" :depends-on ("_package"))
    (:file "BuyerForwardBidService" :depends-on ("_package_BuyerForwardBidService"))
    (:file "_package_BuyerForwardBidService" :depends-on ("_package"))
    (:file "AuctioneerBidReceptionService" :depends-on ("_package_AuctioneerBidReceptionService"))
    (:file "_package_AuctioneerBidReceptionService" :depends-on ("_package"))
    (:file "AuctionConfigService" :depends-on ("_package_AuctionConfigService"))
    (:file "_package_AuctionConfigService" :depends-on ("_package"))
  ))