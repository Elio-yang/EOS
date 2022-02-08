/* 
 * debug.c
 *
 * Created by ElioYang on 2022/1/31.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */

#include "aux_print.h"
#include "debug.h"
#include "interrupt.h"
#include "stdint.h"

void spin_panic(char *filename,int32_t line,const char *funcname,const char *cond) {
        interrupt_disable();
        printk(RED,"[!ERROR!] in File [%s] Line [%d] Function [%s] on condition [%s]\n",filename,line,funcname,cond);
        lab1:  ;  // labels only go on statements, not declarations
        void *tmp = &&lab1;
        printf("eip[%x]\n",tmp);
        while (1);
}
