set(SDK_BASEPATH "${CMAKE_SOURCE_DIR}/lib/cmake-azure-sdk-for-c/sdk/azure-sdk-for-c/sdk")
set(LIB_BASEPATH "${SDK_BASEPATH}/iot/provisioning")

target_include_directories(${PROJECT_NAME} INTERFACE 
    ${LIB_BASEPATH}/inc
)

target_sources(${PROJECT_NAME} INTERFACE
    ${LIB_BASEPATH}/src/az_iot_provisioning_client.c
)
