    addi x5, x0, 0x200
    addi x22, x0, 0
Loop1:
    addi x6, x0, 10
    bge x22, x6, Exit1
    slli x7, x22, 2
    add x7, x7, x5
    sw x22, 0(x7)
    addi x22, x22, 1
    beq x0, x0, Loop1
Exit1:
    addi x22, x0, 0
    addi x23, x0, 0
Loop2:
    addi x6, x0, 10
    bge x22, x6, Exit2
    slli x7, x22, 2
    add x7, x7, x5
    lw x8, 0(x7)
    add x23, x23, x8
    addi x22, x22, 1
    beq x0, x0, Loop2
Exit2: