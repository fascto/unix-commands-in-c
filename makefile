CC := gcc
CFLAGS := -Wall -Wextra -std=c99
DEBUGFLAGS := -g
OPTFLAGS := -O2
LDFLAGS := 


PREFIX := /usr/local
TARGET := target
OBJECTS := ls.o

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(LDFLAGS) $^ -o $@

$(OBJECTS): %.o: %.c
	$(CC) -c $(CFLAGS) $(DEBUGFLAGS) $(OPTFLAGS) $< -o $@

.PHONY: all clean

clean:  
	rm -rf $(TARGET) $(OBJECTS)