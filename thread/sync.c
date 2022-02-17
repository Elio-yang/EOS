/* 
 * semaphore.c
 *
 * Created by ElioYang on 2022/2/17.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */

#include "sync.h"

void sem_init(semaphore_t *sem, int32_t value){
        sem->value=value;
        sem->sleepers=0;
        list_init(&sem->waiter_list);
}
void down(semaphore_t *sem){
        enum interrupt_status old = interrupt_disable();

        /* always try value */
        while (sem->value==0){
                struct task_struct *cur = current_running_thread();
                list_insert_head(&sem->waiter_list,&cur->ready_list_tag);
                /* schedule */
                thread_block(TASK_BLOCKED);
        }

        sem->value--;

        interrupt_set_status(old);
}

void up(semaphore_t *sem){
        enum interrupt_status old = interrupt_disable();

        if(!list_empty(&sem->waiter_list)){
                struct list_entry * entry = list_first(&sem->waiter_list);
                struct task_struct *task = container_of(entry,struct task_struct,ready_list_tag);
                thread_unblock(task);
        }
        sem->value++;

        interrupt_set_status(old);
}

void lock_init(lock_t *lock){
        lock->holder=NULL;
        /* binary */
        sem_init(&lock->semaphore,1);
}

void lock_acquire(lock_t *lock){
        struct task_struct *cur = current_running_thread();
        if(lock->holder !=cur){
                down(&lock->semaphore);
                lock->holder = cur;
                lock->try = 1;
        }else{
                lock->try++;
        }
}
void lock_release(lock_t *lock){
        Assert(lock->holder==current_running_thread());
        if(lock->try>1){
                lock->try--;
                return;
        }
        lock->holder = NULL;
        lock->try = 0;
        up(&lock->semaphore);
}


