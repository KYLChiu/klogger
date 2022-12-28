cmake_minimum_required(VERSION 3.16.0)
project(logger VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_library(klogger klogger.hpp)
target_include_directories (klogger PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
set_target_properties(klogger PROPERTIES LINKER_LANGUAGE CXX)