#include "ChatServer.hpp"
#include "NetworkTransport.hpp"
#include "SessionManager.hpp"
#include <iostream>
#include <utility>
#include <memory>

using namespace std;

KcpChatServer::KcpChatServer(uint16_t port)
{
    transport_ = make_unique<UdpTransport>(port);
}

void KcpChatServer::start()
{
    
    running_ = true;

    while(running_){
        auto [client_addr, data] = transport_->receive();
        auto session = KcpSessionManager::get_instance().get_session(client_addr);
        session->process_packet(data);
    }
}

void KcpChatServer::stop()
{
    running_ = false;
    if(transport_){
        transport_.reset();
    }
}


