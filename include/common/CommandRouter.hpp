#ifndef __COMMAND_ROUTER_HPP__
#define __COMMAND_ROUTER_HPP__

#include <vector>
#include <memory>
#include <unordered_map>
#include "Session.hpp"
#include "Singleton.hpp"

class ISession;

class ICommandHandler
{
public:
    virtual void handle_command(ISession& session, const std::string& command) = 0;
    virtual bool can_handle(const std::string& command) = 0;
    virtual ~ICommandHandler() = default;
};

/*加入房间命令处理*/
class JoinCommandHandler : public ICommandHandler
{
public:
    void handle_command(ISession& session, const std::string& command) override;
    bool can_handle(const std::string& command) override;
};

/*名称设置命令处理*/
class NameCommandHandler : public ICommandHandler
{
public:
    void handle_command(ISession& session, const std::string& command) override;
    bool can_handle(const std::string& command) override;
};


class CommandRouter : public Singleton<CommandRouter>
{
private:
    std::unordered_map<std::string, std::unique_ptr<ICommandHandler>> handlers_map;
public:
    void execute(ISession& session, const std::string& command);
    void register_handler(const std::string& command, std::unique_ptr<ICommandHandler> handler);
    void unregister_handler(const std::string& command);
};

#endif
