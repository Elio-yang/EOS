/*
 * init.c
 *
 * Created by ElioYang on 2022/1/28.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */

#include "init.h"
#include "stdio.h"
#include "interrupt.h"
#include "timer.h"
#include "memory.h"
void init_all(void) {
        printk(DEFAULT, "init_all start\n");
        // idt pic related
        //idt_init();
        // counter0 ---- IRQO
        //timer_init();
        // memory part
        memory_init();

        printk(DEFAULT,"init_all end\n");
}