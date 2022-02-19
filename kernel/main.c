/*
 * main.c
 *
 * Created by ElioYang on 2022/1/28.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */



#include "init.h"


void kernel_thread_a(void *arg);

int main() {
        init();

        kthread_start("k_thread_a", 12, kernel_thread_a, NULL);

        // CLK enable
        interrupt_enable();

        task_A:
        console_print(RED,"MAIN");
        goto task_A;

}

void kernel_thread_a(void *arg) {
        task_B:
        console_print(GREEN,"A");
        goto task_B;
}
