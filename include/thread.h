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
#include "list.h"
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




struct thread_stack{
        /* ABI related */
        uint32_t ebp;
        uint32_t ebx;
        uint32_t edi;
        uint32_t esi;

        /*
         * when first created  eip pointed to the function (kernel_thread)
         * other time this is the return address after switch_to
         * so only used when first time.
         * */
        void (*eip)(thread_func func,void * func_arg);
        /* just as a base will not use this*/
        void (*pad);
        thread_func * function;
        void* func_arg;
};
/*
 * +---------------+ <------HIGH 0xXXXXXfff      esp first pointed to
 * | @int stack    |
 * | ss            |
 * | esp           |
 * | eflags        |
 * | cs            |
 * | eip           |
 * | error_code    |
 * | ds            |
 * | es            |
 * | fs            |
 * | gs            |
 * | eax~edi       |
 * | vectorNo      |
 * +---------------+
 * | @thread stack |
 * | func_arg      |
 * | func          |
 * | pad_ret       |
 * | eip           |
 * | esi           |
 * | edi           |
 * | ebx           |
 * | ebp           |
 * +---------------+ <----------'
 * | magic         |            |
 * | pgdir         |            |
 * | all_list_tag  |            |
 * | ready_list_tag|            |
 * | all_ticks     |            |
 * | ticks         |            |
 * | prio          |            |
 * | name[16]      |            |
 * | state         |            |
 * | self_kstack   |------------'
 * +---------------+   0xXXXXX000
 *
 * */

struct task_struct{
        uint32_t *self_kernel_stack;
        enum TASK_STATE state;
        char name[16];
        uint8_t prio;
        /* how many ticks should be given*/
        uint8_t ticks_each;
        /* how many ticks since been executed*/
        uint32_t total_ticks;

        struct list_entry ready_list_tag;
        struct list_entry all_list_tag;

        /* virtual page table address for this */
        viraddr_t * pgdir;


        /* overflow related */
        uint32_t stack_magic;
};
#define THREAD_MAGIC (0x19870916)
#define MAIN_THREAD_PRIO (10)

struct task_struct* kthread_start(const char *name,uint8_t priority,thread_func func,void *func_arg);
void kthread_init(struct task_struct *kthread , const char*name,int priority);
void kthread_create(struct task_struct *kthread, thread_func function, void* arg);
void thread_init();
void thread_block(enum TASK_STATE state);
void thread_unblock(struct task_struct *kthread);

struct task_struct * current_running_thread();
void schedule();

#endif //EOS_DEV_THREAD_H
