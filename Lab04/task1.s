# Task a
fact:
    addi sp, sp, -8 # adjust stack for 2 items
    sw x1, 4(sp)
    sw x10, 0(sp)
    addi x5, x10, -1
    bge x5, x0, L1 # if (n - 1) >= 0, go to L1 (recursive step)
    addi x10, x0, 1 # base case: return 1
    addi sp, sp, 8
    jalr x0, 0(x1)

L1:
    addi x10, x10, -1
    jal x1, fact # recursive call: fact(n - 1)
    addi x6, x10, 0
    lw x10, 0(sp)
    lw x1, 4(sp)
    addi sp, sp, 8
    mul x10, x10, x6 # calculate: n * fact(n - 1)
    jalr x0, 0(x1)

# Task b
fact_iter:
    addi x5, x0, 1 # initialize acc = 1

loop:
    beq x10, x0, done # exit loop when n == 0
    mul x5, x5, x10 # acc = acc * n
    addi x10, x10, -1
    jal x0, loop

done:
    addi x10, x5, 0
    jalr x0, 0(x1)