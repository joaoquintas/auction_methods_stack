FILE(REMOVE_RECURSE
  "../srv_gen"
  "../src/auction_srvs/srv"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_lisp"
  "../srv_gen/lisp/BuyerService.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_BuyerService.lisp"
  "../srv_gen/lisp/AuctioneerService.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_AuctioneerService.lisp"
  "../srv_gen/lisp/AuctionService.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_AuctionService.lisp"
  "../srv_gen/lisp/BuyerForwardBidService.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_BuyerForwardBidService.lisp"
  "../srv_gen/lisp/AuctioneerBidReceptionService.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_AuctioneerBidReceptionService.lisp"
  "../srv_gen/lisp/AuctionConfigService.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_AuctionConfigService.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
