#ifndef __COMMAND_ROUTER_HPP__
#define __COMMAND_ROUTER_HPP__

#include <vector>
#include <memory>
#include "Session.hpp"

class ICommandHandler
{
public:
    virtual void handle_command(Session& session, const std::string& command) = 0;
    virtual bool can_handle(const std::string& command) = 0;
    virtual ~ICommandHandler() = default;
};

/*加入房间命令处理*/
class JoinCommandHandler : public ICommandHandler
{
public:
    void handle_command(Session& session, const std::string& command) override;
    bool can_handle(const std::string& command) override;
};

/*名称设置命令处理*/
class NameCommandHandler : public ICommandHandler
{
public:
    void handle_command(Session& session, const std::string& command) override;
    bool can_handle(const std::string& command) override;
};


class CommandRouter
{
private:
    std::vector<std::unique_ptr<ICommandHandler>> handlers;
public:
};

#endif
