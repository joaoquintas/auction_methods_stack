FILE(REMOVE_RECURSE
  "../msg_gen"
  "../src/auction_msgs/msg"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_lisp"
  "../msg_gen/lisp/Bid.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_Bid.lisp"
  "../msg_gen/lisp/Auction.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_Auction.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
