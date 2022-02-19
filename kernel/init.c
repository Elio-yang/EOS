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

void init(void) {
        printk(DEFAULT, "init start\n");
        // idt pic related
        idt_init();
        // counter0 ---- IRQO
        timer_init();
        // memory part
        memory_init();
        // thread part
        thread_init();
        // console part
        console_init();

        printk(DEFAULT,"init end\n");
        printk(DEFAULT, "This is kernel version %s\n", "0.1.0");
        welcome();
        delay();
}