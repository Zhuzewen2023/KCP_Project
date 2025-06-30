#include "ChatClient.hpp"
#include "KcpSession.hpp"
#include <arpa/inet.h>

ChatClient::ChatClient(const std::string& ip, uint16_t port) : server_ip_(ip), server_port_(port)
{
    memset(&server_addr_, 0, sizeof(server_addr_));
    server_addr_.sin_family = AF_INET;
    server_addr_.sin_port = htons(server_port_);
    inet_pton(AF_INET, server_ip_.c_str(), &server_addr_.sin_addr);
    session_ = std::make_unique<KcpSession>(server_addr_);
}

ChatClient::~ChatClient()
{
    disconnect();
}

bool ChatClient::connect()
{
    if(running_) return false;
    
    running_ = true;
    kcp_update_thread_ = std::thread(ChatClient::kcp_update_thread_func, this);
    network_thread_ = std::thread(ChatClient::network_thread_func, this);

    session_->send("CONNECT");
    return true;
}

void ChatClient::disconnect()
{
    if(!running_) return;
    session_->send("DISCONNECT");
    running_ = false;
    if(kcp_update_thread_.joinable()){
        kcp_update_thread_.join();
    }
    if(network_thread_.joinable()){
        network_thread_.join();
    }
    
}

void ChatClient::send(const std::string& message)
{
    if(!running_) return;
    session_->send(message);
}

void ChatClient::set_message_handler(MessageHandler handler)
{
    message_handler_ = handler;
}

void ChatClient::run()
{
    while(running_){

    }
}

void ChatClient::kcp_update_thread_func()
{
    while(running_){
        std::this_thread::sleep_for(10ms);
        session_->update_kcp();
    }
}

void ChatClient::network_thread_func()
{
    while(running_){
        std::string user_input;
        cout << "Please enter a message: ";
        cin >> user_input;
        if(user_input == "q"){
            disconnect();
        }
        session_->send(user_input);
        auto [from_addr, data] = session_->receive_raw();
        if(data.size() > 0){
            if(from_addr.sin_addr.s_addr == server_addr_.sin_addr.s_addr && 
            from_addr.sin_port == server_addr_.sin_port){
                session_->process_packet(data);
            }
        }
    }
}

static int ChatClient::udp_output(const char* buf, int len, ikcpcb* kcp, void* user)
{

}

