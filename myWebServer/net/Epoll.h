#pragma once
#include <sys/epoll.h>
#include <vector>
#include "config.h"
#include "Channel.h"
#include <memory>
#include "HttpData.h"
#include "Timer.h"
using namespace std;
class Epoll{
public:
    Epoll();
    ~Epoll();
    void epollAdd(shared_ptr<Channel> request, int timeout);
    void epollDel(shared_ptr<Channel> request);
    void epollMod(shared_ptr<Channel> request, int timeout);
    vector<shared_ptr<Channel>> epollWait(int waitTime_=EPOLLWAIT_TIME);
    void add_timer(shared_ptr<Channel> request_data, int timeout);
    int getEpollFd() { return epollFd; }
    void handleExpired();
private:
    vector<shared_ptr<Channel>> getEventsRequest(int epollEventCnt);
private:
    int epollFd;
    vector<epoll_event> events;
    std::shared_ptr<Channel> fd2chan[MAXFD];
    std::shared_ptr<TimerManager> timerManager;
};
