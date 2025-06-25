#ifndef __SESSION_MANAGER_HPP__
#define __SESSION_MANAGER_HPP__

#include "Singleton.hpp"
#include <memory>
#include <mutex>
#include <unordered_map>

class SessionManager : public Singleton<SessionManager> {
public:

private:
    std::mutex mutex_;
    std::unordered_map<std::string, std::shared_ptr<Session>> sessions_;
    
};

#endif
