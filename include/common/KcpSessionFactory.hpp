#ifndef __KCP_SESSION_FACTORY_HPP__
#define __KCP_SESSION_FACTORY_HPP__

#include "ikcp.h"
class KcpSessionFactory
{
public:
    static ikcpcb* create_kcp_session(void *user)
    {
        ikcpcb *kcp = ikcp_create(0/*conv对话ID*/, user);
        ikcp_nodelay(kcp, 1/*启用nodelay*/, 10/*10ms*/, 2/*收到两个重复ACK*/, 1/*关闭拥塞控制*/);
        ikcp_wndsize(kcp, 128/*发送窗口大小*/, 128/*接受窗口大小*/);
        return kcp;
    }


private:
    KcpSessionFactory() {}
    ~KcpSessionFactory() {}
}

#endif
