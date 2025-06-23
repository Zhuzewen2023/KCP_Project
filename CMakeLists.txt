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

add_executable(kcp_chat_server 
                src/server/ChatServer.cpp
                src/common/NetworkTransport.cpp
                third_party/kcp/ikcp.c
                )

target_link_libraries(kcp_chat_server kcp pthread)

add_custom_target(run COMMAND ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/kcp_chat_server 
                    DEPENDS kcp_chat_server COMMENT "Running kcp_chat_server")