CFLAGS=-c -Iinc
LDFLAGS=-Llib -lpi
CC=gcc
SRC=src/libreriaPi.c
INC=inc/libreriaPi.h
MAIN=src/programaPi.c

all:lib/libpi.a lib/libpi.so

lib/libreriaPi.o:$(SRC) $(INC)
	$(CC) $(CFLAGS) $(SRC) -o $@

lib/libreriaPis.o:$(SRC) $(INC)
	$(CC) $(CFLAGS) -fPIC  $(SRC) -o $@


lib/libpi.a:lib/libreriaPi.o
	$(AR) rcs $@ $< 

lib/libpi.so:lib/libreriaPis.o
	$(CC) -shared -Wl,-soname,libpi.so -o $@ $< 

pi:$(MAIN) lib/libpi.so
	$(CC) $(CFLAGS) $< -o $@.o
	$(CC) $@.o $(LDFLAGS) -o $@

clean:
	rm -rf lib/* pi pi.o
