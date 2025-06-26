#include "NetworkTransport.hpp"

UdpTransport::UdpTransport(int port){
    sockfd_ = socket(AF_INET, SOCK_DGRAM, 0);
    sockaddr_in addr;
    addr.sin_family = AF_INET;
    addr.sin_port = htons(port);
    addr.sin_addr.s_addr = INADDR_ANY;
    bind(sockfd_, (sockaddr*)&addr, sizeof(addr));

}

UdpTransport::~UdpTransport(){
    close(sockfd_);
}

void UdpTransport::send(const sockaddr_in& addr, const std::vector<uint8_t>& data){
    sendto(sockfd_, data.data(), data.size(), 0, (sockaddr*)&addr, sizeof(addr));
}

std::pair<sockaddr_in, std::vector<uint8_t>> UdpTransport::receive(){
    sockaddr_in addr;
    socklen_t addr_len = sizeof(addr);
    std::vector<uint8_t> buffer(65536);
    int len = recvfrom(sockfd_, buffer.data(), buffer.size(), 0, (sockaddr*)&addr, &addr_len);
    buffer.resize(len > 0 ? len : 0);
    return std::make_pair(addr, buffer);
}

// void UdpTransport::close()
// {
//     close(sockfd_);
//     sockfd_ = -1;
// }