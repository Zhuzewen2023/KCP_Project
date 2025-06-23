#ifndef __NETWORKTRANSPORT_HPP__
#define __NETWORKTRANSPORT_HPP__

#include <vector>
#include <cstdint>
#include <netinet/in.h>

class INetworkTransport{
public:
    virtual void send(const sockaddr_in& addr, const std::vector<uint8_t>& data) = 0;
    virtual std::pair<sockaddr_in, std::vector<uint8_t>> receive() = 0;
    virtual ~INetworkTransport() = default;
};


#endif
