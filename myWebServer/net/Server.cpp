#include "Server.h"
#include <arpa/inet.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <functional>
#include "Util.h"
#include "../base/Logging.h"

Server::Server(shared_ptr<EventLoop> loop, int threadNum, int port)
    : loop_(loop),
      eventLoopThreadPool_(new ThreadPool(loop_, threadNum)),
      started_(false),
      listenFd_(socket_bind_listen(port_)),
      acceptChannel_(new Listenfd(eventLoopThreadPool_,loop_,listenFd_)),
      port_(port){
  handle_for_sigpipe();
  if (setSocketNonBlocking(listenFd_) < 0) {
    perror("set socket non block failed");
    abort();
  }
}

void Server::start() {
  eventLoopThreadPool_->start();
  // acceptChannel_->setEvents(EPOLLIN | EPOLLET | EPOLLONESHOT);
  acceptChannel_->setEvents(EPOLLIN | EPOLLET);
  loop_->addToPoller(acceptChannel_, 0);
  started_ = true;
}