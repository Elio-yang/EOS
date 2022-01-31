;/*
; * kernel.S
; *
; * Created by ElioYang on 2022/1/28.
; * Email: jluelioyang2001@gmail.com
; *
; * MIT License
; * Copyright (c) 2021 Elio-yang
; *
; */
[bits 32]
%define ERROR_CODE nop
%define ZERO push 0
;================================================
; outer space declared func
extern idt_handler_table
;================================================
; stack at interrupt
; +================+
; | SS             |
; | SP             |
; | EFLAGES        |
; | CS             |
; | EIP            |
; | ds             |
; | es             |
; | fs             |
; | gs             |
; | pushad         |
; | 0 or ERR_CODE  |
; |    ...         |
; |                |
; |                |
; +----------------+
;================================================
; !!! big mistake
; must specify .data for interrupt_entry_table
; otherwise the idt will not be loaded correctly.
; check kernel.i to see the difference
section .data
global interrupt_entry_table
interrupt_entry_table:
;================================================
; this macro create an interrupt vector
; with 2 param. VECTOR A B
; A for interrupt code
; B for whether push interrupt error code
;================================================
%macro VECTOR 2
section .text
interrupt%1entry:
    %2
    ;==================================
    ; save env
    push ds
    push es
    push fs
    push gs
    pushad
    ;==================================
    ;end interrupt
    ;send EOI to both main & sub chips
    mov al,0x20
    out 0xa0,al   ;main
    out 0x20,al   ;sub
    ;==================================
    ; the vector num
    push %1
    ; deal the interrupt
    call [idt_handler_table+%1*4]
    add esp,4
    popad
    pop gs
    pop fs
    pop es
    pop ds
    add esp,4
    iretd
    ;==================================
    ; vector num
section .data
    dd interrupt%1entry
%endmacro


; generate deal procedure
VECTOR 0x00,ZERO
VECTOR 0x01,ZERO
VECTOR 0x02,ZERO
VECTOR 0x03,ZERO 
VECTOR 0x04,ZERO
VECTOR 0x05,ZERO
VECTOR 0x06,ZERO
VECTOR 0x07,ZERO 
VECTOR 0x08,ERROR_CODE
VECTOR 0x09,ZERO
VECTOR 0x0a,ERROR_CODE
VECTOR 0x0b,ERROR_CODE 
VECTOR 0x0c,ZERO
VECTOR 0x0d,ERROR_CODE
VECTOR 0x0e,ERROR_CODE
VECTOR 0x0f,ZERO 
VECTOR 0x10,ZERO
VECTOR 0x11,ERROR_CODE
VECTOR 0x12,ZERO
VECTOR 0x13,ZERO 
VECTOR 0x14,ZERO
VECTOR 0x15,ZERO
VECTOR 0x16,ZERO
VECTOR 0x17,ZERO 
VECTOR 0x18,ERROR_CODE
VECTOR 0x19,ZERO
VECTOR 0x1a,ERROR_CODE
VECTOR 0x1b,ERROR_CODE 
VECTOR 0x1c,ZERO
VECTOR 0x1d,ERROR_CODE
VECTOR 0x1e,ERROR_CODE
VECTOR 0x1f,ZERO
VECTOR 0x20,ZERO ; 8259A interrupt-clk



; one case of idt when dbg
;Interrupt Descriptor Table (base=0x00000000c00050c0, limit=263):
;IDT[0x00]=32-Bit Interrupt Gate target=0x0008:0x00002470, DPL=0
;IDT[0x01]=32-Bit Interrupt Gate target=0x0008:0x0000247c, DPL=0
;IDT[0x02]=32-Bit Interrupt Gate target=0x0008:0x00002488, DPL=0
;IDT[0x03]=32-Bit Interrupt Gate target=0x0008:0x00002494, DPL=0
;IDT[0x04]=32-Bit Interrupt Gate target=0x0008:0x000024a0, DPL=0
;IDT[0x05]=32-Bit Interrupt Gate target=0x0008:0x000024ac, DPL=0
;IDT[0x06]=32-Bit Interrupt Gate target=0x0008:0x000024b8, DPL=0
;IDT[0x07]=32-Bit Interrupt Gate target=0x0008:0x000024c4, DPL=0
;IDT[0x08]=32-Bit Interrupt Gate target=0x0008:0x000024d0, DPL=0
;IDT[0x09]=32-Bit Interrupt Gate target=0x0008:0x000024db, DPL=0
;IDT[0x0a]=32-Bit Interrupt Gate target=0x0008:0x000024e7, DPL=0
;IDT[0x0b]=32-Bit Interrupt Gate target=0x0008:0x000024f2, DPL=0
;IDT[0x0c]=32-Bit Interrupt Gate target=0x0008:0x000024fd, DPL=0
;IDT[0x0d]=32-Bit Interrupt Gate target=0x0008:0x00002509, DPL=0
;IDT[0x0e]=32-Bit Interrupt Gate target=0x0008:0x00002514, DPL=0
;IDT[0x0f]=32-Bit Interrupt Gate target=0x0008:0x0000251f, DPL=0
;IDT[0x10]=32-Bit Interrupt Gate target=0x0008:0x0000252b, DPL=0
;IDT[0x11]=32-Bit Interrupt Gate target=0x0008:0x00002537, DPL=0
;IDT[0x12]=32-Bit Interrupt Gate target=0x0008:0x00002542, DPL=0
;IDT[0x13]=32-Bit Interrupt Gate target=0x0008:0x0000254e, DPL=0
;IDT[0x14]=32-Bit Interrupt Gate target=0x0008:0x0000255a, DPL=0
;IDT[0x15]=32-Bit Interrupt Gate target=0x0008:0x00002566, DPL=0
;IDT[0x16]=32-Bit Interrupt Gate target=0x0008:0x00002572, DPL=0
;IDT[0x17]=32-Bit Interrupt Gate target=0x0008:0x0000257e, DPL=0
;IDT[0x18]=32-Bit Interrupt Gate target=0x0008:0x0000258a, DPL=0
;IDT[0x19]=32-Bit Interrupt Gate target=0x0008:0x00002595, DPL=0
;IDT[0x1a]=32-Bit Interrupt Gate target=0x0008:0x000025a1, DPL=0
;IDT[0x1b]=32-Bit Interrupt Gate target=0x0008:0x000025ac, DPL=0
;IDT[0x1c]=32-Bit Interrupt Gate target=0x0008:0x000025b7, DPL=0
;IDT[0x1d]=32-Bit Interrupt Gate target=0x0008:0x000025c3, DPL=0
;IDT[0x1e]=32-Bit Interrupt Gate target=0x0008:0x000025ce, DPL=0
;IDT[0x1f]=32-Bit Interrupt Gate target=0x0008:0x000025d9, DPL=0
;IDT[0x20]=32-Bit Interrupt Gate target=0x0008:0x000025e5, DPL=0

; u/7 0008:0x00000000000025e5
;00000000000025e5: (                    ): push 0x00000000           ; 6a00
;00000000000025e7: (                    ): call .-4117 (0x000015d7)  ; e8ebefffff
;00000000000025ec: (                    ): mov al, 0x20              ; b020
;00000000000025ee: (                    ): out 0xa0, al              ; e6a0
;00000000000025f0: (                    ): out 0x20, al              ; e620
;00000000000025f2: (                    ): add esp, 0x00000004       ; 83c404
;00000000000025f5: (                    ): iret                      ; cf

