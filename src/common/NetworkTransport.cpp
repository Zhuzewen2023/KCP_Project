#include "NetworkTransport.hpp"
#include <iostream>

UdpTransport::UdpTransport(int port){
    sockfd_ = socket(AF_INET, SOCK_DGRAM, 0);
    if(sockfd_ < 0){
        std::cout << "Failed to create socket" << std::endl;
        exit(1);

    }else{
        std::cout << "Socket created: " << sockfd_ << std::endl;
    }
    // sockaddr_in addr;
    addr_.sin_family = AF_INET;
    addr_.sin_port = htons(port);
    addr_.sin_addr.s_addr = INADDR_ANY;
    bind(sockfd_, (sockaddr*)&addr_, sizeof(addr_));


}

UdpTransport::UdpTransport(const sockaddr_in& addr){
    sockfd_ = socket(AF_INET, SOCK_DGRAM, 0);
    if(sockfd_ < 0){
        std::cout << "Failed to create socket" << std::endl;
        exit(1);

    }
    addr_ = addr;
    bind(sockfd_, (sockaddr*)&addr, sizeof(addr));
    // std::cout << "Socket created: " << sockfd_ << std::endl;
    // std::cout << "bind addr: " << inet_ntoa(addr.sin_addr) << std::endl;
    // std::cout << "bind port: " << ntohs(addr.sin_port) << std::endl;

}

UdpTransport::~UdpTransport(){
    close(sockfd_);
}

void UdpTransport::send(const sockaddr_in& addr, const std::vector<uint8_t>& data){
    // std::cout << __FILE__ << " " << __func__ << std::endl;
    // std::cout << "send addr: " << inet_ntoa(addr.sin_addr) << std::endl;
    // std::cout << "send port: " << ntohs(addr.sin_port) << std::endl;
    // std::cout << "send buffer: " << data.data() << std::endl;
    // std::cout << "send size: " << data.size() << std::endl;
    sendto(sockfd_, data.data(), data.size(), 0, (sockaddr*)&addr, sizeof(addr));
}

void UdpTransport::send(const std::vector<uint8_t>& data)
{
    // std::cout << __FILE__ << " " << __func__ << " " << __LINE__ << std::endl;
    // std::cout << "send addr: " << inet_ntoa(addr_.sin_addr) << std::endl;
    // std::cout << "send port: " << ntohs(addr_.sin_port) << std::endl;
    // std::cout << "send buffer: " << data.data() << std::endl;
    // std::cout << "send size: " << data.size() << std::endl;
    sendto(sockfd_, data.data(), data.size(), 0, (sockaddr*)&addr_, sizeof(addr_));
}

std::pair<sockaddr_in, std::vector<uint8_t>> UdpTransport::receive(){
    sockaddr_in addr;
    socklen_t addr_len = sizeof(addr);
    std::vector<uint8_t> buffer(65536);
    int len = recvfrom(sockfd_, buffer.data(), buffer.size(), 0, (sockaddr*)&addr, &addr_len);
    // std::cout << __FILE__ << " " << __func__ << std::endl;
    // std::cout << " recv len: " << len << std::endl;
    // std::cout << "recv addr: " << inet_ntoa(addr.sin_addr) << std::endl;
    // std::cout << "recv port: " << ntohs(addr.sin_port) << std::endl;
    // std::cout << "recv buffer: " << buffer.data() << std::endl;
    buffer.resize(len > 0 ? len : 0);
    return std::make_pair(addr, buffer);
}

// void UdpTransport::close()
// {
//     close(sockfd_);
//     sockfd_ = -1;
// }