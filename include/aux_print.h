/*
 *
 * Created by ElioYang on 2022/1/28.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */

#ifndef __AUX_PRINT_H
#define __AUX_PRINT_H
#include "types.h"
#include "asmlinkage.h"
#include "stdarg.h"

#define WINK 0x80
#define NOWINK 0x00
#define LIGHT 0x80
#define NOLIGHT 0x00

#define black  0x00
#define blue   0x01
#define green  0x02
#define qing   0x03
#define red    0x04
#define pinRed 0x05
#define brown  0x06
#define white  0x07

#define GEN_COLOR(wink,bgc,light,wdc)({\
	int COLOR =0x00;\
	COLOR=COLOR|wink;\
	COLOR=COLOR|(light>>4);\
	COLOR=COLOR|(bgc<<4);\
	COLOR=COLOR|(wdc);\
	COLOR;\
})

#define DEFAULT GEN_COLOR(NOWINK,black,NOLIGHT,white)
#define RED     GEN_COLOR(NOWINK,black,NOLIGHT,red)
#define BLUE    GEN_COLOR(NOWINK,black,NOLIGHT,blue)
#define GREEN   GEN_COLOR(NOWINK,black,NOLIGHT,green)


//defined in print.asm
void put_char(uint8_t char_asci,uint8_t color);
void set_cursor(uint32_t cursor_pos);
void cls_screen(void);




extern int printk(uint8_t color,const char *fmt, ...);
extern int vcprintf(uint8_t color,const char *fmt, va_list);
extern int printf(const char *fmt, ...);
#endif


