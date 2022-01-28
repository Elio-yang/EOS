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



#include "aux_print.h"
#include "sysinfo.h"
#include"init.h"

int main()
{

	//cpuinfo();
	//reginfo();

	//printk(BLUE,"HELLO THIS IS PRINTK BLUE TEST\n");
	//printk(RED,"HELLO,THIS IS PRINTK RED TEST\n");
	//printk(GREEN,"HELLO THIS IS PRINTK GREEN TEST\n");
	//printk(GEN_COLOR(WINK,white,LIGHT,pinRed),"HELLOP THIS IS GEN_COLOR TEST\n");
        // 0008:00000000c0001500
	printk(DEFAULT,"This is kernel version %s\n","0.1.0");
    syswelcome();
	init_all();
	__asm__ __volatile__("sti");
	while(1);
}

