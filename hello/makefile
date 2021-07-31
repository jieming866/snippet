hello: asm.o
	ld -o hello asm.o

asm.o: asm.s
	as -o asm.o asm.s

.PHONY: clean

clean:
	@rm -rf asm.o hello
