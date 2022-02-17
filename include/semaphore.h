/* 
 * semaphore.h
 *
 * Created by ElioYang on 2022/2/17.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */

#ifndef EOS_DEV_SEMAPHORE_H
#define EOS_DEV_SEMAPHORE_H
#include "thread.h"
#include "list.h"

struct semaphore{
        uint8_t value;

        struct list waiters;
};


#endif //EOS_DEV_SEMAPHORE_H
