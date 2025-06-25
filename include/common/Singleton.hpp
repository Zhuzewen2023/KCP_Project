#ifndef __SINGLETON_HPP__
#define __SINGLETON_HPP__

template<typename T>
class Singleton
{
protected:
    Singleton() = default;
public:
    Singleton(const Singleton&) = delete;
    Singleton& operator=(const Singleton&) = delete;
    static T& get_instance(){
        static T instance;
        return instance;
    }
};


#endif
