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

#ifndef EOS_DEV_SYNC_H
#define EOS_DEV_SYNC_H

#include "thread.h"
#include "list.h"
#include "atomic.h"
#include "debug.h"

typedef struct semaphore {
        int32_t value;
        uint32_t sleepers;
        /* wait in this semaphore */
        struct list waiter_list;
} semaphore_t;

typedef struct lock {
        struct task_struct *holder;
        // binary = 1
        semaphore_t semaphore;
        // how many times tried
        uint32_t try;
} lock_t;

void sem_init(semaphore_t *sem, int32_t value);
void down(semaphore_t *sem);
void up(semaphore_t *sem);

void lock_init(lock_t *lock);
void lock_acquire(lock_t *lock);
void lock_release(lock_t *lock);


#endif //EOS_DEV_SYNC_H
