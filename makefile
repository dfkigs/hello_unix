# a simple makefile for test
VPATH = src:lib:include
CFLAG = -Iinclude
CC = gcc

OBJ = ls.o \
	  error.o \
	  errorlog.o

.PHONY:all
all:ls

.PHONY:ls
ls:$(OBJ)
	$(CC) -o $@ $(OBJ)
%.o:%.c
	$(CC) $(CFLAG) -c $<

.PHONY:clean
clean:
	rm -f ls $(OBJ)
