set(SDK_BASEPATH "${CMAKE_SOURCE_DIR}/lib/cmake-azure-sdk-for-c/sdk/azure-sdk-for-c/sdk")
set(LIB_BASEPATH "${SDK_BASEPATH}/platform/http_client/nohttp")

target_sources(${PROJECT_NAME} INTERFACE
    ${LIB_BASEPATH}/src/az_nohttp.c
)