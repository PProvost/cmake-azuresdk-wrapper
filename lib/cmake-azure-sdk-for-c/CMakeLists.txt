cmake_minimum_required(VERSION 3.12)
project("cmake-azure-sdk-for-c")

add_library(${PROJECT_NAME} INTERFACE)

# Enable folder names for IDEs
set_property(GLOBAL PROPERTY USE_FOLDERS TRUE)

# Default HTTP_TYPE is nohttp. User can override by setting AZ_HTTP_TYPE to
# one of the valid values (nohttp or curl)
set(TMP_HTTP_TYPE "platform/nohttp" )
if( ${AZ_HTTP_TYPE} )
  set(TMP_HTTP_TYPE ${AZ_HTTP_TYPE})
endif()

set(SDK_LIBS_REQUIRED
  core/core
  platform/${AZ_PLATFORM}
  ${TMP_HTTP_TYPE}
)
set(SDK_LIBS_OPTIONAL
  iot/core
  iot/hub
  iot/pnp
  # storage/blobs
  CACHE STRING "SDK libs to be compiled"
)

foreach(lib ${SDK_LIBS_REQUIRED})
  message(STATUS "including ${lib}.cmake")
  include("${CMAKE_CURRENT_LIST_DIR}/libs/${lib}.cmake")
endforeach()

foreach(lib ${SDK_LIBS_OPTIONAL})
  # In case only a subset of modules is available (eg. after using bcp)
  if(EXISTS "${CMAKE_CURRENT_LIST_DIR}/libs/${lib}.cmake")
    include("${CMAKE_CURRENT_LIST_DIR}/libs/${lib}.cmake")
  endif()
endforeach()
