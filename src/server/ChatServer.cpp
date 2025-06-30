#include "ChatServer.hpp"
#include "NetworkTransport.hpp"
#include "SessionManager.hpp"
#include <iostream>
#include <utility>
#include <memory>
#include <chrono>

using namespace std;

KcpChatServer::KcpChatServer(uint16_t port)
{
    transport_ = make_unique<UdpTransport>(port);
}

// void KcpChatServer::kcp_update_thread_func(KcpChatServer *server)
// {
//     while(server->running_){
        
//         std::this_thread::sleep_for(std::chrono::milliseconds(10));
//     }
// }
void KcpChatServer::start()
{
    
    running_ = true;
    // kcp_update_thread_ = std::thread(KcpChatServer::kcp_update_thread_func, this);


    while(running_){
        auto [client_addr, data] = transport_->receive();
        if(data.size() > 0){
            // cout << "receive data from ip: " << inet_ntoa(client_addr.sin_addr) << " port: " << ntohs(client_addr.sin_port)<< endl;
            // cout << "data: " << data.data() << endl;
        }
        auto session = KcpSessionManager::get_instance().get_session(transport_.get(), client_addr);
        if(!session){
            // cout << "get_session failed" << endl;
        }else{
            // cout << "get_session success, session exist" << endl;
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


