TARGET=calc
C_SOURCES=*.c
OBJS := $(patsubst %.c,%.o,$(C_SOURCES))

all: clean calc test
	
calc:
	@echo 'list of all .c files:'
	@echo $(C_SOURCES)
	@echo 'compiling .c files...'
	gcc -c $(C_SOURCES)
	@echo ' '
	@echo 'List of all object files:'
	@echo $(OBJS)
	@echo 'Building the binary file...'
	gcc $(OBJS) -o $(TARGET)
	@echo ' '

test:
	./$(TARGET) 2 3

clean:
	rm -f $(TARGET) *.o #wildcards

















