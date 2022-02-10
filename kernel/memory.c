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
#include "string.h"


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
        printf("        kernel bmap len :%d\n", kernel_bmap_len);
        uint32_t user_bmap_len = user_free_pages >> 3;
        printf("        user bmap len :%d\n", kernel_bmap_len);

        // physical memory dispatch
        uint32_t kernel_pool_start = used_mem;
        uint32_t user_pool_start = kernel_pool_start + kernel_free_pages * PGSIZE;

        // memory pool init
        kernel_pool.phy_addr_start = kernel_pool_start;
        kernel_pool.pool_size = kernel_free_pages * PGSIZE;
        kernel_pool.pool_bmap.bytes_len = kernel_bmap_len;
        kernel_pool.pool_bmap.bits = (void *) BITMAP_BASE;

        printf("        kernel_bitmap start at: %8x\n", kernel_pool.pool_bmap.bits);
        printf("        kernel_bitmap physaddr start at: %8x\n", kernel_pool.phy_addr_start);

        user_pool.phy_addr_start = user_pool_start;
        user_pool.pool_size = user_free_pages * PGSIZE;
        user_pool.pool_bmap.bytes_len = user_bmap_len;
        user_pool.pool_bmap.bits = (void *) (BITMAP_BASE) + kernel_bmap_len;
        printf("        user_bitmap start at: %8x\n", user_pool.pool_bmap.bits);
        printf("        user_bitmap physaddr start at: %8x\n", user_pool.phy_addr_start);

        bitmap_init(&kernel_pool.pool_bmap);
        bitmap_init(&user_pool.pool_bmap);

        // used for kernel heap address
        kernel_viraddr.vaddr_bmap.bytes_len = kernel_bmap_len;
        kernel_viraddr.vaddr_bmap.bits = (void *) (BITMAP_BASE) + kernel_bmap_len + user_bmap_len;
        kernel_viraddr.vir_addr_start = KERNEL_HEAP_START;
        bitmap_init(&kernel_viraddr.vaddr_bmap);

        printk(DEFAULT, "        memory pool init done.\n");
}

/* alloc page_num pages (continuous) from pool specified by flg */
static void *alloc_vaddr_pages(enum pool_flag flg, uint32_t page_num) {
        int32_t vaddr_start = 0, bit_idx = -1;
        uint32_t cnt = 0;
        // kernel pool
        if (flg == PF_K) {
                // from which is free
                bit_idx = bitmap_allocate_seq_bit(&kernel_viraddr.vaddr_bmap, page_num);
                if (bit_idx == -1) {
                        return NULL;
                }
                while (cnt < page_num) {
                        bitmap_bit_set(&kernel_viraddr.vaddr_bmap, bit_idx + cnt, 1);
                        cnt++;
                }
                vaddr_start = (int32_t) kernel_viraddr.vir_addr_start + bit_idx * PGSIZE;
        } else {
                // TODO: USER SPACE
        }
        return (void *) vaddr_start;
}

/* alloc a physical page in the pool */
static void *alloc_phy_page(struct memory_pool *pool) {
        int32_t idx = bitmap_allocate_seq_bit(&pool->pool_bmap, 1);
        if (idx == -1) {
                return NULL;
        }
        bitmap_bit_set(&pool->pool_bmap, idx, 1);
        physaddr_t page_phyaddr = pool->phy_addr_start + (physaddr_t) (idx * PGSIZE);
        return (void *) page_phyaddr;
}


// TODO : bug here
static void page_table_install(void *_vaddr, void *_page_physaddr) {
        viraddr_t vaddr = (viraddr_t) _vaddr;
        physaddr_t page_physaddr = (physaddr_t) _page_physaddr;

        INFO("");
        printk(DEFAULT,"vaddr:%08x\n",vaddr);
        printk(DEFAULT,"page_phy:%08x\n",page_physaddr);

        // corresponding pte and pde pointers
        viraddr_t *ppte = PTE_PTR(vaddr);
        viraddr_t *ppde = PDE_PTR(vaddr);
        INFO("");
        printk(DEFAULT,"pte:%08x\n",(uint32_t)ppte);
        printk(DEFAULT,"pde:%08x\n",(uint32_t)ppde);
        if (*ppde & 0x00000001) {
                // when doing install pte shouldn't be existed
                Assert(!(*ppte & 0x00000001));
                if (!(*ppte & 0x00000001)) {
                        *ppte = (page_physaddr & 0xfffff000) | PE_US_U | PE_RW_W | PE_P_In;
                } else {
                        panic("pte repeated!");
                        *ppte = (page_physaddr & 0xfffff000) | PE_US_U | PE_RW_W | PE_P_In;
                }
        } else {
                // pde not exist
                // 1.alloc a physical page from kenel pool for page_table
                physaddr_t page = (physaddr_t) alloc_phy_page(&kernel_pool);
                // 2. install pde
                *ppde = page | PE_US_U | PE_RW_W | PE_P_In;
                // 3.clear space
                memset((void *) ((uint32_t) ppte & 0xfffff000), 0, PGSIZE);
                // 4. install pte
                Assert(!(*ppte & 0x00000001));
                *ppte = (page_physaddr & 0xfffff000) | PE_US_U | PE_RW_W | PE_P_In;
        }

}


void * alloc_vir_page(enum pool_flag flg, uint32_t cnt) {
        // TODO : 32MB max
        Assert(cnt > 0 && cnt < 3840);
        void *vaddr_start = alloc_vaddr_pages(flg, cnt);

        INFO("");
        printk(DEFAULT,"%08x\n",vaddr_start);

        if (vaddr_start == NULL) {
                return NULL;
        }
        uint32_t vaddr = (uint32_t) vaddr_start, count = cnt;
        struct memory_pool* pool = (flg & PF_K) ? &kernel_pool : &user_pool;
        // vaddr is continuous but physaddr may be not
        // so map 1-1

        while(count -->0 ){
                void * page_physaddr = alloc_phy_page(pool);
                INFO("");
                printk(DEFAULT,"%08x\n",page_physaddr);
                if(page_physaddr==NULL){
                        return NULL;
                }
                page_table_install((void*)vaddr,page_physaddr);
                vaddr+=PGSIZE;
        }


        return vaddr_start;
}


void *get_kernel_page(uint32_t cnt){
        void *vaddr = alloc_vir_page(PF_K,cnt);
        INFO("");
        printk(GREEN,"%08x\n",vaddr);
        if(vaddr!=NULL){
                memset(vaddr,0,cnt*PGSIZE);
        }
        return vaddr;
}

void memory_init(void) {
        printk(DEFAULT, "memory init start.\n");
        // this is defined in loader.S
        uint32_t memory_bytes = *((uint32_t *) 0xb00);
        memory_pool_init(memory_bytes);
        printk(DEFAULT, "memory init done.\n");
}

