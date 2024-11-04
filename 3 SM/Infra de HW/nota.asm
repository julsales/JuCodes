.data
    pergunta: .asciiz "Digite a nota da AV1: "
    resultado: .asciiz "Você precisa tirar %.2f na AV2 para passar por média.\n"
    impossivel: .asciiz "Mesmo com 10 na AV2, você não atinge a média.\n"

.text
    .globl main

main:
    li $v0, 4
    la $a0, pergunta
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    li $t1, 14
    sub $t2, $t1, $t0

    li $t3, 10
    ble $t2, $t3, print_resultado

    li $v0, 4
    la $a0, impossivel
    syscall
    j end

print_resultado:
    li $v0, 1
    move $a0, $t2
    syscall

end:
    li $v0, 10
    syscall