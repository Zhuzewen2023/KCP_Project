#include "Session.hpp"

// UdpSession::UdpSession()
// {
//     transport_ = std::make_unique<UdpTransport>();
// }

// void UdpSession::set_state(std::unique_ptr<ISessionState> state)
// {
//     state_ = std::move(state);
// }

// void UdpSession::handle_msg(const std::string& msg)
// {
//     state_->handle_msg(*this, msg);
// }

// void UdpSession::send(const std::string& msg)
// {
//     transport_->send(msg);
// }

// void UdpSession::set_name(const std::string& name)
// {
//     name_ = name;
// }

// std::string UdpSession::get_name()
// {
//     return name_;
// }

// void UdpSession::set_room(std::shared_ptr<Room> room)
// {
//     room_ = room;
// }

// std::shared_ptr<Room> UdpSession::get_room()
// {
//     return room_;
// }



void AuthenticatedState::handle_msg(Session& session, const std::string& msg)
{
    if(msg[0] == '/'){
        CommandRouter::get_instance().execute(session, msg);
    }else{
        session.get_room().broadcast(msg, session);
    }
}

void UnauthenticatedState::handle_msg(Session& session, const std::string& msg)
{
    if(msg.find("/auth ") == 0){
        session.set_state(std::make_unique<AuthenticatedState>());
    }else{
        session.send("You are not authenticated");
    }
}