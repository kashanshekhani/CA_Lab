bne x22, x23, Else #if, else, listing 3
add x19, x20, x21
beq x0, x0, Exit_if
Else:
    sub x19, x20, x21

Exit_if:
    add x0,x0,x0

loop:
    slli x10, x22, 3
    add x10,x10,x25
    lw x9,0(x10)
    bne x9,x24,Exit
    addi x22,x22,1
    beq x0,x0,loop
Exit:
    add x0,x0,x0