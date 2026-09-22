bubble:
    beq x10, x0, ret_b # return if array is empty or length is 0
    beq x11, x0, ret_b
    addi x6, x0, 0
outer:
    bge x6, x11, ret_b # outer loop: i from 0 to length - 1
    addi x7, x6, 0
inner:
    bge x7, x11, next_i # inner loop: j from i to length - 1
    slli x28, x6, 2
    slli x29, x7, 2
    add x28, x10, x28
    add x29, x10, x29
    lw x30, 0(x28)
    lw x31, 0(x29)
    bge x30, x31, no_swap # if a[i] >= a[j], don't swap
    sw x31, 0(x28) # swap a[i] and a[j]
    sw x30, 0(x29)
no_swap:
    addi x7, x7, 1
    jal x0, inner
next_i:
    addi x6, x6, 1
    jal x0, outer
ret_b:
    jalr x0, 0(x1)