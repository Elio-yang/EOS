#include "string.h"
#include "sysinfo.h"
#include "aux_print.h"
#include "io.h"
void syswelcome()
{
    int color=GEN_COLOR(NOWINK,white,NOLIGHT,black);
    printk(DEFAULT,"                                                 \n");
    printk(color,"        |^^^^^^|         ________________________  \n");
    printk(color,"        |      |        /                        \\ \n");
    printk(color,"        |      |       | Welcome to EOS.         | \n");
    printk(color,"        | (o)(o)       | A unix-like system      | \n");
    printk(color,"       @      _)       | developed by @EliotYang | \n");
    printk(color,"        | ,___|      ,,|                         | \n");
    printk(color,"        |   /    ..''   \\_______________________/  \n");
    printk(color,"       /____\\                                      \n");
    printk(DEFAULT,"                                                  \n");
}

void
cpuid(uint32_t info, uint32_t *eaxp, uint32_t *ebxp, uint32_t *ecxp, uint32_t *edxp)
{
	uint32_t eax, ebx, ecx, edx;
	asm volatile("cpuid"
		     : "=a" (eax), "=b" (ebx), "=c" (ecx), "=d" (edx)
		     : "a" (info));
	if (eaxp)
		*eaxp = eax;
	if (ebxp)
		*ebxp = ebx;
	if (ecxp)
		*ecxp = ecx;
	if (edxp)
		*edxp = edx;
}

void cpuinfo()
{
	int32_t info[5];
	memset(info,0,sizeof(info));
	cpuid(0,&info[0],&info[1],&info[2],&info[3]);
	char* str=(char*)info;
	for(int i=0;i<12;i++){
		char a=str[i];
		printk(DEFAULT,"%c",a);
	}
	printk(DEFAULT,"\n");
}
void reginfo()
{
	printk(DEFAULT,"eflags:0x%08x\n",read_eflags());
	printk(DEFAULT,"ebp:0x%08x\n",read_ebp());
	printk(DEFAULT,"esp:0x%08x\n",read_esp());
}