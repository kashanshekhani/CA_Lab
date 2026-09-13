# init values
addi x19, x0, 5
add  x20, x0, x0
addi x19, x20, 32

# find d
add  x21, x19, x20
addi x21, x21, -5

# calculate e
sub  x5, x19, x21
sub  x6, x20, x19
add  x22, x5, x6
add  x22, x22, x21

# final sum
add  x22, x22, x19
add  x22, x22, x20
add  x22, x22, x21