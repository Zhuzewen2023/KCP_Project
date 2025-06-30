#include <cstdio>
#include <vector>
#include <memory>
#include <arpa/inet.h>
#include <iostream>
#include "NetworkTransport.hpp"
#include "ChatClient.hpp"

using namespace std;

int main(int argc, char* argv[])
{
    ChatClient client("192.168.30.14", 7654);
    cout << "client main test" << endl;
    client.connect();
    client.run();
    return 0;
}