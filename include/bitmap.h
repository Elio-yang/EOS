/* 
 * bitmap.h
 *
 * Created by ElioYang on 2022/1/31.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */

#ifndef EOS_DEV_BITMAP_H
#define EOS_DEV_BITMAP_H

#include "stdint.h"
#include "stdio.h"

#define BITMAP_MASK 0b00000001
struct bitmap{
        uint32_t bytes_len;
        // notice uint8_t
        uint8_t * bits;
};

void bitmap_init(struct bitmap* bmap);
bool bitmap_bit(struct  bitmap*bmap , uint32_t idx);
uint32_t bitmap_allocate_seq_bit(struct  bitmap*bmap, uint32_t cnt);
void bitmap_bit_set(struct bitmap*bmap, uint32_t idx, int8_t val);
void bitmap_print(struct bitmap * bmap);




#endif //EOS_DEV_BITMAP_H
