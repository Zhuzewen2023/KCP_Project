#include "KcpSession.hpp"
#include "KcpSessionFactory.hpp"
#include <chrono>
#include "ikcp.h"
#include <functional>
#include <iostream>

using namespace std;
// #include <arpa/inet.h>

static int kcp_output(const char *buf, int len, ikcpcb *kcp, void *user)
{
    // cout << "KcpSession kcp_output" << endl;
    KcpSession* session = static_cast<KcpSession*>(user);
    session->send_raw(std::vector<uint8_t>(buf, buf + len));
    // 十六进制打印
    // std::cout << "KcpSession send_raw (hex): ";
    // for (int i = 0; i < len; ++i) {
    //     std::printf("%02X ", static_cast<uint8_t>(buf[i]));
    // }
    // std::cout << "\n";
    return 0;
}

KcpSession::KcpSession(const sockaddr_in& client_addr): client_addr_(client_addr_), 
last_update_time_(static_cast<uint32_t>(std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::steady_clock::now().time_since_epoch()).count()))
{
    kcp_ = KcpSessionFactory::create_kcp_session(this);
    ikcp_setoutput(kcp_, kcp_output);
    state_ = std::make_unique<UnauthenticatedState>();
    // transport_ = std::make_unique<UdpTransport>(0);
}

void KcpSession::start_update_thread()
{
    this->is_running_ = true;
    update_thread_ = std::thread([this](){
        while(this->is_running_){
            // std::cout << "KcpSession update thread running" << std::endl;
            this_thread::sleep_for(std::chrono::milliseconds(10));
            update_kcp();
        }
    });
}

void KcpSession::stop_update_thread()
{
    this->is_running_ = false;
    if(update_thread_.joinable()){
        update_thread_.join();
    }
}


void KcpSession::set_transport(INetworkTransport *transport)
{
    if(transport){
        transport_ = transport;
        // std::cout << "set transport success" << std::endl;
    }else{
        // std::cout << "set transport failed" << std::endl;
    }
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
    std::cout << "ikcp send : " << msg << std::endl;
    ikcp_send(kcp_, msg.c_str(), msg.size());
    update_kcp();
}

void KcpSession::send_raw(const std::vector<uint8_t>& data)
{
    // std::cout << "KcpSession::send_raw (hex): ";
    // for (auto byte : data) {
    //     std::printf("%02X ", byte);
    // }
    // std::cout << "\n";
    if(transport_){
        transport_->send(data);
    }else{
        std::cout << "KcpSession::send_raw transport_ is nullptr" << std::endl;
    }
}

std::pair<sockaddr_in, std::vector<uint8_t>> KcpSession::receive_raw()
{
    if(transport_){
        return transport_->receive();
    }
    return std::make_pair(sockaddr_in{}, std::vector<uint8_t>{});
}

void KcpSession::process_packet(const std::vector<uint8_t>& packet)
{
    if(!kcp_){
        cout << "KcpSession process_packet kcp_ is nullptr" << endl;
        return;
    }
    ikcp_input(kcp_, reinterpret_cast<const char*>(packet.data()), packet.size());
    update_kcp();
    // cout << "KcpSession process packet" << endl;
    char buffer[4096];
    while(true){
        memset(buffer, 0, sizeof(buffer));
        int len = ikcp_recv(kcp_, buffer, sizeof(buffer));
        if(len <= 0){
            // cout << "ikcp_recv len <= 0, KcpSession process packet break" << endl;
            if(len == 0){
                // cout << "ikcl_recv == 0, no data to read" << endl;
            }else{
                // cout << "ikcp_recv len < 0, error: " << len << endl;
            }
            break;
        }else{
            cout << "ikcp_recv len > 0, recv: " << buffer << endl;
        }
        handle_msg(std::string(buffer, len));
    }
}

void KcpSession::update_kcp()
{
    auto now_ms = std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::steady_clock::now().time_since_epoch()).count();
    auto elapsed = static_cast<uint32_t>(now_ms) - last_update_time_;
    if(elapsed > 0){
        // cout << "KcpSession update_kcp elapsed: " << elapsed << " now_ms: " << now_ms << endl;
        ikcp_update(kcp_, now_ms);
        last_update_time_ = now_ms;
    }

}

KcpSession::~KcpSession()
{
    stop_update_thread();
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