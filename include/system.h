/* 
 * system.h
 *
 * Created by ElioYang on 2022/2/16.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */

#ifndef EOS_DEV_SYSTEM_H
#define EOS_DEV_SYSTEM_H

// memory barrier
#define barrier() __asm__ __volatile__("": : :"memory")


#endif //EOS_DEV_SYSTEM_H
