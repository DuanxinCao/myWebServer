#pragma once
#include "Channel.h"
#include "Epoll.h"
#include <vector>
#include <iostream>
#include "HttpData.h"
#include <memory>
#include <functional>
#include "../base/CurrentThread.h"
#include "../base/Logging.h"
#include "../base/Thread.h"
#include <memory>
#include "Eventfd.h"
using namespace std;
class Epoll;
class Channel;
typedef std::function<void()> Functor;

class EventLoop:public enable_shared_from_this<EventLoop>
{
public:
    EventLoop(/* args */);
    ~EventLoop();
    void constructorfunc();
    void loop();
    void quit();
    void updatePoller(shared_ptr<Channel> channel, int timeout = 0);
    void runInLoop(Functor&& cb);
    void queueInLoop(Functor&& cb);
    void removeFromPoller(shared_ptr<Channel> channel);
    void addToPoller(shared_ptr<Channel> channel, int timeout = 0);
    bool isInLoopThread() const { return threadId_ == CurrentThread::tid(); }
    void assertInLoopThread() { 
        LOG<<isInLoopThread();
        assert(isInLoopThread()); }
    void shutdown(shared_ptr<Channel> channel);
    shared_ptr<Epoll> getPoller_(){return poller_;}
private:
    void wakeup();
    void handleRead();
    void doPendingFunctors();
    void handleConn();
private:
    bool looping_;
    shared_ptr<Epoll> poller_;
    int wakeupFd_;
    bool quit_;
    bool eventHandling_;
    mutable MutexLock mutex_;
    std::vector<Functor> pendingFunctors_;
    bool callingPendingFunctors_;
    pid_t threadId_;
    shared_ptr<Channel> pwakeupChannel_;
};
