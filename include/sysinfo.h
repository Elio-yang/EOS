#ifndef _SYSINFO_H
#define _SYSINFO_H
#include "aux_print.h"
#include "types.h"

void syswelcome();
void cpuid(uint32_t info, uint32_t *eaxp, uint32_t *ebxp, uint32_t *ecxp, uint32_t *edxp);
void cpuinfo();
void reginfo();

#endif