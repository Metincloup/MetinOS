#!/bin/sh
set -xe

nasm -f bin main.asm -o boot.bin
bochs -f bochs_config 
