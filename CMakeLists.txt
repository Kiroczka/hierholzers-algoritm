cmake_minimum_required(VERSION 3.10)
project(heirholzers_algorithm)

set(CMAKE_CXX_STANDARD 11)

file(GLOB_RECURSE sources      src/main/*.cpp src/main/*.h)
add_executable(heirholzers_algorithm ${sources})