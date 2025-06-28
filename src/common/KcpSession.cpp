#include "KcpSession.hpp"
#include "KcpSessionFactory.hpp"
#include <chrono>
#include "ikcp.h"
#include <functional>
// #include <arpa/inet.h>

static int kcp_output(const char *buf, int len, ikcpcb *kcp, void *user)
{
    KcpSession* session = static_cast<KcpSession*>(user);
    session->send_raw(std::vector<uint8_t>(buf, buf + len));
    return 0;
}

KcpSession::KcpSession(const sockaddr_in& client_addr): client_addr_(client_addr_), 
last_update_time_(static_cast<uint32_t>(std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::steady_clock::now().time_since_epoch()).count()))
{
    kcp_ = KcpSessionFactory::create_kcp_session(this);
    ikcp_setoutput(kcp_, kcp_output);
    state_ = std::make_unique<UnauthenticatedState>();
    transport_ = std::make_unique<UdpTransport>(0);

}


void KcpSession::set_state(std::unique_ptr<ISessionState> state)
{
    state_ = std::move(state);
}

void KcpSession::handle_msg(const std::string& msg)
{
    state_->handle_msg(*this, msg);
}

void KcpSession::send(const std::string& msg)
{
    ikcp_send(kcp_, msg.c_str(), msg.size());
    update_kcp();
}

void KcpSession::send_raw(const std::vector<uint8_t>& data)
{
    if(transport_){
        transport_->send(client_addr_, data);
    }
}

void KcpSession::process_packet(const std::vector<uint8_t>& packet)
{
    ikcp_input(kcp_, reinterpret_cast<const char*>(packet.data()), packet.size());
    update_kcp();

    char buffer[4096];
    while(true){
        int len = ikcp_recv(kcp_, buffer, sizeof(buffer));
        if(len <= 0){
            break;
        }
        handle_msg(std::string(buffer, len));
    }
}

void KcpSession::update_kcp()
{
    auto now_ms = std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::steady_clock::now().time_since_epoch()).count();
    auto elapsed = static_cast<uint32_t>(now_ms) - last_update_time_;
    if(elapsed > 0){
        ikcp_update(kcp_, now_ms);
        last_update_time_ = now_ms;
    }

}

KcpSession::~KcpSession()
{
    if(kcp_){
        ikcp_release(kcp_);
        kcp_ = nullptr;
    }

}

void KcpSession::set_name(const std::string& name)
{
    name_ = name;
}

std::string KcpSession::get_name()
{
    return name_;
}

// void KcpSession::set_room(std::shared_ptr<Room> room)
// {
//     room_ = room;
// }

// std::shared_ptr<Room> KcpSession::get_room()
// {
//     return room_;
// }