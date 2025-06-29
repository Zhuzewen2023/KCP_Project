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
        if(data.size() > 0){
            cout << "receive data from ip: " << inet_ntoa(client_addr.sin_addr) << " port: " << ntohs(client_addr.sin_port)<< endl;
            cout << "data: " << data.data() << endl;
        }
        auto session = KcpSessionManager::get_instance().get_session(client_addr);
        if(!session){
            cout << "get_session failed" << endl;
        }else{
            cout << "get_session success, session exist" << endl;
        }
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


