section .data

    msg     db      'enter number', 0Ah
    msg_l   equ     $-msg
    msg1    db      'BCD is ' ,
    msg1_l  equ     $-msg1
	 
section .text
global _start
_start:

    mov     rax, 4
    mov     rbx, 1
    mov     rcx, msg
    mov     rdx, msg_l
    int     80h
    mov     rax, 3
    mov     rbx, 0
    mov     rcx, rdi
    mov     rdx, 8
    int     80h
    fild    qword[rdi]
	fbstp   tword[rsi]
    mov     rax, 4
    mov     rbx, 1
    mov     rcx, msg1
    mov     rdx, msg1_l
    int     80h
    mov     rax, 4
    mov     rbx, 1
    mov     rcx, rsi
    mov     rdx, 3
    int     80h
    mov     rax, 1
    mov     rbx, 0
    int     80h

