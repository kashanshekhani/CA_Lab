main:
    addi x10, x0, 5 # set num = 5
    jal x1, ntri # call ntri(num)
    addi x11, x10, 0
    j exit
ntri:
    addi sp, sp, -8 # allocate stack space for 2 items
    sw x1, 4(sp)
    sw x10, 0(sp)
    li t0, 1
    ble x10, t0, base_case # if num <= 1, go to base_case
recurse:
    addi x10, x10, -1
    jal x1, ntri # recursive call: ntri(num - 1)
    addi x6, x10, 0
    lw x10, 0(sp)
    lw x1, 4(sp)
    addi sp, sp, 8
    add x10, x10, x6 # result = num + ntri(num - 1)
    jalr x0, 0(x1)
base_case:
    addi x10, x0, 1 # base case: return 1
    addi sp, sp, 8
    jalr x0, 0(x1)
exit: