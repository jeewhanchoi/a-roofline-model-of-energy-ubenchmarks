all: clbench

clbench: main.cpp timer.cpp
	$(CXX) -c -g -O2 $(CXXFLAGS) main.cpp -o main.o
	$(CXX) -c -g -O2 $(CXXFLAGS) timer.cpp -o timer.o
	$(CXX) -o clbench $(LDFLAGS) main.o timer.o -lOpenCL -lrt

clean:
	rm -f *.o
	rm -f clbench
