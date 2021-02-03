#!/bin/bash

[[ $# -ne 1 ]] && {
    echo "Usage: $0 <2.6.x kernel source path>"
    exit 1
}

cd "$1" 2>/dev/null || {
    echo "2.6.x Kernel directory $1 not exist"\!
    exit 1
}

LNX="$(pwd)"

find "$LNX"                                                               \
    -path "$LNX/arch/*" ! -path "$LNX/arch/x86*" -prune -o                \
    -path "$LNX/include/asm-*" ! -path "$LNX/include/asm-x86*" -prune -o  \
    -path "$LNX/tmp*" -prune -o                                           \
    -path "$LNX/Documentation*" -prune -o                                 \
    -path "$LNX/scripts*" -prune -o                                       \
    -path "$LNX/drivers*" -prune -o                                       \
    -name "*.[chxsS]" -print > cscope.files

cscope -bkq
ctags -L cscope.files

