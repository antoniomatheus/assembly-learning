#! /usr/bin/zsh
as write-records.s -o write-records.o --32
as writing.s -o writing.o --32
ld -m elf_i386 write-records.o writing.o -o write-records
