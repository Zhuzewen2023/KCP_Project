#ifndef __KCP_SESSION_FACTORY_HPP__
#define __KCP_SESSION_FACTORY_HPP__

#include <random>
#include "ikcp.h"
class KcpSessionFactory
{
public:
    static ikcpcb* create_kcp_session(void *user)
    {
        // 生成随机 conv ID (32位无符号整数)
        static std::random_device rd;
        static std::mt19937 gen(rd());
        static std::uniform_int_distribution<uint32_t> dis(1, 0xFFFFFFFF); // 排除0

        uint32_t conv = dis(gen);
        ikcpcb *kcp = ikcp_create(conv/*conv对话ID*/, user);
        ikcp_nodelay(kcp, 1/*启用nodelay*/, 10/*10ms*/, 2/*收到两个重复ACK*/, 1/*关闭拥塞控制*/);
        ikcp_wndsize(kcp, 128/*发送窗口大小*/, 128/*接受窗口大小*/);
        return kcp;
    }


private:
    KcpSessionFactory() = delete;
    ~KcpSessionFactory() {}
};

#endif
