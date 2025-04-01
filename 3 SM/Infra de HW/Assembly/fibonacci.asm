.data
prompt: .asciiz "Entre com um numero N: "
newline: .asciiz "\n"

.text
.globl main

main:
    li $v0, 4
    la $a0, prompt
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    li $t1, 0

print_fibonacci:
    bge $t1, $t0, end
    move $a0, $t1
    jal fibonacci
    move $a0, $v0
    li $v0, 1
    syscall

    li $v0, 4
    la $a0, newline
    syscall

    addi $t1, $t1, 1
    j print_fibonacci

end:
    li $v0, 10
    syscall

fibonacci:
    li $t2, 0
    beq $a0, $t2, caso_zero
    li $t2, 1
    beq $a0, $t2, caso_um

    addi $a0, $a0, -1
    jal fibonacci
    move $t3, $v0

    addi $a0, $a0, -1
    jal fibonacci
    add $v0, $v0, $t3

    jr $ra

caso_zero:
    li $v0, 0
    jr $ra

caso_um:
    li $v0, 1
    jr $ra