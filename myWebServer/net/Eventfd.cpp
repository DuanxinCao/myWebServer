#include "Eventfd.h"

Eventfd::Eventfd(shared_ptr<EventLoop> loop_,int fd_)
    :Channel(loop_,fd_){

}
Eventfd::~Eventfd(){
    close(fd);
}
void Eventfd::handleRead(){
    uint64_t one = 1;
    ssize_t n = readn(fd, &one, sizeof one);
    // pwakeupChannel_->setEvents(EPOLLIN | EPOLLET | EPOLLONESHOT);
    setEvents(EPOLLIN | EPOLLET);
}
void Eventfd::handleConn(){
    loop->getPoller_()->epollMod(shared_from_this(),0);
}
void Eventfd::handleError(int fd, int err_num, string short_msg){

}
void Eventfd::handleWrite(){

}
void Eventfd::handleClose(){

}
void Eventfd::linkTimer(shared_ptr<TimerNode> mtimer){
    
}