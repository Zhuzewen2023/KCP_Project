#include "SessionManager.hpp"
#include "KcpSession.hpp"
#include <iostream>

using namespace std;

std::shared_ptr<ISession> KcpSessionManager::get_session(INetworkTransport *transport,  sockaddr_in& addr) {
    std::lock_guard<std::mutex> lock(mutex_);
    std::string key = addr_to_string(addr);
    cout << "get session key: " << key << endl;
    auto it = sessions_.find(key);
    if (it == sessions_.end()) {
        auto session = std::make_shared<KcpSession>(addr);
        cout << "create session key: " << key << endl;
        session->set_transport(transport);
        sessions_[key] = session;
        return session;
    }
    return it->second;
}