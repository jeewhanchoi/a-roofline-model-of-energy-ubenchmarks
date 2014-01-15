all:
	as -g --defsym MLA_PER_DOUBLE=$(MLA_PER_DOUBLE) --defsym MLA_PER_FLOAT=$(MLA_PER_FLOAT) -o stdev.o stdev.S
	g++ -o timer.o -c timer.cpp
	g++ -O2 -DMLA_PER_DOUBLE=$(MLA_PER_DOUBLE) -DMLA_PER_FLOAT=$(MLA_PER_FLOAT) -o main main.cpp stdev.o timer.o -lrt -fopenmp -lgomp

clean:
	rm -f main
	rm -r *.o
