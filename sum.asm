section .data

    num     dw      0x2,0x4,0x1
    numl    equ     3
    format  db      '%d', 0
    sum     db      0
    

global main
extern printf
section .text
main:

    mov ecx,numl
    mov eax,0
    mov ebx,num

repeat:
    
    add eax,[ebx]
    inc ebx
    inc ebx
    dec ecx
    jnz repeat
    mov [sum],eax
    mov eax,0
    mov esi,[sum]
    mov edi,format
    call printf
    ret
