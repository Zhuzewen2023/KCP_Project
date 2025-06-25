#ifndef __SESSION_HPP__
#define __SESSION_HPP__

#include "NetworkTransport.hpp"
#include "CommandRouter.hpp"
#include <memory>
#include <string>

class ISessionState
{
public:
    virtual void handle_msg(Session& session, const std::string& msg) = 0;
    virtual ~ISessionState() = default;
};

class AuthenticatedState : public ISessionState
{
public:
    void handle_msg(Session& session, const std::string& msg) override;
};

class UnauthenticatedState : public ISessionState
{
public:
    void handle_msg(Session& session, const std::string& msg) override;
};

class ISession
{
private:
    std::unique_ptr<ISessionState> state_;
    std::unique_ptr<INetworkTransport> transport_;
    std::string name_;
    std::shared_ptr<Room> room_;
public:
    virtual void set_state(std::unique_ptr<ISessionState> state) = 0;
    virtual void handle_msg(const std::string& msg) = 0;
    virtual void send(const std::string& msg) = 0;
    virtual void set_name(const std::string& name) = 0;
    virtual void set_room(std::shared_ptr<Room> room) = 0;
    virtual std::string get_name() = 0;
    virtual std::shared_ptr<Room> get_room() = 0;
    virtual ~ISession() = default;
};

class UdpSession : public ISession
{
public:
    UdpSession();
    void set_state(std::unique_ptr<ISessionState> state) override;
    void handle_msg(const std::string& msg) override;
    void send(const std::string& msg) override;
    std::string get_name() override;
    void set_name(const std::string& name) override;
    void set_room(std::shared_ptr<Room> room) override;
};

#endif
