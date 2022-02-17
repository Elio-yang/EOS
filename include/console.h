/* 
 * console.h
 *
 * Created by ElioYang on 2022/2/17.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */

#ifndef EOS_DEV_CONSOLE_H
#define EOS_DEV_CONSOLE_H

#include "sync.h"
#include "stdio.h"

void console_init();

void console_acquire();

void console_release();

void console_print(uint8_t color,const char *fmt, ...);

#endif //EOS_DEV_CONSOLE_H
