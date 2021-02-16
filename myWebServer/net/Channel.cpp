#include "Channel.h"
#include <unistd.h>
#include <cstdlib>
#include <iostream>
#include <queue>
#include "Epoll.h"
#include "EventLoop.h"
#include "Util.h"
Channel::Channel(shared_ptr<EventLoop> loop_,int fd_):loop(loop_){
    fd=fd_;
    events=0;
    lastEvents=0;
}
// Channel::~Channel(){

// }
int Channel::getFd() { return fd; }
void Channel::setFd(int fd_) { fd = fd_; }
void Channel::handleEvents(){
    events = 0;
    if ((revents & EPOLLHUP) && !(revents & EPOLLIN)) {
      events = 0;
      return;
    }
    if (revents & EPOLLERR) {
      handleError(fd,400,"Bad Request");
      events = 0;
      return;
    }
    if (revents & (EPOLLIN | EPOLLPRI | EPOLLRDHUP)) {
      handleRead();
    }
    if (revents & EPOLLOUT) {
      handleWrite();
    }
    handleConn();
}
 void Channel::setRevents(__uint32_t ev) { revents = ev; }
 void Channel::setEvents(__uint32_t ev) { events = ev; }
 __uint32_t& Channel::getEvents() { return events; }
 __uint32_t Channel::getLastEvents() { return lastEvents; }
 bool Channel::EqualAndUpdateLastEvents() {
    bool ret = (lastEvents == events);
    lastEvents = events;
    return ret;
  }

// void Channel::handleRead(){

// }
// void Channel::handleWrite(){

// }
// void Channel::handleError(int fd, int err_num, string short_msg){

// }
// void Channel::handleConn(){

// }
// void Channel::handleClose(){

// }
// void Channel::linkTimer(shared_ptr<TimerNode> mtimer){

// }