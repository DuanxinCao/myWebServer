#include "Listenfd.h"
#include <arpa/inet.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <functional>
#include "Util.h"
#include "../base/Logging.h"

Listenfd::Listenfd(shared_ptr<ThreadPool> threadPool_,shared_ptr<EventLoop> loop_,int fd_):
Channel(loop_,fd_),threadPool(threadPool_){

}
Listenfd::~Listenfd(){
    close(fd);
}
void Listenfd::handleRead(){
  struct sockaddr_in client_addr;
  memset(&client_addr, 0, sizeof(struct sockaddr_in));
  socklen_t client_addr_len = sizeof(client_addr);
  int accept_fd = 0;
  while ((accept_fd = accept(fd, (struct sockaddr *)&client_addr,
                             &client_addr_len)) > 0) {
    shared_ptr<EventLoop> loop = threadPool->getNextLoop();
    LOG << "New connection from " << inet_ntoa(client_addr.sin_addr) << ":"
        << ntohs(client_addr.sin_port);
    // cout << "new connection" << endl;
    // cout << inet_ntoa(client_addr.sin_addr) << endl;
    // cout << ntohs(client_addr.sin_port) << endl;
    /*
    // TCP的保活机制默认是关闭的
    int optval = 0;
    socklen_t len_optval = 4;
    getsockopt(accept_fd, SOL_SOCKET,  SO_KEEPALIVE, &optval, &len_optval);
    cout << "optval ==" << optval << endl;
    */
    // 限制服务器的最大并发连接数
    if (accept_fd >= MAXLISTENFD) {
      close(accept_fd);
      continue;
    }
    // 设为非阻塞模式
    if (setSocketNonBlocking(accept_fd) < 0) {
      LOG << "Set non block failed!";
      // perror("Set non block failed!");
      return;
    }

    setSocketNodelay(accept_fd);
    // setSocketNoLinger(accept_fd);

    shared_ptr<HttpData> req_info(new HttpData(loop, accept_fd));
    loop->queueInLoop(bind(&HttpData::newEvent, req_info));
  }
  setEvents(EPOLLIN | EPOLLET);
}
void Listenfd::handleConn(){
  loop->updatePoller(shared_from_this(),0);
}
void Listenfd::handleError(int fd, int err_num, string short_msg){

}
void Listenfd::handleWrite(){

}
void Listenfd::handleClose(){

}
void Listenfd::linkTimer(shared_ptr<TimerNode> mtimer){
    
}