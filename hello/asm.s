
.data
message:
    .ascii "Hello World!\n"

.text
.global _start
_start:
    movq $4, %rax
    movq $1, %rbx
    movq $message, %rcx
    movq $13, %rdx
    int $0x80
    movq $0, %rbx
    movq $1, %rax
    int $0x80

