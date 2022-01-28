#include "init.h"
#include "aux_print.h"
#include "interrupt.h"

void init_all(void) {
        //0008:0x00000000c0002890
        printk(DEFAULT, "init_all start\n");
        idt_init();
        //printk(DEFAULT,"init_all end\n");
}