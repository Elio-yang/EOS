/*
 *
 * Created by ElioYang on 2022/1/28.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */

#ifndef _GLOBAL_H
#define _GLOBAL_H

#define RPL0 0
#define RPL1 1
#define RPL2 2
#define RPL3 3

#define TI_LDT 1
#define TI_GDT 0

#define SELECTOR_CODE  ((1<<3)+(TI_GDT<<2)+RPL0)
#define SELECTOR_DATA  ((2<<3)+(TI_GDT<<2)+RPL0)
#define SELECTOR_STACK SELECTOR_DATA
#define SELECTOR_GS    ((3<<<3)+(TI_GDT<<2)+RPL0)

// attributes
#define IDT_DESC_P 1
#define IDT_DESC_DPL0 0
#define IDT_DESC_DPL3 3
#define IDT_DESC_32_TYPE 0xE
#define IDT_DESC_ATTR_DPL0 ((IDT_DESC_P<<7)+(IDT_DESC_DPL0<<5)+IDT_DESC_32_TYPE)
#define IDT_DESC_ATTR_DPL3 ((IDT_DESC_P<<7)+(IDT_DESC_DPL3<<5)+IDT_DESC_32_TYPE)

#endif