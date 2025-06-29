cmake_minimum_required(VERSION 3.10)

project(KCP_Chat_Server VERSION 1.0.0)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

add_library(kcp STATIC third_party/kcp/ikcp.c)


include_directories(${CMAKE_SOURCE_DIR}/include
                    ${CMAKE_SOURCE_DIR}/include/client
                    ${CMAKE_SOURCE_DIR}/include/server
                    ${CMAKE_SOURCE_DIR}/include/common
                    ${CMAKE_SOURCE_DIR}/third_party/kcp
)

set(COMMON_SOURCES
    src/common/CommandRouter.cpp
    src/common/KcpSession.cpp
    src/common/KcpSessionFactory.cpp
    src/common/NetworkTransport.cpp
    src/common/Room.cpp
    src/common/Session.cpp
    src/common/SessionManager.cpp
    src/common/Singleton.cpp
)


add_executable(kcp_chat_server 
                src/server/ChatServer.cpp
                ${COMMON_SOURCES}
                third_party/kcp/ikcp.c
                src/server_main.cpp
                )

add_executable(kcp_chat_client
                src/client/ChatClient.cpp
                ${COMMON_SOURCES}
                third_party/kcp/ikcp.c
                src/client_main.cpp
                )       

target_link_libraries(kcp_chat_server kcp pthread)
target_link_libraries(kcp_chat_client kcp pthread)

add_custom_target(run_server COMMAND ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/kcp_chat_server 
                    DEPENDS kcp_chat_server COMMENT "Running kcp_chat_server")

add_custom_target(run_client COMMAND ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/kcp_chat_client
                    DEPENDS kcp_chat_client COMMENT "Running kcp_chat_client")