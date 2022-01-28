/* used for interrupt device init process */
#ifndef _INTERRUPT_H
#define _INTERRUPT_H
#include "types.h"

// supported interrupt num
#define IDT_DESC_CNT 0x21

//ports
#define PIC_M_CTRL 0X20   // main chip control port
#define PIC_M_DATA 0x21   //           data
#define PIC_S_CTRL 0xa0   // sub chip  control port
#define PIC_S_DATA 0xa1   //           data


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

#endif