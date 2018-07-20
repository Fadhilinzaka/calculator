TARGET := calc
C_SOURCES := $(shell ls *.c)#*.c
OBJS := $(patsubst %.c,%.o,$(C_SOURCES))
CC := gcc
C_FLAGS := -c

all: clean calc test

#Add dependancy and automate compile step	
$(TARGET):$(OBJS) 
	@echo 'list of all .c files:'
	@echo $(C_SOURCES)
	@echo ' '
	@echo 'List of all object files:'
	@echo $(OBJS)
	@echo 'Building the binary file...'
	$(CC) $(OBJS) -o $(TARGET)
	@echo ' '

#Add a seperate automated compile target
%.o: %.c 
	@echo 'compiling file $<'
	$(CC) $(C_FLAGS) $< -o $@
	@echo ' '

#add a dependancy
test: $(TARGET) 
	./$(TARGET)

clean:
	rm -f $(TARGET) *.o

















