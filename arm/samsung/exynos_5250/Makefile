all:
	as -g --defsym MLA_PER_DOUBLE=$(MLA_PER_DOUBLE) --defsym MLA_PER_FLOAT=$(MLA_PER_FLOAT) -o sumsq.o sumsq.S
	g++ -O2 -DMLA_PER_DOUBLE=$(MLA_PER_DOUBLE) -DMLA_PER_FLOAT=$(MLA_PER_FLOAT) -o main main.cpp sumsq.o -lrt -fopenmp -lgomp

clean:
	rm -f main
	rm -r sumsq.o
