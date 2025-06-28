#ifndef __KCP_SESSION_HPP__
#define __KCP_SESSION_HPP__

#include "Session.hpp"
#include "ikcp.h"
#include <arpa/inet.h>

class KcpSession : public ISession
{
public:
    KcpSession(const sockaddr_in& client_addr);
    ~KcpSession();
    void set_state(std::unique_ptr<ISessionState> state) override;
    void handle_msg(const std::string& msg) override;
    void send(const std::string& msg) override;
    void send_raw(const std::vector<uint8_t>& msg) override;
    std::string get_name() override;
    void set_name(const std::string& name) override;
    // void set_room(std::shared_ptr<Room> room) override;
    void process_packet(const std::vector<uint8_t>& packet) override;
private:
    void update_kcp(); // update kcp session
    ikcpcb *kcp_ = nullptr; // kcp session
    struct sockaddr_in client_addr_;
    uint32_t last_update_time_ = 0;
};

#endif
