#cmake的最低版本
cmake_minimum_required(VERSION 2.8)

#工程名
project(myWebServer CXX)

#如果没有定义编译方式，就是Debug
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "Debug")
endif()

#设置编译的条件
set(CXX_FLAGS
    -g
    -Wall
    -std=c++11
    -D_PTHREADS
    -Wno-unused-parameter
)

#设置编译器
set(CMAKE_CXX_COMPILER "g++")
set(CMAKE_CXX_FLAGS_DEBUG "-O0")
set(CMAKE_CXX_FLAGS_RELEASE "-O0")

#将"${CXX_FLAGS}"中的“;”替换成“ ”，将结果保存到 CMAKE_CXX_FLAGS
string(REPLACE ";" " " CMAKE_CXX_FLAGS "${CXX_FLAGS}")

#将 ${CMAKE_BUILD_TYPE}转换成大写，并保存到BUILD_TYPE
string(TOUPPER ${CMAKE_BUILD_TYPE} BUILD_TYPE)
#命令，用于输出信息
message(STATUS "CXX_FLAGS = " ${CMAKE_CXX_FLAGS} " " ${CMAKE_CXX_FLAGS_${BUILD_TYPE}})

#添加子目录
add_subdirectory(myWebServer/base)
add_subdirectory(myWebServer/net)