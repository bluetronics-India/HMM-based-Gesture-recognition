FILE(REMOVE_RECURSE
  "../msg_gen"
  "../src/g_detector/msg"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "../msg_gen/cpp/include/g_detector/Gesture.h"
  "../msg_gen/cpp/include/g_detector/featureVector.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
