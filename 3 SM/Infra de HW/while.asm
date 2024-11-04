.data
    format_in: .asciiz "%d"
    format_out: .asciiz "%d\n"
    x: .word 1
    soma: .word 0

.text
    .globl main

main:
    li $t0, 0
    li $t1, 1

while_loop:
    li $v0, 5
    syscall
    sw $v0, x
    lw $t2, x
    add $t0, $t0, $t2
    bne $t2, 0, while_loop

    move $a0, $t0
    li $v0, 1
    syscall

    li $v0, 10
    syscall