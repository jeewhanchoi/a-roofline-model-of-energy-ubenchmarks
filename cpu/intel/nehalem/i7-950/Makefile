TARGETS = double
TARGETS += single

all: $(TARGETS)

double:
	nasm -f elf64 -DPOLYNOMIAL_POWER=$(POLYNOMIAL_POWER) -o polynomial.double.o polynomial.double.asm
	icpc -c -g -O2 jeecpubench.cpp -o main.o -openmp
	icpc -c -g -O2 timer.cpp -o timer.o
	icpc -O2 -o double main.o polynomial.double.o timer.o -lrt -openmp

single:
	nasm -f elf64 -DPOLYNOMIAL_POWER=$(POLYNOMIAL_POWER) -o polynomial.single.o polynomial.single.asm
	icpc -c -g -O2 jeecpubench.cpp -o main.o -openmp
	icpc -c -g -O2 timer.cpp -o timer.o
	icpc -O2 -o single main.o polynomial.single.o timer.o -lrt -openmp



clean:
	rm *.o single double
