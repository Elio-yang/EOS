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
void spin_panic(char *filename,int32_t line,const char *funcname,const char *cond) __attribute__((noreturn));

#define panic(...) spin_panic(__FILE__,__LINE__,__FUNCTION__,__VA_ARGS__)

#ifdef DEBUG
#define Assert(cond) ((void)0)
#else
#define Assert(cond){ \
        if(cond){}      \
        else{panic(#cond);}\
        }
#endif

#endif //EOS_DEV_DEBUG_H
