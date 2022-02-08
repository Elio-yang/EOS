/* 
 * memory.c
 *
 * Created by ElioYang on 2022/2/8.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */

#include "memory.h"

struct memory_pool user_pool, kernel_pool;
// dispatch virtual address
struct virtual_addr_pool kernel_viraddr;

static void memory_pool_init(uint32_t all_mem) {

        printk(DEFAULT, "        memory pool init start.\n");
        // dir + page0-page254
        printf("        all memory :%dB\n", all_mem);
        uint32_t page_table_size = 256 * PGSIZE;
        uint32_t used_mem = page_table_size + 0x100000;

        uint32_t free_mem = all_mem - used_mem;
        printf("        free memory :%dB\n", free_mem);
        uint32_t free_pages = free_mem / PGSIZE;
        printf("        free pages :%d\n", free_pages);

        // simply half split
        uint32_t kernel_free_pages = free_pages >> 1;
        printf("        kernel free pages :%d\n", kernel_free_pages);
        uint32_t user_free_pages = free_pages - kernel_free_pages;
        printf("        user free pages :%d\n", user_free_pages);

        // how many 'bytes' need for bmap
        uint32_t kernel_bmap_len = kernel_free_pages >> 3;
        printf("        kernel bmap len :%d\n",kernel_bmap_len);
        uint32_t user_bmap_len = user_free_pages >> 3;
        printf("        user bmap len :%d\n",kernel_bmap_len);

        // physical memory dispatch
        uint32_t kernel_pool_start = used_mem;
        uint32_t user_pool_start = kernel_pool_start + kernel_free_pages * PGSIZE;

        // memory pool init
        kernel_pool.phy_addr_start = kernel_pool_start;
        kernel_pool.pool_size = kernel_free_pages * PGSIZE;
        kernel_pool.pool_bmap.bytes_len = kernel_bmap_len;
        kernel_pool.pool_bmap.bits = (void*)BITMAP_BASE;

        printf("        kernel_bitmap start at: %8x\n",kernel_pool.pool_bmap.bits);
        printf("        kernel_bitmap physaddr start at: %8x\n",kernel_pool.phy_addr_start);

        user_pool.phy_addr_start = user_pool_start;
        user_pool.pool_size = user_free_pages *PGSIZE;
        user_pool.pool_bmap.bytes_len =user_bmap_len;
        user_pool.pool_bmap.bits = (void*)(BITMAP_BASE)+kernel_bmap_len;
        printf("        user_bitmap start at: %8x\n",user_pool.pool_bmap.bits);
        printf("        user_bitmap physaddr start at: %8x\n",user_pool.phy_addr_start);

        bitmap_init(&kernel_pool.pool_bmap);
        bitmap_init(&user_pool.pool_bmap);

        // used for kernel heap address
        kernel_viraddr.vaddr_bmap.bytes_len=kernel_bmap_len;
        kernel_viraddr.vaddr_bmap.bits = (void*)(BITMAP_BASE)+kernel_bmap_len + user_bmap_len;
        kernel_viraddr.vir_addr_start = KERNEL_HEAP_START;
        bitmap_init(&kernel_viraddr.vaddr_bmap);


        printk(DEFAULT, "        memory pool init done.\n");

}

void memory_init(void) {
        printk(DEFAULT, "memory init start.\n");
        // this is defined in loader.S
        uint32_t memory_bytes = *((uint32_t *) 0xb00);
        memory_pool_init(memory_bytes);
        printk(DEFAULT, "memory init done.\n");
}

