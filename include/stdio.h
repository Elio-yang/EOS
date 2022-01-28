#ifndef JOS_INC_STDIO_H
#define JOS_INC_STDIO_H

#include "stdarg.h"

#ifndef NULL
#define NULL	((void *) 0)
#endif /* !NULL */

// lib/printfmt.c
void	printfmt(uint8_t color,void (*putch)(int, void*,uint8_t), void *putdat, const char *fmt, ...);
void	vprintfmt(uint8_t color,void (*putch)(int, void*,uint8_t), void *putdat, const char *fmt, va_list);
//int	snprintf(char *str, int size, const char *fmt, ...);
//int	vsnprintf(char *str, int size, const char *fmt, va_list);

// lib/printf.c
int	printk(uint8_t color,const char *fmt, ...);
int	vcprintf(uint8_t color,const char *fmt, va_list);

#endif /* !JOS_INC_STDIO_H */
