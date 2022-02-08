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

extern struct memory_pool kernel_pool,user_pool;


void memory_init(void);



#endif //EOS_DEV_MEMORY_H
