# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "Assignment-4_autogen"
  "CMakeFiles\\Assignment-4_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\Assignment-4_autogen.dir\\ParseCache.txt"
  )
endif()
