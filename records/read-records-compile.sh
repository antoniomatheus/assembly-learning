#! /bin/bash

as read-record.s -o read-record.o --32
as count-chars.s -o count-chars.o --32
as write-newline.s -o write-newline.o --32
as read-records.s -o read-records.o --32
ld -m elf_i386 read-record.o count-chars.o write-newline.o read-records.o -o read-records
