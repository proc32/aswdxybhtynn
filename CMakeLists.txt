# Mohammed Omer
cmake_minimum_required(VERSION 3.22)
project(MohammedOmerApp VERSION 1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(MohammedOmerApp src/main.cpp src/helpers.cpp src/utils.cpp)

target_include_directories(MohammedOmerApp PRIVATE include)
target_compile_options(MohammedOmerApp PRIVATE -Wall -Wextra -Wpedantic)
target_link_libraries(MohammedOmerApp PRIVATE pthread)

install(TARGETS MohammedOmerApp DESTINATION bin)
