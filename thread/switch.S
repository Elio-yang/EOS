[bits 32]
section .text
global switch_to
switch_to:
    ; in stack here is return address
    ; ABI : we need to store these 4 regs
    push esi
    push edi
    push ebx
    push ebp

;    next
;    cur
;    ret
;    esi
;    edi
;    ebx
;    ebp  <----esp
    ; the cur task
    mov eax,[esp+20]
    ; store esp
    ; this will be stored at self_kernel_stack
    mov [eax],esp
    ;-----------------------------
    ; the next task
    mov eax,[esp+24]
    ; recover esp
    mov esp,[eax]
    ; recover ABI related
    pop ebp
    pop ebx
    pop edi
    pop esi
    ; return
    ret

