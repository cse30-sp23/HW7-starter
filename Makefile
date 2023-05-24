EXE = life
EXEOPT = life_opt
OBJS = doRow.o nGetIndex.o
OOBJS = OBJS = doRow.o nGetIndexO3.o

LIBS = -lcse30liferv -lcse30life
CC = gcc 
CFLAGS := -O0 -g --std=gnu11 -L/home/linux/ieng6/cs30sp23/public/lib
CFLAGSOPT := -O3 -g --std=gnu11 -L/home/linux/ieng6/cs30sp23/public/lib

.PHONY: clean

$(EXE) : $(OBJS) 
	gcc -o $@ $(CFLAGS) $(OBJS) $(LIBS)

$(EXEOPT) : doRow.o nGetIndexO3.o
	gcc -o $@ $(CFLAGS) doRow.o nGetIndexO3.o $(LIBS)

nGetIndex.o : nGetIndex.c nGetIndex.h

nGetIndexO3.o : nGetIndex.c nGetIndex.h
	-ln -s nGetIndex.c nGetIndexO3.c
	gcc $(CFLAGSOPT) -c nGetIndexO3.c



doRow.o : doRow.S
	gcc -c $(CFLAGS) doRow.S

clean :
	rm -f $(OBJS)
	rm $(EXE)

