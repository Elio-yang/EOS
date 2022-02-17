/* 
 * debug.h
 *
 * Created by ElioYang on 2022/1/29.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */

#ifndef EOS_DEV_DEBUG_H
#define EOS_DEV_DEBUG_H

#include "stdint.h"
#include "io.h"


enum debug_type{
        INFO_t=0,
        DEBUG_t,
        WARN_t,
        ERROR_t
};


void tell(char *filename,int32_t line,const char *func,enum debug_type type,const char *msg);



#define BASIC_INFO __FILE__,__LINE__,__FUNCTION__

#define DEBUG

#ifndef DEBUG

#define Assert(cond) ((void)0)
#define panic(...) ((void)0)
#define INFO(...)  ((void)0)
#else
#define Assert(cond){ \
        if(cond){}      \
        else{         \
        __ASM__("INT $0x21");\
        panic(#cond);}\
        }

#define panic(...) tell(__FILE__,__LINE__,__FUNCTION__,ERROR_t,__VA_ARGS__)
#define INFO(...)  tell(__FILE__,__LINE__,__FUNCTION__,INFO_t,__VA_ARGS__)

#endif

#endif //EOS_DEV_DEBUG_H
