x64:
	nasm -f elf64 -o x64-sequential.o x64-sequential.asm
	nasm -f elf64 -o x64-random.o x64-random.asm
	nasm -f elf64 -o x64-random-atomic.o x64-random-atomic.asm
	g++ -O2 -g -o ubench-x64 $(CXXFLAGS) -static main.cpp x64-sequential.o x64-random.o x64-random-atomic.o -lrt -fopenmp
k1om:
	x86_64-k1om-linux-as --march=k1om -o k1om-sequential.o k1om-sequential.asm
	x86_64-k1om-linux-as --march=k1om -o k1om-random.o k1om-random.asm
	icpc -O2 -g -mmic -o ubench-k1om $(CXXFLAGS) -static-intel -no-intel-extensions main.cpp k1om-sequential.o k1om-random.o -lrt -openmp
arm:
	as -o arm-sequential.o arm-sequential.asm
	as -o arm-random.o arm-random.asm
	as -o arm-random-atomic.o arm-random-atomic.asm
	g++ -O2 -g -march=armv7-a -o ubench-arm -static main.cpp arm-sequential.o arm-random.o arm-random-atomic.o -lrt -fopenmp
clean:
	rm -f *.o
	rm -f ubench-ivb	
