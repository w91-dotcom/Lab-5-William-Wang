# Lab-5

## Task 1
gcc -O0 -S -m32 task1_op.c
gcc -O4 -S -m32 task1_unop.c

### Compile Commands
gcc -m32 -no-pie task1_op.s -o task1_op
gcc -m32 -no-pie task1_unop.s -o task1_unop

### Run Commands
./task1_op
./task1_unop

## Task 2
gcc -O0 -S -m64 task2.c
gcc -O0 -S -m64 task2.cpp

### Compile Commands
gcc -no-pie task2.c -o task2
gcc -no-pie task2.s -o task2_asm

### Run Commands
./task2
./task2_asm

## Task 3
gcc -O0 -S -m64 task3.cpp

### Compile Commands
gcc -no-pie task3.c -o task3
gcc -no-pie task3.s -o task3_asm
gcc -no-pie task3_max.s -o task3_max

### Run Commands
./task3
./task3_asm
./task3_max