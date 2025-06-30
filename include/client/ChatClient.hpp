#ifndef __CHAT_CLIENT_HPP__
#define __CHAT_CLIENT_HPP__

#include <iostream>
#include <string>
#include <cstdint>
#include "NetworkTransport.hpp"
#include "ikcp.h"
#include "KcpSession.hpp"
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
    void run();
    bool connect();
    void disconnect();
    void send(const std::string& message);
    void set_message_handler(MessageHandler handler);
protected:
private:
    
    static void kcp_update_thread_func(ChatClient *client);
    static void network_thread_func(ChatClient *client);
    // static int udp_output(const char* buf, int len, ikcpcb* kcp, void* user);
    std::unique_ptr<KcpSession> session_;
    std::string server_ip_;
    uint16_t server_port_;
    sockaddr_in server_addr_;
    std::unique_ptr<INetworkTransport> transport_;
    ikcpcb* kcp_;
    std::thread kcp_update_thread_;
    std::thread network_thread_;
    static std::atomic<bool> running_;
    MessageHandler message_handler_;
    std::queue<std::string> recv_queue_;
    std::mutex queue_mutex_;
    std::condition_variable queue_cv_;
    
};



#endif
