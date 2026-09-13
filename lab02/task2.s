    addi x22, x0, 10 # b = 10
    addi x23, x0, 4 # c = 4

    addi x20, x0, 1 # x = 1

    addi x5, x0, 1
    beq  x20, x5, Case1    # if (x == 1) goto Case1

    addi x5, x0, 2
    beq  x20, x5, Case2

    addi x5, x0, 3
    beq  x20, x5, Case3

    addi x5, x0, 4
    beq  x20, x5, Case4

    # default:
    addi x21, x0, 0        # a = 0
    beq  x0, x0, Exit      # break

Case1:
    add  x21, x22, x23 # a = b + c
    beq  x0, x0, Exit 

Case2:
    sub  x21, x22, x23 # a = b - c
    beq  x0, x0, Exit 

Case3:
    slli x21, x22, 1 # a=b*2 (shift left logical by 1)
    beq  x0, x0, Exit     

Case4:
    srai x21, x22, 1 # a=b/2 (shift right arithmetic by 1 for signed int)
    beq  x0, x0, Exit 

Exit: