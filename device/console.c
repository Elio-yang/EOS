/* 
 * console.c
 *
 * Created by ElioYang on 2022/2/17.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */

#include "console.h"

static lock_t console_lock;

inline void console_init(){
        lock_init(&console_lock);
}

inline void console_acquire(){
        lock_acquire(&console_lock);
}

inline void console_release(){
        lock_release(&console_lock);
}

void console_print(uint8_t color,const char *fmt, ...)
{
        console_acquire();
        va_list ap;
        va_start(ap, fmt);
        vcprintf(color,fmt, ap);
        va_end(ap);
        console_release();
}