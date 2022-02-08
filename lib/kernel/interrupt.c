/*
 * interrupt.c
 *
 * Created by ElioYang on 2022/1/28.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */


/* everything about interrupt is implemented in this file */
#include "interrupt.h"
#include "types.h"
#include "io.h"
#include "aux_print.h"
#include "global.h"


static void make_idt_desc(struct interrupt_gate_desc *gdesc, uint8_t addr, interrupt_handler func);

static inline void general_interrupt_handler(uint8_t vector);

// idt table
// CONTAIN GATE DESCRIPTORS
static struct interrupt_gate_desc idt[IDT_DESC_CNT];

// handlers in kernel.S
// ENTRY POINT OF A SEQ, OF CODES
extern interrupt_handler interrupt_entry_table[IDT_DESC_CNT];

// real handlers in CODES in kernel.S
// interrupt_entry_table:
// interrupt%1entry:
//  ...
//  call idt_handler_table[%1]
//  ...
//  iret
typedef void (*handler)(uint8_t);
handler idt_handler_table[IDT_DESC_CNT];
// register interrupt name
const char * interrupt_name[IDT_DESC_CNT]={
        "#DE Divide Error",
        "#DB RESERVED",
        "—NMI Interrupt",
        "#BP Breakpoint",
        "#OF Overflow",
        "#BR BOUND Range Exceeded",
        "#UD Invalid Opcode (Undefined Opcode)",
        "#NM Device Not Available (No Math Coprocessor)",
        "#DF Double Fault",
        "Coprocessor Segment Overrun (reserved)",
        "#TS Invalid TSS",
        "#NP Segment Not Present",
        "#SS Stack-Segment Fault",
        "#GP General Protection",
        "#PF Page Fault",
        "— (Intel reserved. Do not use.)",
        "#MF x87 FPU Floating-Point Error (Math Fault)",
        "#AC Alignment Check",
        "#MC Machine Check",
        "#XF SIMD Floating-Point Exception",
        "Unknown",
        "Unknown",
        "Unknown",
        "Unknown",
        "Unknown",
        "Unknown",
        "Unknown",
        "Unknown",
        "Unknown",
        "Unknown",
        "Unknown",
        "Unknown",
        "8259A IRQ0 CLK",
};

// init 8259A
static inline void pic_init(void) {
        // the main chip
        // icw1: edge trigger, need icw4
        // icw2: interrupt number is from 0x20(~0x27)
        // icw3: IR2 with sub-chip
        // icw4: 8086-mode,normal  EOI
        outb(PIC_M_CTRL, 0x11);
        outb(PIC_M_DATA, 0x20);
        outb(PIC_M_DATA, 0X04);
        outb(PIC_M_DATA, 0X01);

        // the sub-chip
        // icw2: from 0x28(~0x2f)
        // icw3: link to IR2 of main-chip
        outb(PIC_S_CTRL, 0x11);
        outb(PIC_S_DATA, 0x28);
        outb(PIC_S_DATA, 0X02);
        outb(PIC_S_DATA, 0X01);

        //ocw1: only open clk-interrupt
        outb(PIC_M_DATA, 0xfe);
        outb(PIC_S_DATA, 0xff);

        printk(DEFAULT, "    pic_init done\n");
}

static inline void make_idt_desc(struct interrupt_gate_desc *gdesc, uint8_t attr, interrupt_handler func) {
        gdesc->interrupt_deal_procedure_off_l = (uint32_t) func & 0x0000FFFF;
        gdesc->selector = SELECTOR_CODE;
        gdesc->reserved = 0;
        gdesc->attribute = attr;
        // !!! notice the bracket
        // this is wrong
        //     gdesc->interrupt_deal_procedure_off_h=(uint32_t)func&&0xFFFF0000 >>16;
        gdesc->interrupt_deal_procedure_off_h = ((uint32_t) func && 0xFFFF0000) >> 16;
}

static inline void idt_desc_init(void) {
        for (int i = 0; i < IDT_DESC_CNT; i++) {
                make_idt_desc(&idt[i], IDT_DESC_ATTR_DPL0, interrupt_entry_table[i]);
        }
        printk(DEFAULT, "    idt_desc_init done\n");
}

static inline void general_interrupt_handler(uint8_t vector){
        //fake interrupt IRQ7 IRQ15
        if(vector == 0x27 || vector==0x2f){
                return;
        }
        printk(RED,"interrupt vector NO.%d  ",(uint32_t)vector);
        printk(RED,"%s\n",interrupt_name[vector]);
}

static  void exception_interrupt_init(){
        for(int i=0;i<IDT_DESC_CNT;i++){
                idt_handler_table[i]= general_interrupt_handler;
        }
}


enum interrupt_status interrupt_set_status (enum interrupt_status status){
        if(status==INT_ON){
                return interrupt_enable();
        }else{
                return interrupt_disable();
        }
}
enum interrupt_status interrupt_enable (void){
        enum interrupt_status old_status = get_interrupt_status;
        if(old_status==INT_OFF){
                __asm__ __volatile__ ("sti");
        }
        return old_status;
}
enum interrupt_status interrupt_disable (void){
        enum interrupt_status old_status = get_interrupt_status;
        if(old_status==INT_ON){
                __asm__ __volatile__ ("cli":::"memory");
        }
        return old_status;
}


void inline idt_init() {
        printk(DEFAULT, "idt_init_start\n");
        idt_desc_init();
        exception_interrupt_init();
        pic_init();
        uint64_t idt_op = ((sizeof(idt) - 1) | ((uint64_t)(uint32_t)idt << 16));
        __asm__ __volatile__(
        "lidt %0"
        :
        :"m"(idt_op)
        );
        printk(DEFAULT, "idt_init done\n");

}