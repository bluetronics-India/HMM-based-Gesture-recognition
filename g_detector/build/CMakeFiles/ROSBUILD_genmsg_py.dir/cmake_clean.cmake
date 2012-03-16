FILE(REMOVE_RECURSE
  "../msg_gen"
  "../src/g_detector/msg"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/g_detector/msg/__init__.py"
  "../src/g_detector/msg/_Gesture.py"
  "../src/g_detector/msg/_featureVector.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
