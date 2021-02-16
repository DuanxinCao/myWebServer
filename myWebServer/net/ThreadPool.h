#pragma once
#include "EventLoop.h"
#include "../base/Condition.h"
#include "../base/MutexLock.h"
#include "../base/Thread.h"
#include "../base/noncopyable.h"
#include "../base/Logging.h"
#include <memory>
#include <vector>
using namespace std;
class ThreadPool{
public:
    ThreadPool(shared_ptr<EventLoop> baseLoop, int numThreads);
    ~ThreadPool();
    void start();
    shared_ptr<EventLoop>  getNextLoop();
    void threadFunc();
    void startLoop();
private:
    shared_ptr<EventLoop> baseLoop;
    bool started_;
    int numThreads_;
    int next_;
    vector<shared_ptr<Thread>> threads_;
    vector<shared_ptr<EventLoop>> loops_;
    shared_ptr<EventLoop> loop_;
    bool exiting_;
    MutexLock mutex_;
    Condition cond_;
};