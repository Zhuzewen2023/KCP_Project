#include "CommandRouter.hpp"
#include "Room.hpp"

bool JoinCommandHandler::can_handle(const std::string& command) 
{
    return command.find("/join ") == 0;
}

void JoinCommandHandler::handle_command(ISession& session, const std::string& command)
{
    int room_id = std::stoi(command.substr(6));
    // RoomManager::get_instance().move_session(session, room_id);
    // session.send("Joined room " + std::to_string(room_id));
}

void CommandRouter::execute(ISession& session, const std::string& command)
{

}

void CommandRouter::register_handler(const std::string& command, std::unique_ptr<ICommandHandler> handler)
{

}

void CommandRouter::unregister_handler(const std::string& command)
{
    
}