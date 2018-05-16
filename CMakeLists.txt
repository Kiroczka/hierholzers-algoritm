cmake_minimum_required(VERSION 3.10)
project(heirholzers_algorithm)

set(CMAKE_CXX_STANDARD 11)

include_directories(BEFORE node)
include_directories( graph)
add_executable(heirholzers_algorithm main.cpp node/Node.cpp graph/Graph.cpp)