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



static const char *types[4]={
        "INFO",
        "DEBUG",
        "WARN",
        "ERROR"
};

void spin_panic(char *filename,int32_t line,const char *func,const char *cond) {
        interrupt_disable();
        printk(RED,"[!ERROR!] in File [%s] Line [%d] Function [%s] on condition [%s]\n",filename,line,func,cond);
        while (1);
}

void tell(char *filename,int32_t line,const char *func,enum debug_type type,const char *msg){
        printk(GREEN,"[%s] in File [%s] Line [%d] Function [%s] INFO: [%s]\n",types[type],filename,line,func,msg);
        if(type == ERROR_t){
                for(;;);
        }
}
