.section .data
Numbers:
    .long 1
    .long 15
    .long 4
    .long 2
    .long 7
    .long 9
    .long 23
    .long 7
    .long 3
    .long 11

Array_length:
    .long 10

msg:
    .asciz "Maximum value is %d\n"

.section .text
.global main
.extern printf

main:
    pushq %rbp
    movq %rsp, %rbp

    # i = 1
    movl $1, %ecx

    # max = Numbers[0]
    movl Numbers(%rip), %eax

while_loop:
    # while (i < 10)
    cmpl Array_length(%rip), %ecx
    jge done

    # load Numbers[i]
    movl Numbers(,%rcx,4), %edx

    # if (Numbers[i] > max)
    cmpl %eax, %edx
    jle skip_update
    movl %edx, %eax

skip_update:
    # i++
    addl $1, %ecx
    jmp while_loop

done:
    # printf("Maximum value is %d\n", max);
    movl %eax, %esi
    leaq msg(%rip), %rdi
    movl $0, %eax
    call printf

    movl $0, %eax
    popq %rbp
    ret
    