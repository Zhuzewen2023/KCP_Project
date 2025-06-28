#ifndef __ROOM_HPP__
#define __ROOM_HPP__

#if 0
#include <memory>
#include <vector>
#include <unordered_map>
#include "Session.hpp"
#include "Singleton.hpp"

class Room : public std::enable_shared_from_this<Room> 
{
private:
    int id_;
    std::vector<std::weak_ptr<ISession>> members_;
public:
    Room(int id) : id_(id) {}
    void add_member(std::shared_ptr<ISession> member) {
        members_.push_back(member);
    }

    void remove_member(std::shared_ptr<ISession> member) {
        if(!member){
            return;
        }
        std::weak_ptr<ISession> member_weak = member;
        members_.erase(std::remove(members_.begin(), members_.end(), member_weak), members_.end());

    }

    void broadcast(const std::string& message, std::shared_ptr<ISession> sender) {
        auto formatted = "[" + sender->get_name() + "]: " + message;

        for(auto& member : members_) {
            if(auto shared_member = member.lock()) {
                if(shared_member != sender){
                    shared_member->send(formatted);
                }
            }
        }
        
    }
};

class RoomManager : public Singleton<RoomManager>
{
private:
    std::unordered_map<int, std::shared_ptr<Room>> rooms_;
public:
    std::shared_ptr<Room> get_room(int id) {
        auto it = rooms_.find(id);
        if(it != rooms_.end()) {
            return it->second;
        }
        return make_shared<Room>(id);
    }

    void move_session(std::shared_ptr<ISession> session, int room_id) {
        if(auto curr_room = session->get_room()){
            curr_room->remove_member(session);
        }
        if(auto room = get_room(room_id)) {
            room->add_member(session);
            session->set_room(room);
        }
    }
    
};
#endif

#endif
