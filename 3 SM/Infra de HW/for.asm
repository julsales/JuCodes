.data
    format: .asciiz "%d\n"      

.text
    .globl main

main:
    li $t0, 0                    

for_loop:
    bgt $t0, 10, end_for        

    move $a0, $t0                
    li $v0, 1                    
    syscall

    addi $t0, $t0, 1             
    j for_loop                  

end_for:
    li $v0, 10                  
    syscall