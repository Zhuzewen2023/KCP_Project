#ifndef __CHAT_CLIENT_HPP__
#define __CHAT_CLIENT_HPP__

#include <iostream>
#include <string>
#include <cstdint>
#include "NetworkTransport.hpp"
#include "ikcp.h"
#include <functional>
#include <thread>
#include <mutex>
#include <condition_variable>
#include <queue>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <unistd.h>
#include <atomic>

class ChatClient
{
public:

    using MessageHandler = std::function<void(const std::string&)>;

    ChatClient(const std::string& ip, uint16_t port);
    ~ChatClient();

    bool connect();
    void disconnect();
    void send(const std::string& message);
    void set_message_handler(MessageHandler handler);
protected:
private:
    void run();
    void kcp_update_thread_func();
    void network_thread_func();
    static int udp_output(const char* buf, int len, ikcpcb* kcp, void* user);
    std::unique_ptr<ISession> session_;
    std::string server_ip_;
    uint16_t server_port_;
    sockaddr_in server_addr_;
    std::unique_ptr<INetworkTransport> transport_;
    ikcpcb* kcp_;
    std::thread kcp_update_thread_;
    std::thread network_thread_;
    std::atomic<bool> running_{false};
    MessageHandler message_handler_;
    std::queue<std::string> recv_queue_;
    std::mutex queue_mutex_;
    std::condition_variable queue_cv_;
    
};

#endif
