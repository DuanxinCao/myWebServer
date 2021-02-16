#include "EventLoop.h"
#include <sys/epoll.h>
#include <sys/eventfd.h>
#include <iostream>
#include "Util.h"
#include "../base/Logging.h"
using namespace std;
__thread EventLoop* t_loopInThisThread = 0;
int createEventfd() {
  int evtfd = eventfd(0, EFD_NONBLOCK | EFD_CLOEXEC);//防止文件描述符泄露给子进程
  if (evtfd < 0) {
    LOG << "Failed in eventfd";
    abort();
  }
  return evtfd;
}
EventLoop::EventLoop():poller_(new Epoll()),
wakeupFd_(createEventfd()){
    looping_=false;
    quit_=false;
    eventHandling_=false;
    callingPendingFunctors_=false;
    threadId_=CurrentThread::tid();
    t_loopInThisThread = this;

  
}
void EventLoop::constructorfunc(){
  shared_ptr<Channel> tmp(new Eventfd(shared_from_this(), wakeupFd_));
  pwakeupChannel_=tmp;
  pwakeupChannel_->setEvents(EPOLLIN | EPOLLET);
  poller_->epollAdd(pwakeupChannel_,0);
}
EventLoop::~EventLoop(){
    t_loopInThisThread=NULL;
}
void EventLoop::wakeup() {
  uint64_t one = 1;
  ssize_t n = writen(wakeupFd_, (char*)(&one), sizeof one);
  if (n != sizeof one) {
    LOG << "EventLoop::wakeup() writes " << n << " bytes instead of 8";
  }
}
void EventLoop::runInLoop(Functor&& cb) {
  if (isInLoopThread())
    cb();
  else
    queueInLoop(std::move(cb));
}
void EventLoop::queueInLoop(Functor&& cb) {
  {
    MutexLockGuard lock(mutex_);
    pendingFunctors_.emplace_back(std::move(cb));
  }

  // if (!isInLoopThread() || callingPendingFunctors_) 
  wakeup();
}

void EventLoop::loop(){
  assert(!looping_);
  assert(isInLoopThread());
  looping_ = true;
  quit_ = false;
  // LOG_TRACE << "EventLoop " << this << " start looping";
  std::vector<shared_ptr<Channel>> ret;
  while (!quit_) {
    // cout << "doing" << endl;
    ret.clear();
    ret = poller_->epollWait();
    eventHandling_ = true;
    for (auto& it : ret) it->handleEvents();
    eventHandling_ = false;
    doPendingFunctors();
    poller_->handleExpired();
  }
  looping_ = false;  
}
void EventLoop::doPendingFunctors(){
    std::vector<Functor> functors;
  callingPendingFunctors_ = true;

  {
    MutexLockGuard lock(mutex_);
    functors.swap(pendingFunctors_);
  }

  for (size_t i = 0; i < functors.size(); ++i) functors[i]();
  callingPendingFunctors_ = false;
}
void EventLoop::quit() {
  quit_ = true;
  if (!isInLoopThread()) {
    wakeup();
  }
}
void EventLoop::shutdown(shared_ptr<Channel> channel){
  shutDownWR(channel->getFd());
}
void EventLoop::updatePoller(shared_ptr<Channel> channel, int timeout){
  poller_->epollMod(channel,timeout);
}
void EventLoop::removeFromPoller(shared_ptr<Channel> channel){
  poller_->epollDel(channel);
}
void EventLoop::addToPoller(shared_ptr<Channel> channel, int timeout){
  poller_->epollAdd(channel,timeout);
}