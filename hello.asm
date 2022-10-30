section .data

	msg1 db "what is your name : ",10
	len1 equ $-msg1
	msg2 db "Hello "
	len2 equ $-msg2

section .bss

	name resb 32

section .text

global _start
_start:
	call _print_msg1
	call _read_name
	call _print_msg2
	call _print_name

	mov rax,60
	mov rdx,0
	syscall

_print_msg1:
	mov rax,1
	mov rdi,1
	mov rsi,msg1
	mov rdx,len1
	syscall
	ret

_read_name:
	mov rax,0
	mov rdi,0
	mov rsi,name
	mov rdx,32
	syscall
	ret

_print_msg2:
	mov rax,1
	mov rdi,1
	mov rsi,msg2
	mov rdx,len2
	syscall
	ret

_print_name:
	mov rax,1
	mov rdi,1
	mov rsi,name
	mov rdx,32
	syscall
	ret