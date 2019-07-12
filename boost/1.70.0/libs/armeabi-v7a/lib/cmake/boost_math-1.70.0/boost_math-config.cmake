# Generated by Boost 1.70.0

if(TARGET Boost::math)
  return()
endif()

message(STATUS "Found boost_math ${boost_math_VERSION} at ${boost_math_DIR}")

# Compute the include and library directories relative to this file.
get_filename_component(_BOOST_CMAKEDIR "${CMAKE_CURRENT_LIST_DIR}/../" ABSOLUTE)
get_filename_component(_BOOST_INCLUDEDIR "${_BOOST_CMAKEDIR}/../../include/boost-1_70/" ABSOLUTE)
get_filename_component(_BOOST_LIBDIR "${_BOOST_CMAKEDIR}/../" ABSOLUTE)

# Create imported target Boost::math
add_library(Boost::math INTERFACE IMPORTED)

set_target_properties(Boost::math PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_BOOST_INCLUDEDIR}"
  INTERFACE_COMPILE_DEFINITIONS "BOOST_ALL_NO_LIB"
)
