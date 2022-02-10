/*
 *
 * Created by ElioYang on 2022/1/28.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */


/* used for interrupt device init process */
#ifndef _INTERRUPT_H
#define _INTERRUPT_H
#include "types.h"
#include "stdio.h"
// supported interrupt num
#define IDT_DESC_CNT 0x22

//ports
#define PIC_M_CTRL 0X20   // main chip control port
#define PIC_M_DATA 0x21   //           data
#define PIC_S_CTRL 0xa0   // sub chip  control port
#define PIC_S_DATA 0xa1   //           data

#define IF 0x00000200
#define get_interrupt_status ({ \
        enum interrupt_status status;                       \
        uint32_t store=0;               \
        __asm__ __volatile__("pushfl;popl %0":"=g"(store)); \
        if(store&IF){  \
                status = INT_ON;\
        }else{         \
                status = INT_OFF;                \
                }               \
                status;\
        })


// interrupt gate descriptor
struct interrupt_gate_desc{
    uint16_t interrupt_deal_procedure_off_l;
    uint16_t selector;
    uint8_t  reserved;
    uint8_t  attribute;
    uint16_t interrupt_deal_procedure_off_h;
};



typedef void* interrupt_handler;
void idt_init(void);
void print_int(uint32_t sth);




enum interrupt_status {
        INT_OFF, // 0 closed
        INT_ON   // 1 opened
};

enum interrupt_status interrupt_set_status (enum interrupt_status);
enum interrupt_status interrupt_enable (void);
enum interrupt_status interrupt_disable (void);




#endif