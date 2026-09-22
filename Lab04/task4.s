main:
    addi x10, x0, 6 # set n = 6
    jal x1, fib # call fib(n)
    addi x11, x10, 0
    j exit
fib:
    addi sp, sp, -12 # allocate stack frame for 3 items
    sw x1, 8(sp)
    sw x10, 4(sp)
    bgt x10, x0, chk1 # base case: if n <= 0, return 0
    addi x10, x0, 0
    j ret_fib
chk1:
    addi x7, x10, -1
    bne x7, x0, recurse # base case: if n == 1, return 1
    addi x10, x0, 1
    j ret_fib
recurse:
    addi x10, x10, -1
    jal x1, fib # recursive call: fib(n - 1)
    sw x10, 0(sp) # save fib(n - 1) result on stack
    lw x10, 4(sp)
    addi x10, x10, -2
    jal x1, fib # recursive call: fib(n - 2)
    lw x6, 0(sp)
    add x10, x10, x6 # result = fib(n - 1) + fib(n - 2)
ret_fib:
    lw x1, 8(sp)
    addi sp, sp, 12
    jalr x0, 0(x1)
exit: