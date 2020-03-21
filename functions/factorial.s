    #PURPOSE - Given a number, this program computes the factorial. For, example
    #          the factorial of 3 is 3 * 2 * 1.

    #This program shows how to call a function recursively.

    .section .data

    #This program has no global data

    .section .text

    .globl _start
    .globl factorial    #this is unneeded unless we want to share this function
                        #among other programs
_start:
    pushl $4            #The factorial takes one argument.
    call factorial      # run the factorial function
    addl $4, %esp
    movl %eax, %ebx
    movl $1, %eax
    int $0x80

    .type factorial,@function
factorial:
    pushl %ebp          #we have to restore %ebp to its prior state before returning
    movl %esp, %ebp
    movl 8(%ebp), %eax
    cmpl $1, %eax
    je end_factorial

    decl %eax
    pushl %eax
    call factorial
    movl 8(%ebp), %ebx
    imull %ebx, %eax

end_factorial:
    movl %ebp, %esp
    popl %ebp           #restore the base pointer of the last scope
    ret                 #puts the return address into %eip
