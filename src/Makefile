CC=clang
CFLAGS= -S -emit-llvm
LD=llvm-link


.PHONY: all clean

EXE := bzip2

SRC := $(wildcard *.c)
OBJ := $(patsubst %.c,%.bc,$(SRC))
                                                                                
all:$(EXE)

$(EXE): $(OBJ)
	$(LD) -o $(EXE)_link.bc $(OBJ)
#opt -load myPass.so -myPassName <$(EXE)_link.bc > $(EXE)_mypass.bc
	opt -O3 <$(EXE)_link.bc > $(EXE)_O3.bc
	llc -o $(EXE).s $(EXE)_O3.bc
	$(CC) -o $@ $(EXE).s

%.bc: %.c
	$(CC) -c $(CFLAGS) $< -o $@

clean:
	rm *.bc *.s $(EXE)
