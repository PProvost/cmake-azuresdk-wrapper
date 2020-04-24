cmake_minimum_required(VERSION 3.12)
project("cmake-azure-sdk-for-c")

add_library(${PROJECT_NAME} INTERFACE)

# Enable folder names for IDEs
set_property(GLOBAL PROPERTY USE_FOLDERS TRUE)

set(SDK_LIBS_REQUIRED
  "core/core"
  "platform/${AZ_PLATFORM}"
  "platform/nohttp"
)
# set(SDK_LIBS_OPTIONAL
#   iot/core
#   iot/hub
#   iot/pnp
#   platform/http_client
#   platform/noplatform
#   platform/posix
#   platform/win32
#   storage/blobs
#   CACHE STRING "SDK libs to be compiled"
# )

foreach(lib ${SDK_LIBS_REQUIRED})
  include("${CMAKE_CURRENT_LIST_DIR}/libs/${lib}.cmake")
endforeach()

# foreach(lib ${SDK_LIBS_OPTIONAL})
#   # In case only a subset of modules is available (eg. after using bcp)
#   if(EXISTS "${CMAKE_CURRENT_LIST_DIR}/libs/${lib}")
#     include("libs/${lib}.cmake")
#   endif()
# endforeach()
