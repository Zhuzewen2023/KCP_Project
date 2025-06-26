#include "SessionManager.hpp"

std::shared_ptr<ISession> KcpSessionManager::get_session(const sockaddr_in& addr) {
    std::lock_guard<std::mutex> lock(mutex_);
    auto it = sessions_.find(addr);
    if (it == sessions_.end()) {
        auto session = std::make_shared<KcpSession>(addr);
        sessions_[addr] = session;
        return session;
    }
    return it->second;
}