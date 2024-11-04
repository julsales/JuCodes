.data
    format_in: .asciiz "%d"
    format_out: .asciiz "%d\n"
    x: .word 0
    soma: .word 0

.text
    .globl main

main:
    li $t0, 0

do_while_loop:
    li $v0, 5
    syscall
    sw $v0, x
    lw $t1, x
    add $t0, $t0, $t1
    bne $t1, 0, do_while_loop

    move $a0, $t0
    li $v0, 1
    syscall

    li $v0, 10
    syscall