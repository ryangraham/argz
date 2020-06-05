cmake_minimum_required(VERSION 3.11)
project(print LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)

find_package(argz CONFIG REQUIRED)
message("argz: ${argz}")
include_directories(${argz})

add_executable(${PROJECT_NAME} src/main.cc)
target_link_libraries(${PROJECT_NAME} argz::argz)

add_custom_target(run
    COMMAND print
    DEPENDS print
    WORKING_DIRECTORY ${CMAKE_PROJECT_DIR}
)
