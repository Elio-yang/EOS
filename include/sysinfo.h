/*
 *
 * Created by ElioYang on 2022/1/28.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */

#ifndef _SYSINFO_H
#define _SYSINFO_H
#include "aux_print.h"
#include "types.h"

void syswelcome();
void cpuid(uint32_t info, uint32_t *eaxp, uint32_t *ebxp, uint32_t *ecxp, uint32_t *edxp);
void cpuinfo();
void reginfo();

#endif