section .data

    num     dw      10,15,36
    numl    equ     3

section .bss

     sum     resw      1

section .text
global _start

_start:

    mov ecx,numl
    mov eax,0
    mov ebx,num

repeat:
    
    add eax,[ebx]
    inc ebx
    inc ebx
    dec ecx
    jnz repeat
    mov eax,100
    mov [sum],eax
    mov eax,1
    mov edi,1
    mov esi,sum
    syscall
    mov eax,60
    mov edi,0
    syscall
