# This is a Makefile for compiling a program using GSL

# Define the compiler to use.
CXX = g++

# Compiler and linker flags.
GSL_INC = /usr/local/include
GSL_LIB = /usr/local/lib
CXXFLAGS = -std=c++11 -I${GSL_INC} -O2
LDFLAGS = -L${GSL_LIB}
LDLIBS = -lgsl -lgslcblas

all: test

test: test.o
	${CXX} -o test test.o ${LDFLAGS} ${LDLIBS}

test.o: test.cc
	${CXX} ${CXXFLAGS} -c -o test.o test.cc
clean:
	@rm -f test.o test
