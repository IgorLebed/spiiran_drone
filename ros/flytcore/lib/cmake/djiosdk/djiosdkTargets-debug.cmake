#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "djiosdk" for configuration "Debug"
set_property(TARGET djiosdk APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(djiosdk PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "/flyt/flytos/flytcore/lib/libdjiosdk.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS djiosdk )
list(APPEND _IMPORT_CHECK_FILES_FOR_djiosdk "/flyt/flytos/flytcore/lib/libdjiosdk.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
