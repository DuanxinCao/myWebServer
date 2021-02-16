#pragma once
#include "Channel.h"
#include <string>
#include "Util.h"
#include <map>
#include <memory>
#include <unordered_map>
#include <sys/epoll.h>
#include <unistd.h>
#include "Timer.h"
#include "EventLoop.h"
using namespace std;
class EventLoop;
class Channel;
enum ProcessState {
  STATE_PARSE_URI = 1,
  STATE_PARSE_HEADERS,
  STATE_RECV_BODY,
  STATE_ANALYSIS,
  STATE_FINISH
};

enum URIState {
  PARSE_URI_AGAIN = 1,
  PARSE_URI_ERROR,
  PARSE_URI_SUCCESS,
};

enum HeaderState {
  PARSE_HEADER_SUCCESS = 1,
  PARSE_HEADER_AGAIN,
  PARSE_HEADER_ERROR
};

enum AnalysisState { ANALYSIS_SUCCESS = 1, ANALYSIS_ERROR };

enum ParseState {
  H_START = 0,
  H_KEY,
  H_COLON,
  H_SPACES_AFTER_COLON,
  H_VALUE,
  H_CR,
  H_LF,
  H_END_CR,
  H_END_LF
};

enum ConnectionState { H_CONNECTED = 0, H_DISCONNECTING, H_DISCONNECTED };

enum HttpMethod { METHOD_POST = 1, METHOD_GET, METHOD_HEAD };

enum HttpVersion { HTTP_10 = 1, HTTP_11 };

class MimeType {
 private:
  static void init();
  static std::unordered_map<std::string, std::string> mime;
  MimeType();
  MimeType(const MimeType &m);

 public:
  static std::string getMime(const std::string &suffix);

 private:
  static pthread_once_t once_control;
};

class HttpData:public enable_shared_from_this<HttpData>,public Channel{
public:
    HttpData(shared_ptr<EventLoop> loop_,int fd_);
    ~HttpData();
    void handleRead();
    void handleError(int fd, int err_num, string short_msg);
    void handleWrite();
    void handleConn();
    void handleClose();
    void seperateTimer();
    void newEvent();
    void linkTimer(std::shared_ptr<TimerNode> mtimer);
    shared_ptr<Channel> getChannel();
    shared_ptr<EventLoop> getLoop();
private:
    URIState parseURI();
    HeaderState parseHeaders();
    AnalysisState analysisRequest();
    void reset();

private:
    string inBuffer;
    string outBuffer;
    ConnectionState connectionState;
    bool error;
    ProcessState state;
    ParseState hState;
    HttpMethod method;
    map<string, string> headers;
    bool keepAlive;
    int nowReadPos;
    string fileName;
    HttpVersion HTTPVersion;
    weak_ptr<TimerNode> timer;
};