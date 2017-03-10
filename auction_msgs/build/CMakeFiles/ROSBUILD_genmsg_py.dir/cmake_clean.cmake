FILE(REMOVE_RECURSE
  "../msg_gen"
  "../src/auction_msgs/msg"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/auction_msgs/msg/__init__.py"
  "../src/auction_msgs/msg/_Bid.py"
  "../src/auction_msgs/msg/_Auction.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
