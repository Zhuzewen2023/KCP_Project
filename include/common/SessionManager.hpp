#ifndef __SESSION_MANAGER_HPP__
#define __SESSION_MANAGER_HPP__

#include "Singleton.hpp"
#include "Session.hpp"
#include <memory>
#include <mutex>
#include <unordered_map>
#include <iostream>
#include <sstream>

class ISessionManager 
{
public:
    virtual std::shared_ptr<ISession> get_session(INetworkTransport* transport, sockaddr_in& addr) = 0;
protected:
    std::mutex mutex_;
    std::unordered_map<std::string, std::shared_ptr<ISession>> sessions_;
    
};

static std::string addr_to_string(const sockaddr_in& addr)
{
    std::ostringstream oss;
    oss << inet_ntoa(addr.sin_addr) << ":" << ntohs(addr.sin_port);
    return oss.str();
}

class KcpSessionManager : public ISessionManager, public Singleton<KcpSessionManager> 
{
public:
    std::shared_ptr<ISession> get_session(INetworkTransport* transport, sockaddr_in& addr) override;
private:
    
};
#endif
