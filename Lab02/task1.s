.data
save: .word 3, 4, 7, 7, 7, 9, 2, 1
.text
.globl main
main:
    li x22, 5
    li x23, 5
    li x20, 8
    li x21, 3
    li x24, 7
    la x25, save
    bne x22, x23, Else
    add x19, x20, x21
    beq x0, x0, Exit
Else:
    sub x19, x20, x21
Exit:
Loop:
    slli x10, x22, 2
    add x10, x10, x25
    lw x9, 0(x10)
    bne x9, x24, WExit
    addi x22, x22, 1
    beq x0, x0, Loop
WExit:
end:
    j end