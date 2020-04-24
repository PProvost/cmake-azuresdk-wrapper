# Define our target as an interface library
# This target type will only produce files for consumers, no binary
# project("azcsdk-core")

# add_library("${PROJECT_NAME}" INTERFACE)

set(SDK_BASEPATH "${CMAKE_SOURCE_DIR}/lib/cmake-azure-sdk-for-c/sdk/azure-sdk-for-c/sdk")
set(LIB_BASEPATH "${SDK_BASEPATH}/core/core/")

target_include_directories(${PROJECT_NAME} INTERFACE 
    ${LIB_BASEPATH}/inc
    ${LIB_BASEPATH}/internal
)

target_sources(${PROJECT_NAME} INTERFACE
    ${LIB_BASEPATH}/src/az_aad.c
    ${LIB_BASEPATH}/src/az_credential_client_secret.c
    ${LIB_BASEPATH}/src/az_context.c
    ${LIB_BASEPATH}/src/az_http_pipeline.c
    ${LIB_BASEPATH}/src/az_http_policy.c
    ${LIB_BASEPATH}/src/az_http_policy_logging.c
    ${LIB_BASEPATH}/src/az_http_policy_retry.c
    ${LIB_BASEPATH}/src/az_http_request.c
    ${LIB_BASEPATH}/src/az_http_response.c
    ${LIB_BASEPATH}/src/az_json_builder.c
    ${LIB_BASEPATH}/src/az_json_parser.c
    ${LIB_BASEPATH}/src/az_json_pointer.c
    ${LIB_BASEPATH}/src/az_json_string.c
    ${LIB_BASEPATH}/src/az_json_token.c
    ${LIB_BASEPATH}/src/az_log.c
    ${LIB_BASEPATH}/src/az_precondition.c
    ${LIB_BASEPATH}/src/az_span.c
)