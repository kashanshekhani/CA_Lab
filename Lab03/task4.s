.data
y: .string "hi"
x: .space 10
.text

main:
    la x10, x
    la x11, y
    jal x1, strcpy
    la x11, x
    li x10, 4
    ecall
    j end
strcpy:
    addi sp, sp, -8
    sw x19, 4(sp)
    addi x19, x0, 0
loop:
    add x5, x11, x19
    lb x6, 0(x5)
    sb x6, 0(sp)
    lb x6, 0(sp)
    add x7, x10, x19
    sb x6, 0(x7)
    beq x6, x0, exit
    addi x19, x19, 1
    j loop
exit:
    lw x19, 4(sp)
    addi sp, sp, 8
    jalr x0, 0(x1)
end: