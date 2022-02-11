/* 
 * thread.c
 *
 * Created by ElioYang on 2022/2/11.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */

#include "thread.h"
#include "memory.h"
#include "string.h"
#include "stdint.h"

/* kernel thread used for execute function */
static void kernel_thread(thread_func* function,void * arg){
        function(arg);
}

void kthread_create(struct task_struct *kthread, thread_func function, void* arg){
        /* reserve space for int */
        kthread->self_kernel_stack -= sizeof(struct interrupt_stack);
        printf("in self stack :%08x\n",kthread->self_kernel_stack);
        /* reserve space for thread space */
        kthread->self_kernel_stack -= sizeof(struct thread_stack);
        printf("self stack :%08x\n",kthread->self_kernel_stack);
        struct thread_stack * kthread_stack = (struct thread_stack*)(kthread->self_kernel_stack);
        kthread_stack->eip= kernel_thread;
        printf("k_thread %08x\n",(uint32_t)kernel_thread);
        kthread_stack->function=function;
        kthread_stack->func_arg=arg;
        kthread_stack->ebp=0;
        kthread_stack->ebx=0;
        kthread_stack->esi=0;
        kthread_stack->edi=0;
}


void kthread_init(struct task_struct *kthread , const char*name,int priority){
        memset(kthread,0,sizeof(struct task_struct));
        strcpy(kthread->name,name);
        kthread->state=TASK_RUNNING;
        kthread->prio=priority;
        kthread->self_kernel_stack=(uint32_t*)((uint32_t)kthread+PGSIZE);
        printf("init self stack :%08x\n",kthread->self_kernel_stack);
        kthread->stack_magic = 0x19870916;
}

struct task_struct* kthread_start(const char *name,uint8_t priority,thread_func func,void *func_arg){
        struct task_struct *kthread = get_kernel_page(1);
        printf("kthread:%08x\n",(int32_t)kthread);
        kthread_init(kthread,name,priority);
        kthread_create(kthread,func,func_arg);

//        __ASM__("movl %0, %%esp \n\t"
//                "pop  %%ebp     \n\t"
//                "pop  %%ebx     \n\t"
//                "pop  %%edi     \n\t"
//                "pop  %%esi     \n\t"
//                "push 0         \n\t"
//                "movl %%esp,%%ebp \n\t"
//                :
//                :"g"(kthread->self_kernel_stack)
//                :"memory"
//                );
/*
 * don't forget the ret instruction(like above)
 * not directly ret will cause a leave instruction
 * which will be like
 *
 * mov ebp ,esp
 * pop ebp
 * ret
 *
 * this will mess up the stack we want
 * so before leave we use ret.
 *
 * ( or you could used some tricks to
 *   set esp we wan ,just like above
 *   not recommend.
 * )
 *
 * */
        __ASM__("movl %0, %%esp \n\t"
                "pop  %%ebp     \n\t"
                "pop  %%ebx     \n\t"
                "pop  %%edi     \n\t"
                "pop  %%esi     \n\t"
                "ret"
                :
                :"g"(kthread->self_kernel_stack)
                :"memory"
                );
        return kthread;
}




