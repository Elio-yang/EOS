#ifndef __AUX_PRINT_H
#define __AUX_PRINT_H
#include "types.h"
#include "asmlinkage.h"

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



void put_char(uint8_t char_asci,uint8_t color);
int printk(uint8_t color,const char *fmt, ...);
int printf(const char *fmt, ...);

asmlinkage void test_printk(uint8_t vector);
void test_num();
#endif


