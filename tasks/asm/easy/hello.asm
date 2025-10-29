; ASM - Easy
; Hello World program in x86-64 Assembly

section .data
    msg db 'Hello, World!', 0xA    ; Our string with newline character
    msglen equ $ - msg              ; Length of the string

section .text
    global _start                   ; Entry point for the program

_start:
    ; Write system call
    mov rax, 1                      ; sys_write system call number
    mov rdi, 1                      ; stdout file descriptor
    mov rsi, msg                    ; message to write
    mov rdx, msglen                 ; message length
    syscall                         ; call kernel

    ; Exit system call
    mov rax, 60                     ; sys_exit system call number
    mov rdi, 0                      ; exit status
    syscall                         ; call kernel