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

uint32_t eip=0;

int main() {


        init_all();
        interrupt_enable();
        void *addr = get_kernel_page(3);
        printk(DEFAULT,"%08x\n",(uint32_t)addr);
        printk(DEFAULT, "This is kernel version %s\n", "0.1.0");
        syswelcome();


        while (1);
}

