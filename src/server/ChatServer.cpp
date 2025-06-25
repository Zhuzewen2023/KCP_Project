#include "ChatServer.hpp"
#include "NetworkTransport.hpp"
#include <iostream>
#include <utility>
#include <memory>

using namespace std;

void UdpChatServer::start()
{
    running_ = true;

    // heartbeat_thread_ = std::thread([this](){
    //     while(running_){

    //     }
    // });

    while(running_){
        
    }
}

void UdpChatServer::stop()
{
    
}

int main(){
    unique_ptr<INetworkTransport> p_udp_trans = make_unique<UdpTransport>(7654);
    while(1){
        std::pair<sockaddr_in, std::vector<uint8_t>> packet;
        packet = p_udp_trans->receive();
        printf("Received packet from %s:%d\n", inet_ntoa(packet.first.sin_addr), ntohs(packet.first.sin_port));
        printf("Received packet: %s\n", packet.second.data());
        p_udp_trans->send(packet.first, packet.second);
    }
    return 0;
}
