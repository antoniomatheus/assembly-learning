#! /bin/bash

./write-records-compile.sh
./read-records-compile.sh

as add-year.s -o add-year.o --32
ld -m elf_i386 add-year.o read-record.o writing.o -o add-year 
