# Makefile.in generated by hand.
# Makefile.  Generated from Makefile.in by configure.

CC = gcc
CFLAGS = -g -O2
CPP = gcc -E
CPPFLAGS = 
CXX = g++
CXXLD = $(CXX)
CXXCPP = g++ -E
CXXFLAGS = -g -O2 -std=gnu++11 -O3 -Wall -Wextra -fPIC
LDFLAGS = 
LIBS = 
MKDIR_P = /opt/local/bin/gmkdir -p

EXEEXT = 
OBJEXT = o

$(shell $(MKDIR_P) bin)

all: bin/threes$(EXEEXT) bin/threes.so

bin/%$(EXEEXT): bin/%.$(OBJEXT)
	$(CXXLD) $(CXXFLAGS) $(LDFLAGS) $^ $(LDLIBS) -o $@

bin/%.so: bin/%.$(OBJEXT)
	$(CXXLD) $(CXXFLAGS) -shared $(LDFLAGS) $^ $(LDLIBS) -o $@

bin/%.$(OBJEXT) : %.cpp
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -c -o $@ $<

clean:
	$(RM) -rf bin/*

.PHONY: all clean
