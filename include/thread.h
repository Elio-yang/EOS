/* 
 * thread.h
 *
 * Created by ElioYang on 2022/2/11.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */

#ifndef EOS_DEV_THREAD_H
#define EOS_DEV_THREAD_H

#include "stdint.h"
typedef void (thread_func)(void *);
// state of a thread or process
enum TASK_STATE{
        TASK_RUNNING,
        TASK_READY,
        TASK_BLOCKED,
        TASK_WAITING,
        TASK_HANGING,
        TASK_DIED
};

struct interrupt_stack{
        uint32_t vectorno;
        uint32_t edi;
        uint32_t esi;
        uint32_t ebp;
        uint32_t esp_dummy;
        uint32_t ebx;
        uint32_t edx;
        uint32_t ecx;
        uint32_t eax;
        uint32_t gs;
        uint32_t fs;
        uint32_t es;
        uint32_t ds;

        /* done by cpu from low PL to high PL */
        uint32_t error_code;
        void (*eip)(void);
        uint32_t cs;
        uint32_t eflages;
        void* esp;
        uint32_t ss;

};

/*
 * when start the thread we will  mov kthread->thread_stack,%esp
 * so stack will be like:
 * --------
 *  ebp         <------esp
 *  ebx
 *  edi
 *  esi
 *  eip
 *  pad
 *  func
 *  arg
 * --------
 *  after doing pop:
 * --------
 *  eip  <------esp
 *  pad
 *  func
 *  arg
 * --------
 * then the ret will set cs:eip --> kernel_thread
 * so we are using ret to execute kernel_thread
 * the pad(unused_ret_addr) is the simulation of
 * ordinary call method, otherwise we fail.
 *
 * */



struct thread_stack{
        /* ABI related */
        uint32_t ebp;
        uint32_t ebx;
        uint32_t edi;
        uint32_t esi;

        /*
         * when first created  eip pointed to the function (kernel_thread)
         * other time this is the  return address after switch_to
         * */
        void (*eip)(thread_func func,void * func_arg);
        /* just as a base will not use this*/
        void (*pad);
        thread_func * function;
        void* func_arg;
};

struct task_struct{
        uint32_t *self_kernel_stack;
        enum TASK_STATE state;
        uint8_t prio;
        char name[16];
        /* overflow related */
        uint32_t stack_magic;
};



struct task_struct* kthread_start(const char *name,uint8_t priority,thread_func func,void *func_arg);
void kthread_init(struct task_struct *kthread , const char*name,int priority);
void kthread_create(struct task_struct *kthread, thread_func function, void* arg);
#endif //EOS_DEV_THREAD_H
