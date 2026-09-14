    addi x10, x10, 0x100
    li x9, 15
    li x12, 25
    sw x9, 0(x10)
    sw x12, 4(x10)
    li x11, 0
    jal x1, swap # call swap
    j exit
swap:
    slli x6, x11, 2
    add x6, x10, x6 # address of v[k]
    lw x5, 0(x6) # temp = v[k]
    lw x7, 4(x6)
    sw x7, 0(x6)
    sw x5, 4(x6)
    jalr x0, 0(x1)
exit: