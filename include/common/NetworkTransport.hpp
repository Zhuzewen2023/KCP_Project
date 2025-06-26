#ifndef __NETWORKTRANSPORT_HPP__
#define __NETWORKTRANSPORT_HPP__

#include <vector>
#include <cstdint>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <unistd.h>
#include <cstring>
#include <utility>
#include <iostream>
#include <string>


class INetworkTransport{
public:
    virtual void send(const sockaddr_in& addr, const std::vector<uint8_t>& data) = 0;
    virtual std::pair<sockaddr_in, std::vector<uint8_t>> receive() = 0;
    // virtual void close() = 0;
    virtual ~INetworkTransport() = default;
};

class UdpTransport : public INetworkTransport{
private:
    int sockfd_ = -1;
public:
    UdpTransport(int port);
    ~UdpTransport() override;
    void send(const sockaddr_in& addr, const std::vector<uint8_t>& data) override;
    std::pair<sockaddr_in, std::vector<uint8_t>> receive() override;
    // void close() override;
};

#endif
