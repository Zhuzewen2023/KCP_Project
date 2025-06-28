#ifndef __CHATSERVER_HPP__
#define __CHATSERVER_HPP__

#include "NetworkTransport.hpp" 
#include <memory>
#include <thread>

class IChatServer{
protected:
    std::unique_ptr<INetworkTransport> transport_;
    bool running_ = false;
    // std::thread heartbeat_thread_;

public:
    virtual ~IChatServer() = default;
    virtual void start() = 0;
    virtual void stop() = 0;
    
};

// class UdpChatServer : public IChatServer
// {
// private:
// public:
//     void start() override;
//     void stop() override;
// };

class KcpChatServer : public IChatServer
{
private:
public:
    KcpChatServer(uint16_t port);
    void start() override;
    void stop() override;
};

#endif
