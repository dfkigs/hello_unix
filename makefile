# a simple makefile for test
VPATH = src:lib:include
CFLAG = -Iinclude
CC = gcc

COMMON_OBJ = \
	  error.o \
	  errorlog.o

LS_OBJ = myls.o
STDIN2OUT_OBJ = stdin2out.o

.PHONY:all
all:myls stdin2out

.PHONY:myls
myls:$(COMMON_OBJ) $(LS_OBJ)
	$(CC) -o $@ $(COMMON_OBJ) $(LS_OBJ)

.PHONY:stdin2out
stdin2out:$(COMMON_OBJ) $(STDIN2OUT_OBJ)
	$(CC) -o $@ $(COMMON_OBJ) $(STDIN2OUT_OBJ)

%.o:%.c
	$(CC) $(CFLAG) -c $<

.PHONY:clean
clean:
	rm -f myls stdin2out $(COMMON_OBJ) $(LS_OBJ) $(STDIN2OUT_OBJ)
