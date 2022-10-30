section .data

    num     dw      1,2,3,4,5
    len     dw      5

section .bss
    
    avg     resq    1
    
section .text
global _start

_start:
    mov     rsi, num
    mov     rcx, len
    xor     rax, rax
loops:
    cmp     rsi, len
    je      finish
    mov     rbx, [rsi]
    add     rax, rbx
    inc     rsi
    inc     rsi
    jmp     loops
finish:
    xor     rdx, rdx
    mov     rbx, len
    div     rbx
    add     rax, 30
    mov     [avg], rax
    mov     rax, 4
    mov     rbx, 1
    mov     rcx, avg
    mov     rdx, 2
    int     80h
    mov     rax, 1
    mov     rbx, 0
    int     80h
