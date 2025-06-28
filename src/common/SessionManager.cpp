#include "SessionManager.hpp"
#include "KcpSession.hpp"

std::shared_ptr<ISession> KcpSessionManager::get_session(const sockaddr_in& addr) {
    std::lock_guard<std::mutex> lock(mutex_);
    std::string key = addr_to_string(addr);
    auto it = sessions_.find(key);
    if (it == sessions_.end()) {
        auto session = std::make_shared<KcpSession>(addr);
        sessions_[key] = session;
        return session;
    }
    return it->second;
}