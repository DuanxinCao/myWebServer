#指定源文件
set(SRCS
    Channel.cpp
    Epoll.cpp
    Eventfd.cpp
    EventLoop.cpp
    HttpData.cpp
    Listenfd.cpp
    Main.cpp
    Server.cpp
    ThreadPool.cpp
    Timer.cpp
    Util.cpp
    
    
    
    
)
#指定头文件的搜索路径
include_directories(${PROJECT_SOURCE_DIR}/base)
#生成“WebServer”可执行文件
add_executable(myWebServer ${SRCS})
#问目标添加链接库
target_link_libraries(myWebServer libserver_base)


#添加子目录
#add_subdirectory(../base/)
#添加子目录
#add_subdirectory(tests)