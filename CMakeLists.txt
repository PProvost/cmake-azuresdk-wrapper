cmake_minimum_required(VERSION 3.13.0 FATAL_ERROR)

project("cmake-sdk-test")

# Change this to match your target
set(AZ_PLATFORM "posix")
set(AZ_HTTP_TYPE "nohttp") # optional, will use nohttp if not specified

add_subdirectory("lib/cmake-azure-sdk-for-c")

add_executable(${PROJECT_NAME})

target_sources(${PROJECT_NAME} PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/src/main.c
)

target_link_libraries(${PROJECT_NAME} PUBLIC "cmake-azure-sdk-for-c")