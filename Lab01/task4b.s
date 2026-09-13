# base addresses
    li x10, 0x100 # base a
    li x11, 0x200 # base b
    li x12, 0x300 # base c

    # i = 0
    lb   x5, 0(x10)# a[0] (1 byte)
    lh   x6, 0(x11)# b[0] (2 bytes)
    add  x7, x5, x6
    sw   x7, 0(x12)# c[0] (4 bytes)

    # i = 1
    lb   x5, 1(x10)# offset: 1*1
    lh   x6, 2(x11)# offset: 1*2
    add  x7, x5, x6
    sw   x7, 4(x12)# offset: 1*4

    # i = 2
    lb   x5, 2(x10)# offset: 2*1
    lh   x6, 4(x11)# offset: 2*2
    add  x7, x5, x6
    sw   x7, 8(x12)# offset: 2*4

    # i = 3
    lb   x5, 3(x10)# offset: 3*1
    lh   x6, 6(x11)# offset: 3*2
    add  x7, x5, x6
    sw   x7, 12(x12)# offset: 3*4