/*
 * timer.c
 *
 * Created by ElioYang on 2022/1/28.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */


#include "timer.h"
#include "io.h"
#include "aux_print.h"
#include "interrupt.h"
#include "thread.h"
#include "debug.h"

uint32_t ticks;

extern void register_idt_handler(uint8_t no ,handler func);

static void set_counter_frequency(uint8_t port,uint8_t no,uint8_t rw_format,uint8_t mode, uint16_t value){
        outb(COUNTER0_CTRL_PORT, (uint8_t)(no << 6 | rw_format << 4 | mode << 1));
        outb(port, (uint8_t)value);
        outb(port, (uint8_t)value >> 8);
}

void timer_init(){
    printf("timer_init start\n");
    set_counter_frequency(COUNTER0_DATA_PORT,COUNTER0_NO,COUNTER0_RW,COUNTER0_MODE,COUNTER0_INIT_VALUE);
    register_idt_handler(0x20,interrupt_handler_0x20);
    printf("timer_init end\n");
}

void delay(){
    int i=1000;
    while (i--);
}


interrupt_handler(0x20){
        struct task_struct *cur_thread = current_running_thread();
        Assert(!cur_thread->stack_magic== THREAD_MAGIC);
        cur_thread->total_ticks++;
        ticks++;
        if(cur_thread->ticks_each == 0){
                schedule();
        }else{
                cur_thread->ticks_each--;
        }
}

