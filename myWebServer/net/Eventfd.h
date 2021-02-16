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
class Channel;
using namespace std;
class Eventfd:public enable_shared_from_this<Eventfd>,public Channel{
public:
    Eventfd(shared_ptr<EventLoop> loop_,int fd_);
    ~Eventfd();
    void handleRead();
    void handleError(int fd, int err_num, string short_msg);
    void handleWrite();
    void handleConn();
    void handleClose();
    void linkTimer(shared_ptr<TimerNode> mtimer);
private:   
};