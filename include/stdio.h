/*
 *
 * Created by ElioYang on 2022/1/28.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */

#ifndef __STDIO_H
#define __STDIO_H

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

#endif /* !__STDIO_H */
