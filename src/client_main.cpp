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
    ChatClient client("127.0.0.1", 7654);
    cout << "client main test" << endl;
    client.connect();

    return 0;
}