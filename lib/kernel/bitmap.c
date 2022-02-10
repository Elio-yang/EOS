/* 
 * bitmap.c
 *
 * Created by ElioYang on 2022/1/31.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */
#include "string.h"
#include "bitmap.h"
#include "stdint.h"
#include "stdio.h"
#include "debug.h"

void bitmap_init(struct bitmap *bmap) {
        // set bits array to 0
        memset(bmap->bits, 0, bmap->bytes_len);
}
// bit with index idx whether 1 or 0
bool bitmap_bit(struct bitmap *bmap, uint32_t idx) {
        // which byte
        uint32_t byte_idx = idx >> 3;
        // which bit
        uint32_t bit_idx = idx % 8;
        uint8_t byte = bmap->bits[byte_idx];
        bool res = byte & (BITMAP_MASK << bit_idx);
        return res;
}

// allocate continuous cnt bits in bmap
// brute-force search
// return the bit index if success
// -1 for failure
int32_t bitmap_allocate_seq_bit(struct bitmap *bmap, uint32_t cnt) {
        uint32_t byte_idx = 0;
        uint32_t bit_idx = 0;
        uint32_t index = 0;
        bool flag = false;


        search_byte:
        flag = (bmap->bits[byte_idx] == 0xff) && (byte_idx < bmap->bytes_len);
        if (flag) {
                byte_idx++;
                goto search_byte;
        }
        if (byte_idx == bmap->bytes_len) {
                // no free byte
                return -1;
        }

        search_bit:
        flag = bmap->bits[byte_idx] & (uint8_t) (BITMAP_MASK << bit_idx);
        if (flag) {
                bit_idx++;
                goto search_bit;
        }

        // the first free index
        index = (byte_idx << 3) + bit_idx;
        // just one bit
        if (cnt == 1) {
                return (int32_t)index;
        }
        uint32_t left_bits = (bmap->bytes_len << 3) - index;
        uint32_t next_bit = index + 1;
        uint32_t cnt_cpy = 1;
        index = -1;

        search_seq:
        if (left_bits-- > 0) {
                if (!bitmap_bit(bmap, next_bit)) {
                        cnt_cpy++;
                } else {
                        // restart
                        cnt_cpy = 0;
                }
                if (cnt_cpy == cnt) {
                        index = next_bit - cnt + 1;
                        goto search_done;
                }
                next_bit++;
                goto search_seq;
        }

        search_done:
        return (int32_t)index;
}

void bitmap_bit_set(struct bitmap *bmap, uint32_t idx, int8_t val) {
        Assert((val == 1) || (val == 0));
        uint32_t byte_idx = idx >> 3;
        uint32_t bit_idx = idx % 8;
        if (val) {
                bmap->bits[byte_idx] |= (BITMAP_MASK << bit_idx);
        } else {
                bmap->bits[byte_idx] &= ~(BITMAP_MASK << bit_idx);
        }
}


void bitmap_print(struct bitmap * bmap){

        uint32_t len = bmap->bytes_len;

        for(int i=0;i<len;i++){
                printk(BLUE,"%8x  ",bmap->bits[i]);
                if(i%5==4){
                        printf("\n");
                }
        }
}
