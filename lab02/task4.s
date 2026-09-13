    li x5, 10
    li x6, 5
    li x10, 0x100
    addi x7, x0, 0
LoopI:
    bge x7, x5, ExitI
    addi x29, x0, 0
    add x31, x10, x0
LoopJ:
    bge x29, x6, ExitJ
    add x28, x7, x29
    sw x28, 0(x31)
    addi x29, x29, 1
    addi x31, x31, 16
    beq x0, x0, LoopJ
ExitJ:
    addi x7, x7, 1
    beq x0, x0, LoopI
ExitI: