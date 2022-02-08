/*
 * timer.c
 *
 * Created by ElioYang on 2022/1/28.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */


#include "timer.h"
#include "io.h"
#include "aux_print.h"
#include "stdint.h"

static void set_counter_frequency(uint8_t port,uint8_t no,uint8_t rw_format,uint8_t mode, uint16_t value){
    uint8_t control_word = 0;
    control_word |= port<<6;
    control_word |= rw_format<<4;
    control_word |= mode <<1;
    // write to control port
    outb(COUNTER0_CTRL_PORT,control_word);
    // value low 8b
    outb(port,(uint8_t)(value));
    // value high 8b
    outb(port,(uint8_t)(value>>8));
}

void timer_init(){
    printf("timer_init start\n");
    set_counter_frequency(COUNTER0_DATA_PORT,COUNTER0_NO,COUNTER0_RW,COUNTER0_MODE,COUNTER0_INIT_VALUE);
    printf("timer_init end\n");
}

void delay(){
    int i=1000;
    while (i--);
}