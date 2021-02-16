#pragma once
#include <memory>
#include "Channel.h"
#include "EventLoop.h"
#include "ThreadPool.h"
#include "Listenfd.h"
class Server {
 public:
  Server(shared_ptr<EventLoop> loop, int threadNum, int port);
  ~Server() {}
  shared_ptr<EventLoop> getLoop() const { return loop_; }
  void start();

 private:
  int listenFd_;
  shared_ptr<EventLoop> loop_;
  std::shared_ptr<ThreadPool> eventLoopThreadPool_;
  bool started_;
  std::shared_ptr<Channel> acceptChannel_;
  int port_;
  
  static const int MAXFDS = 100000;
};