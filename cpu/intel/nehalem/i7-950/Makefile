TARGETS = double
TARGETS += single

all: $(TARGETS)

double:
	nasm -f elf64 -DPOLYNOMIAL_POWER=$(POLYNOMIAL_POWER) -o polynomial.double.o polynomial.double.asm
	g++ -c -g -O2 main.cpp -o main.o
	g++ -c -g -O2 timer.cpp -o timer.o
	g++ -O2 -o double main.o polynomial.double.o timer.o -lrt

single:
	nasm -f elf64 -DPOLYNOMIAL_POWER=$(POLYNOMIAL_POWER) -o polynomial.single.o polynomial.single.asm
	g++ -c -g -O2 main.cpp -o main.o
	g++ -c -g -O2 timer.cpp -o timer.o
	g++ -O2 -o single main.o polynomial.single.o timer.o -lrt



clean:
	rm *.o single double
