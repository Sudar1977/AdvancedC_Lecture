gcc -c -o funct.o function.c -O2
gcc -c -o main.o main.c -O2
gcc -o prog main.o funct.o

