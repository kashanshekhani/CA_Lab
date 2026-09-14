    addi x10, x0, 12
    addi x11, x0, 12
    jal  x1, sum #call sum
    addi x11, x0, 1
    add  x11, x10, x0 # move result for printing
    li   x10, 1
    ecall
    j    Exit
sum:
    add  x10, x10, x11 #return a + b
    jalr x0, 0(x1)
Exit: