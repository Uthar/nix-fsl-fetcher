all: so

fossil.o: fossil.cc
	$(CXX) -std=c++17 -c fossil.cc -o fossil.o

so: fossil.o
	$(CXX) -std=c++17 -shared -o libnix-fsl-fetcher.so fossil.o
