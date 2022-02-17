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
#include "list.h"

/* main thread pcm */
struct task_struct *main_thread;
/* ready threads list*/
struct list ready_thread_list;
/* all threads */
struct list all_thread_list;

static struct list_entry *thread_tag;

/* thread switch */
extern void switch_to(struct task_struct *cur,struct task_struct *next);




/* kernel thread used for execute function */
static void kernel_thread(thread_func* function,void * arg){
        interrupt_enable();//clk
        function(arg);
}

void kthread_create(struct task_struct *kthread, thread_func function, void* arg){
        /* reserve space for int */
        kthread->self_kernel_stack -= sizeof(struct interrupt_stack);
        //printf("in self stack :%08x\n",kthread->self_kernel_stack);
        /* reserve space for thread space */
        kthread->self_kernel_stack -= sizeof(struct thread_stack);
        //printf("self stack :%08x\n",kthread->self_kernel_stack);
        struct thread_stack * kthread_stack = (struct thread_stack*)(kthread->self_kernel_stack);
        kthread_stack->eip= kernel_thread;
        //printf("k_thread %08x\n",(uint32_t)kernel_thread);
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
        if(kthread==main_thread){
                kthread->state=TASK_RUNNING;
        }else{
                kthread->state=TASK_READY;
        }
        kthread->prio=priority;
        kthread->ticks_each=priority;
        kthread->total_ticks=0;
        kthread->pgdir=NULL;
        kthread->self_kernel_stack=(uint32_t*)((uint32_t)kthread+PGSIZE);
        //printf("init self stack :%08x\n",kthread->self_kernel_stack);
        kthread->stack_magic = THREAD_MAGIC;
}

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


struct task_struct* kthread_start(const char *name,uint8_t priority,thread_func func,void *func_arg){
        struct task_struct *kthread = get_kernel_page(1);
        //printf("kthread:%08x\n",(int32_t)kthread);
        kthread_init(kthread,name,priority);
        kthread_create(kthread,func,func_arg);

        // make sure not exist
        Assert(!list_find(&ready_thread_list, &kthread->ready_list_tag));
        list_insert_head(&ready_thread_list,&kthread->ready_list_tag);
        Assert(!list_find(&all_thread_list,&kthread->all_list_tag));
        list_insert_head(&all_thread_list,&kthread->all_list_tag);
        return  kthread;

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


// replaced by switch_to
/*        __ASM__("movl %0, %%esp \n\t"
                "pop  %%ebp     \n\t"
                "pop  %%ebx     \n\t"
                "pop  %%edi     \n\t"
                "pop  %%esi     \n\t"
                "ret"
                :
                :"g"(kthread->self_kernel_stack)
                :"memory"
                );
        return kthread;*/
}

/* 4K page */
struct task_struct * current_running_thread(){
        uint32_t esp;
        __ASM__("mov %%esp,%0":"=g"(esp));
        return (struct task_struct*)(esp & 0xfffff000);
}

static void print_list(void){
        printf("ready list:");
        struct list_entry * first = LIST_FIRST(&ready_thread_list);
        while(first!= &ready_thread_list.tail){
                struct task_struct * task = container_of(first,struct task_struct,ready_list_tag);
                printf("[name: %s]---",task->name);
        }
        printf("\n");
        printf("all list:");
        struct list_entry * f = LIST_FIRST(&all_thread_list);
        while(f!= &all_thread_list.tail){
                struct task_struct * task = container_of(first,struct task_struct,all_list_tag);
                printf("[name: %s]---",task->name);
        }
        printf("\n");
}

static void make_main_thread(void){
        main_thread = current_running_thread();
        kthread_init(main_thread,"main",MAIN_THREAD_PRIO);
        print_list();
        // main is not in ready so just add in all-list
        // TODO:BUG
        // when DEBUG is defined ---> #PF ??
        //Assert(!list_find(&all_thread_list,&main_thread->all_list_tag));
        list_find(&all_thread_list,&main_thread->all_list_tag);
        list_insert_head(&all_thread_list,&main_thread->all_list_tag);
        printf("here");
}


void schedule(){
        enum interrupt_status old = get_interrupt_status;
        Assert(old==INT_OFF);

        struct task_struct *cur = current_running_thread();
        if(cur->state==TASK_RUNNING){
                Assert(!list_find(&ready_thread_list,&cur->ready_list_tag));
                list_insert_tail(&ready_thread_list,&cur->ready_list_tag);
                cur->ticks_each = cur->prio;
                cur->state=TASK_READY;
        }
        // ready list not empty
        Assert(!list_empty(&ready_thread_list));
        thread_tag = NULL;
        thread_tag = list_first(&ready_thread_list);
        /* container_of is just that one you familiar with */
        /* here is where we get the next thread */
        struct task_struct *next = container_of(thread_tag, struct task_struct, ready_list_tag);
        next->state=TASK_RUNNING;
        /* here is where we do switching */
        switch_to(cur,next);
}

void thread_init(){
        printk(DEFAULT,"thread init start.\n");
        list_init(&ready_thread_list);
        list_init(&all_thread_list);

        make_main_thread();
        printk(DEFAULT,"thread init done.\n");
}

/* set to BLOCKED WAIT HANGING */
void thread_block(enum TASK_STATE state){
        Assert((state==TASK_BLOCKED)||(state==TASK_HANGING)||(state==TASK_WAITING));
        enum interrupt_status old = interrupt_disable();
        struct task_struct *cur = current_running_thread();
        cur->state=state;
        /* switch to another ready task */
        schedule();
        interrupt_set_status(old);

}
void thread_unblock(struct task_struct *kthread){
        enum interrupt_status old = interrupt_disable();
        enum TASK_STATE state = kthread->state;
        Assert((state==TASK_BLOCKED)||(state==TASK_HANGING)||(state==TASK_WAITING));
        if(kthread->state!=TASK_READY){
                Assert(!list_find(&ready_thread_list,&kthread->ready_list_tag));
                if(list_find(&ready_thread_list,&kthread->ready_list_tag)){
                        panic("blocked thread in ready queue?\n");
                }
                /* add to ready queue */
                kthread->state=TASK_READY;
                list_insert_head(&ready_thread_list,&kthread->ready_list_tag);
        }
        interrupt_set_status(old);
}

