#include <cstdio>
#include <vector>
#include <memory>
#include <arpa/inet.h>
#include "NetworkTransport.hpp"
#include "ChatServer.hpp"

int main(){
    KcpChatServer kcp_server(7654);
    kcp_server.start();
    // unique_ptr<INetworkTransport> p_udp_trans = make_unique<UdpTransport>(7654);
    // while(1){
    //     std::pair<sockaddr_in, std::vector<uint8_t>> packet;
    //     packet = p_udp_trans->receive();
    //     printf("Received packet from %s:%d\n", inet_ntoa(packet.first.sin_addr), ntohs(packet.first.sin_port));
    //     printf("Received packet: %s\n", packet.second.data());
    //     p_udp_trans->send(packet.first, packet.second);
    // }
    return 0;
}