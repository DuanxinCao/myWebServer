#pragma once
#include <sys/epoll.h>
#include <string>
#include <memory>
//#include "EventLoop.h"
#include <functional>
#include <unordered_map>
//#include "Timer.h"
#include "../base/Logging.h"
using namespace std;
class EventLoop;
class TimerCmp;
class TimerNode;
class TimerManager;
class Channel{
public:
    Channel(shared_ptr<EventLoop> loop_,int fd_);
    virtual ~Channel(){};
    virtual void handleRead(){};
    virtual void handleWrite(){};
    virtual void handleError(int fd, int err_num, string short_msg){};
    virtual void handleConn(){};
    virtual void handleClose(){};
    virtual void linkTimer(shared_ptr<TimerNode> mtimer){};
    void handleEvents();
    __uint32_t &getEvents(); 
    void setEvents(__uint32_t ev);
    int getFd();
    void setFd(int fd);
    void setRevents(__uint32_t ev);
    __uint32_t getLastEvents();
    bool EqualAndUpdateLastEvents();
protected:
    int fd;
    shared_ptr<EventLoop> loop;
    __uint32_t events;
    __uint32_t revents;
    __uint32_t lastEvents;

};
