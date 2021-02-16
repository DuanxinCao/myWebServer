#include "Epoll.h"
#include <iostream>
#include <assert.h>
#include <errno.h>
#include <netinet/in.h>
#include <string.h>
#include <sys/epoll.h>
#include <sys/socket.h>
#include <deque>
#include <queue>
#include "Util.h"
#include "../base/Logging.h"
#include <arpa/inet.h>

using namespace std;



Epoll::Epoll():events(EVENTSNUM),timerManager(new TimerManager()){
    epollFd=epoll_create1(EPOLL_CLOEXEC);

}
Epoll::~Epoll(){
    //关闭文件描述符epollFd
}
void Epoll::epollAdd(shared_ptr<Channel> request, int timeout) {
  int fd = request->getFd();
  if (timeout > 0) {
    add_timer(request, timeout);
  }
  struct epoll_event event;
  event.data.fd = fd;
  event.events = request->getEvents();

  request->EqualAndUpdateLastEvents();

  fd2chan[fd] = request;
  if (epoll_ctl(epollFd, EPOLL_CTL_ADD, fd, &event) < 0) {
    perror("epoll_add error");
    fd2chan[fd].reset();
  }
}
void Epoll::epollDel(shared_ptr<Channel> request) {
  int fd = request->getFd();
  struct epoll_event event;
  event.data.fd = fd;
  event.events = request->getLastEvents();
  // event.events = 0;
  // request->EqualAndUpdateLastEvents()
  if (epoll_ctl(epollFd, EPOLL_CTL_DEL, fd, &event) < 0) {
    perror("epoll_del error");
  }
  fd2chan[fd].reset();
}
void Epoll::epollMod(shared_ptr<Channel> request, int timeout) {
  if (timeout > 0) add_timer(request, timeout);
  int fd = request->getFd();
  if (!request->EqualAndUpdateLastEvents()) {
    struct epoll_event event;
    event.data.fd = fd;
    event.events = request->getEvents();
    if (epoll_ctl(epollFd, EPOLL_CTL_MOD, fd, &event) < 0) {
      perror("epoll_mod error");
      fd2chan[fd].reset();
    }
  }
}
vector<shared_ptr<Channel>> Epoll::epollWait(int waitTime_){
    while (true) {
        int event_count =
        epoll_wait(epollFd, &*events.begin(), events.size(), EPOLLWAIT_TIME);
        if (event_count < 0) perror("epoll wait error");
        vector<shared_ptr<Channel>> req_data = getEventsRequest(event_count);
        if (req_data.size() > 0) return req_data;
    }
}
void Epoll::handleExpired() { timerManager->handleExpiredEvent(); }
vector<shared_ptr<Channel>> Epoll::getEventsRequest(int epollEventCnt){
   std::vector<shared_ptr<Channel>> req_data;
  for (int i = 0; i < epollEventCnt; ++i) {
    // 获取有事件产生的描述符
    int fd = events[i].data.fd;
    shared_ptr<Channel> cur_req = fd2chan[fd];

    if (cur_req) {
      cur_req->setRevents(events[i].events);
      cur_req->setEvents(0);
      // 加入线程池之前将Timer和request分离
      // cur_req->seperateTimer();
      req_data.push_back(cur_req);
    } else {
      LOG << "SP cur_req is invalid";
    }
  }
  return req_data;
}
void Epoll::add_timer(shared_ptr<Channel> request_data, int timeout) {
  if (request_data)
    timerManager->addTimer(request_data, timeout);
  else
    LOG << "timer add fail";
}
