#ifndef __SESSION_MANAGER_HPP__
#define __SESSION_MANAGER_HPP__

#include "Singleton.hpp"
#include "Session.hpp"
#include <memory>
#include <mutex>
#include <unordered_map>

class ISessionManager : public Singleton<ISessionManager> {
public:
    virtual std::shared_ptr<ISession> get_session(const sockaddr_in& addr) = 0;
protected:
    std::mutex mutex_;
    std::unordered_map<std::string, std::shared_ptr<ISession>> sessions_;
    
};

class KcpSessionManager : public ISessionManager {
public:
    std::shared_ptr<ISession> get_session(const sockaddr_in& addr) override;
};
#endif
