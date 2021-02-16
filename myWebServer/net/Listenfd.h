#pragma once
#include "Channel.h"
#include <string>
#include "Util.h"
#include <map>
#include <memory>
#include <unordered_map>
#include <sys/epoll.h>
#include <unistd.h>
#include "Timer.h"
#include "config.h"
#include "ThreadPool.h"
using namespace std;
class Listenfd:public Channel,public enable_shared_from_this<Listenfd>{
public:
    Listenfd(shared_ptr<ThreadPool> threadPool_,shared_ptr<EventLoop> loop_,int fd_);
    ~Listenfd();
    void handleRead();
    void handleError(int fd, int err_num, string short_msg);
    void handleWrite();
    void handleConn();
    void handleClose();
    void linkTimer(shared_ptr<TimerNode> mtimer);
private:   
    shared_ptr<ThreadPool> threadPool;
};