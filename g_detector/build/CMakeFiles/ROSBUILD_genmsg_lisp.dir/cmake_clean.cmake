FILE(REMOVE_RECURSE
  "../msg_gen"
  "../src/g_detector/msg"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_lisp"
  "../msg_gen/lisp/Gesture.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_Gesture.lisp"
  "../msg_gen/lisp/featureVector.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_featureVector.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
