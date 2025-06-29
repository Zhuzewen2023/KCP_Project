#include <cstdio>
#include <vector>
#include <memory>
#include <arpa/inet.h>
#include "NetworkTransport.hpp"
#include "ChatServer.hpp"

int main(){
    KcpChatServer kcp_server(7654);
    kcp_server.start();

    return 0;
}