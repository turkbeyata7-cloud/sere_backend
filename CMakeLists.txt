cmake_minimum_required(VERSION 3.10)
project(sera_backend)

set(CMAKE_CXX_STANDARD 17)

add_executable(sera_backend main.cpp)

target_include_directories(sera_backend PRIVATE /app/Crow/include)