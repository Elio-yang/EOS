// Simple implementation of cprintf console output for the kernel,
// based on printfmt() and the kernel console's cputchar().

#include "types.h"
#include "stdio.h"
#include "stdarg.h"
#include "aux_print.h"




static void
putch(int ch, int *cnt,uint8_t color)
{

	put_char(ch,color);
	*cnt++;
}

int
vcprintf(uint8_t color,const char *fmt, va_list ap)
{
	int cnt = 0;

	vprintfmt(color,(void*)putch, &cnt, fmt, ap);
	return cnt;
}


int
printk(uint8_t color,const char *fmt, ...)
{
	va_list ap;
	int cnt;
	
	va_start(ap, fmt);
	cnt = vcprintf(color,fmt, ap);
	va_end(ap);

	return cnt;
}

int printf(const char *fmt, ...)
{
        va_list ap;
        int cnt;
        uint8_t color = DEFAULT;
        va_start(ap, fmt);
        cnt = vcprintf(color,fmt, ap);
        va_end(ap);

        return cnt;
}

asmlinkage void test_printk(uint8_t vector)
{
        printk(RED,"interrupt vector NO.%d\n",(uint32_t)vector);
}

void test_num(){
        printf("interrupt!");
}