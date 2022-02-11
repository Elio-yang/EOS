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



#include "stdio.h"
#include "memory.h"
#include "init.h"
#include "thread.h"

uint32_t eip = 0;

void kernel_thread_a(void *arg);
int main() {


        init_all();
        //__ASM__("INT $0x21");
        //void *addr = get_kernel_page(3);
        //for(int i=0;i<40000000;i++){}
        printk(DEFAULT, "This is kernel version %s\n", "0.1.0");
        welcome();
        __asm__ __volatile__ ("cli":::"memory");
        char *msg="K_A";
        kthread_start("k_thread_a",1,kernel_thread_a,msg);

        while (1);
}
void kernel_thread_a(void *arg) {
        char *msg =  arg;
        while(1) {
                printf("thread_%s", msg);
        }
}
