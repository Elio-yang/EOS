/*
 *
 * Created by ElioYang on 2022/1/28.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */



/* low-level hdware io operations */
#ifndef _IO_H
#define _IO_H

// b  low 8-bit of a register [a-d]l
// w  16-bit register  [a-d]x


/* write a byte to port */
static inline void outb(uint16_t port, uint8_t data) {
        // N restrict that port should range in 0-255
        __asm__ __volatile__(
        "outb %b0,%w1"
        :
        :"a"(data), "Nd"(port)
        );
}
// OUTS[WBD]
// esi:edi
// 该指令把由源变址寄存器所指向的存储器中的字节、字或双字
// 传送到端口号在DX寄存器中的I/O端口中去，并根据DF的值和
// 数据类型修改目的变址寄存器的内容。
// here + means both read & modify
/* write word_cnt words from addr to port */
static inline void outsw(uint16_t port, const void *addr, uint32_t word_cnt) {
        __asm__ __volatile__(
        "cld  \n\t"
        "rep outsw"
        :"+S"(addr), "+c"(word_cnt)
        :"d"(port)
        );
}

static inline uint8_t inb(uint16_t port) {
        uint8_t data;
        __asm__ __volatile__(
        "inb %w1,%b0"
        :"=a"(data)
        :"Nd"(port)
        );
        return data;
}

//write to es:edi
// ds es ss have already been set to the same
static inline uint8_t insw(uint16_t port, const void *addr, uint32_t word_cnt) {
        __asm__ __volatile__(
        "cld  \n\t"
        "rep insw"
        :"+D"(addr), "+c"(word_cnt)
        :"d"(port)
        :"memory"
        );

}

static inline uint32_t
read_eflags(void) {
        uint32_t eflags;
        __asm__ __volatile__(
        "pushfl \n\t "
        "popl %0"
        :"=r"(eflags)
        );
        return eflags;
}

static inline uint32_t
read_ebp(void) {
        uint32_t ebp;
        __asm__ __volatile__(
        "movl %%ebp,%0"
        : "=r"(ebp)
        );
        return ebp;
}

static inline uint32_t
read_esp(void) {
        uint32_t esp;
        __asm__ __volatile__(
        "movl %%esp,%0"
        :"=r"(esp)
        );
        return esp;
}

extern uint32_t eip;

static inline uint32_t read_eip(){
        __asm__ __volatile__(
        "pushal                 \n"
        "call .testpop_	        \n"
        ".testpop_:		\n"
        "pop  %ebx		\n"
        "movl %ebx,%eax	        \n"
        "movl %eax,eip	        \n"
        "popal                  \n"
        );\
        return eip;
}


#endif