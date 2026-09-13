.data
v: .word 10, 20, 30, 40
.text

main:
    la x10, v
    addi x11, x0, 1
    jal x1, swap
    j exit
swap:
    addi sp, sp, -4
    slli x5, x11, 2
    add x5, x10, x5
    lw x6, 0(x5)
    sw x6, 0(sp)
    lw x7, 4(x5)
    sw x7, 0(x5)
    lw x6, 0(sp)
    sw x6, 4(x5)
    addi sp, sp, 4
    jalr x0, 0(x1)
exit: