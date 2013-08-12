cmake_minimum_required(VERSION 2.6)
project(jhprimeunix)

find_package(Boost)
find_package(GMP)
find_package(OpenSSL)

set(CMAKE_CXX_FLAGS "-mtune=native -O3")
add_subdirectory(src)