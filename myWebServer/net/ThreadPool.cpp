#include "ThreadPool.h"
ThreadPool::ThreadPool(shared_ptr<EventLoop> baseLoop, int numThreads)
: baseLoop(baseLoop), 
  started_(false), 
  numThreads_(numThreads),
  next_(0),
  loop_(NULL),
  exiting_(false),
  mutex_(),
  cond_(mutex_){
    if (numThreads_ <= 0) {
    LOG << "numThreads_ <= 0";
    abort();
  }
}
ThreadPool::~ThreadPool(){

}
void ThreadPool::start(){
    baseLoop->assertInLoopThread();
    started_=true;
    for(int i=0;i<numThreads_;i++){
        startLoop();
    }
}
void ThreadPool::startLoop(){
    shared_ptr<Thread> thread(new Thread(bind(&ThreadPool::threadFunc,this),"EventLoopThread"));
    threads_.push_back(thread);
    assert(!thread->started());
    thread->start();
    {
        MutexLockGuard lock(mutex_);
    // 一直等到threadFun在Thread里真正跑起来
        while (loop_ == NULL) cond_.wait();
    }
    loops_.push_back(loop_);
}
shared_ptr<EventLoop> ThreadPool::getNextLoop() {
  baseLoop->assertInLoopThread();
  LOG<<started_;
  assert(started_);
  shared_ptr<EventLoop> loop = baseLoop;
  if (!loops_.empty()) {
    loop = loops_[next_];
    next_ = (next_ + 1) % numThreads_;
  }
  return loop;
}
void ThreadPool::threadFunc(){
    shared_ptr<EventLoop> loop(new EventLoop);
    loop->constructorfunc();
  {
    MutexLockGuard lock(mutex_);
    loop_ = loop;
    cond_.notify();
  }

  loop->loop();
  // assert(exiting_);
  loop_ = NULL;
}