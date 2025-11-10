addi $t0, $zero, 8200     # Address to store final paycheck

ReadHours:
    addi $t6, $zero, 8192
    lw $t5, 0($t6)
    beq $t5, $zero, ReadHours
    addi $t6, $zero, 8196
    lw $t1, 0($t6)         # Load hours worked

ReadRate:
    addi $t6, $zero, 8192
    lw $t5, 0($t6)
    beq $t5, $zero, ReadRate
    addi $t6, $zero, 8196
    lw $t2, 0($t6)         # Load hourly rate

ReadBonus:
    addi $t6, $zero, 8192
    lw $t5, 0($t6)
    beq $t5, $zero, ReadBonus
    addi $t6, $zero, 8196
    lw $t3, 0($t6)         # Load bonus

mul $t4, $t1, $t2          # hours * rate
add $t4, $t4, $t3          # add bonus

sw $t4, 0($t0)             # Store total paycheck

End:
    j End                   # Loop forever
