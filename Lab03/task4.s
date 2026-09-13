    li x5, 0x68
    sb x5, 0x200(x0)
    li x5, 0x69
    sb x5, 0x201(x0)
    li x5, 0
    sb x5, 0x202(x0)
    jal x1, strcpy
end:
    j end
strcpy:
    addi sp, sp, -16
    sw x10, 12(sp)
    sw x11, 8(sp)
    sw x19, 4(sp)
    sw x6, 0(sp)
    li x10, 0x100
    li x11, 0x200
    li x19, 0
loop:
    add x5, x19, x11
    lb x6, 0(x5)
    add x7, x19, x10
    sb x6, 0(x7)
    beq x6, x0, done
    addi x19, x19, 1
    beq x0, x0, loop
done:
    lw x6, 0(sp)
    lw x19, 4(sp)
    lw x11, 8(sp)
    lw x10, 12(sp)
    addi sp, sp, 16
    jalr x0, 0(x1)