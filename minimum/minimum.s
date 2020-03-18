# Find the minimum in a list

# %eax - Current value
# %edi - Current index
# %ebx - Current minimum

.section .data
  numbers:
    .long 3,67,34,222,45,75,54,34,44,33,22,11,66,255

.section .text
.globl _start
  _start:
    movl $0, %edi
    movl numbers(,%edi,4), %eax
    movl %eax, %ebx

    loop:
      cmpl $13, %edi
      je end
      incl %edi
      movl numbers(,%edi,4), %eax
      cmpl %eax, %ebx
      jle loop
      movl %eax, %ebx
      jmp loop

    end:
      movl $1, %eax

