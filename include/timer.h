/*
 *
 * Created by ElioYang on 2022/1/28.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */

#ifndef EOS_DEV_TIMER_H
#define EOS_DEV_TIMER_H

#include "stdint.h"
#include "io.h"
/*
 * CONTROL WORD
 * SC1 SC0 | RL1 RL0 | M2 M1 M0 | BCD
 *  which? |rw_format| method   | bcd or binary
 *
 * */


// the freq. we want is 100Hz
#define IRQ0_FREQUENCY 100
#define CLK_FREQUENCY  1193180
#define COUNTER0_INIT_VALUE (uint16_t)(CLK_FREQUENCY/IRQ0_FREQUENCY)

#define COUNTER0_DATA_PORT 0X40
#define COUNTER0_CTRL_PORT 0X43

#define COUNTER0_NO   0
#define COUNTER0_MODE 2
#define COUNTER0_RW  3
#define COUNTER0_METHOD 2



//#define COUNTER_FREQ_SET(NO) \


void timer_init();

#endif //EOS_DEV_TIMER_H
