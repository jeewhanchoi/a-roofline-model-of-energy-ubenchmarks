all: clbench clcache

clbench: main.cpp timer.cpp
	$(CXX) -c -g -O2 $(CXXFLAGS) main.cpp -o main.o
	$(CXX) -c -g -O2 $(CXXFLAGS) timer.cpp -o timer.o
	$(CXX) -o clbench $(LDFLAGS) main.o timer.o -lOpenCL -lrt

clcache: cache.cpp timer.cpp
	$(CXX) -c -g -O2 $(CXXFLAGS) cache.cpp -o cache.o 
	$(CXX) -c -g -O2 $(CXXFLAGS) timer.cpp -o timer.o
	$(CXX) -o clcache $(LDFLAGS) cache.o timer.o -lOpenCL -lrt

clean:
	rm -f *.o
	rm -f clbench clcache
