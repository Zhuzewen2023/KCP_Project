#include "CommandRouter.hpp"
#include "Room.hpp"
bool JoinCommandHandler::can_handle(const std::string& command) 
{
    return command.find("/join ") == 0;
}

void JoinCommandHandler::handle_command(Session& session, const std::string& command)
{
    int room_id = std::stoi(command.substr(6));
    RoomManager::get_instance().move_session(session, room_id);
    session.send("Joined room " + std::to_string(room_id));
}