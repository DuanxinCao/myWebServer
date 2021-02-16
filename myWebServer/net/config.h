#pragma once

const int EPOLLWAIT_TIME = 10000; //epoll_wait阻塞等待的最大时间（ms）
const int EVENTSNUM = 4096;//epoll_wait响应事件的文件描述符的最多个数
const int MAXFD=20000;//每个epoll能够监听的文件描述符的最大数值 
const int DEFAULT_EXPIRED_TIME = 2000;//每个套接字默认的超时时间（ms）
const int DEFAULT_KEEP_ALIVE_TIME = 5 * 60 * 1000;  // 每个套接字的长连接时间（ms）
//套接字默认监听的事件
const __uint32_t DEFAULT_EVENT = EPOLLIN | EPOLLET | EPOLLONESHOT;
//listen队列的大小
const int MAXLISTENFD=100000;