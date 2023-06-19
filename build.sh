#!/bin/sh
set -xe

nasm -f bin main.asm -o boot.bin
qemu-system-x86_64 boot.bin

