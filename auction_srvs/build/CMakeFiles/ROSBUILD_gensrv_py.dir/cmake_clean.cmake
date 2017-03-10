FILE(REMOVE_RECURSE
  "../srv_gen"
  "../src/auction_srvs/srv"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_py"
  "../src/auction_srvs/srv/__init__.py"
  "../src/auction_srvs/srv/_BuyerService.py"
  "../src/auction_srvs/srv/_AuctioneerService.py"
  "../src/auction_srvs/srv/_AuctionService.py"
  "../src/auction_srvs/srv/_BuyerForwardBidService.py"
  "../src/auction_srvs/srv/_AuctioneerBidReceptionService.py"
  "../src/auction_srvs/srv/_AuctionConfigService.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
