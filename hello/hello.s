.global _start

.data
message:
    .ascii "Hello World!\n"

.text
_start:
    movq $1, %rax
    movq $1, %rdi
    movq $message, %rsi
    movq $13, %rdx
    syscall

    movq $60, %rax
    movq $0, %rdi
    syscall

