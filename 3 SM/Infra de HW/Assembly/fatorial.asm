.data
prompt: .asciiz "Entre com um numero N: "
result_msg: .asciiz "O fatorial de N e: "
newline: .asciiz "\n"

.text
.globl main

main:
    li $v0, 4
    la $a0, prompt
    syscall

    li $v0, 5
    syscall
    move $a0, $v0

    jal fatorial

    li $v0, 4
    la $a0, result_msg
    syscall

    move $a0, $v0
    li $v0, 1
    syscall

    li $v0, 4
    la $a0, newline
    syscall

    li $v0, 10
    syscall

fatorial:
    li $t1, 0
    beq $a0, $t1, factorial_base_case

    addi $a0, $a0, -1
    jal fatorial
    addi $a0, $a0, 1
    mul $v0, $v0, $a0

    jr $ra

factorial_base_case:
    li $v0, 1
    jr $ra