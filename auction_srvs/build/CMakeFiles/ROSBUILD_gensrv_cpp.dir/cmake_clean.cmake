FILE(REMOVE_RECURSE
  "../srv_gen"
  "../src/auction_srvs/srv"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_cpp"
  "../srv_gen/cpp/include/auction_srvs/BuyerService.h"
  "../srv_gen/cpp/include/auction_srvs/AuctioneerService.h"
  "../srv_gen/cpp/include/auction_srvs/AuctionService.h"
  "../srv_gen/cpp/include/auction_srvs/BuyerForwardBidService.h"
  "../srv_gen/cpp/include/auction_srvs/AuctioneerBidReceptionService.h"
  "../srv_gen/cpp/include/auction_srvs/AuctionConfigService.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
