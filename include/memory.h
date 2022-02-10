/* 
 * memory.h
 *
 * Created by ElioYang on 2022/2/8.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */

#ifndef EOS_DEV_MEMORY_H
#define EOS_DEV_MEMORY_H

#include "bitmap.h"
#include "stdint.h"
#include "debug.h"
#include "stdio.h"

#define PGSIZE 4096

/*
 * where bitmap located
 * kernel pcb will be located at 0xc009e00
 * as in the loader defined esp will be 0xc00pf00
 * there will be 4 pages for bitmap
 * so 4*4*1024*8 = 512MB will be managed by bitmap
 */
#define BITMAP_BASE 0xc009a000
/*
 * just step the 1MB space which is equally mapped to
 * the lower part 1MB ,this will lead to continuous in
 * virtual address
 */
#define KERNEL_HEAP_START 0xc0100000

/*
 * which bitmap used for this mem_pool
 * from which physical address
 * pool volume in byte
 */

#include "types.h"
struct memory_pool{
        struct bitmap pool_bmap;
        physaddr_t phy_addr_start;
        uint32_t pool_size;
};

/* used for management of virtual address */
struct virtual_addr_pool{
        struct bitmap vaddr_bmap;
        viraddr_t vir_addr_start;
};

/* specify which pool used */
enum pool_flag{
        PF_K =1,
        PF_U
};

#define PE_P_In   0x00000001
#define PE_P_Out  0x00000000
#define PE_RW_R   0x00000000
#define PE_RW_W   0x00000010
#define PE_US_S   0x00000000
#define PE_US_U   0x00000100

/* get pte or pde index from a vaddr */
#define PDE_IDX(vaddr) (((vaddr) & 0xffc00000) >> 22)
#define PTE_IDX(vaddr) (((vaddr) & 0x003ff000) >> 12)

/*
 * get a pointer to page table entry of a virtual address
 * this is a process of construct a new address(virtual)
 * |10b|10b|12b|
 *  |    |
 *  |    |
 *  |    '-----> page_table_off------------>pte
 *  v                                    |
 *  page_dir_off------>page_table_base --'
 *                |
 *  page_dir_base-'
 *
 *  from the page_dir we set up before ,
 *  0xffc00000 , higher-10b will get the pde_1023
 *  which is pointed to the dir and this will
 *  treat the page_dir as page_table. Then the next 10b
 *  will be the higher-10b of vaddr ,here this will be
 *  'page table offset'. So
 *      0xffc00000+ (vaddr & 0xffc00000)>>10
 *  will gave a page table base address.
 * */
#define PTE_PTR(vaddr) ({ \
        viraddr_t *pte;                 \
        pte = (viraddr_t *)( 0xffc00000+\
        ( ((vaddr) & 0xffc00000)>>10)  +\
        ( (PTE_IDX(vaddr))<<2       )   );   \
        pte;})
/* 0xfffff000 will point to page_dir base */
#define PDE_PTR(vadde) ({\
        viraddr_t *pde;  \
        pde = (viraddr_t*)(0xfffff000 + ((PDE_IDX(vaddr))<<2) ); \
        pde;\
        })
extern struct memory_pool kernel_pool,user_pool;

void memory_init(void);
void * alloc_vir_page(enum pool_flag flg, uint32_t cnt) ;
void *get_kernel_page(uint32_t cnt);


#endif //EOS_DEV_MEMORY_H
