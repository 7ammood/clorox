CC = cc
CFLAGS = -Wall -Wextra -O3 -Isrc -std=c99

ifeq ($(OS), Windows_NT)
    LDFLAGS = -static
    TARGET = clorox.exe
    CLEAN_CMD = del /Q src\*.o 2>NUL || exit 0
    FCLEAN_CMD = del /Q $(TARGET) 2>NUL || exit 0
else
    LDFLAGS = 
    TARGET = clorox
    CLEAN_CMD = rm -f src/*.o
    FCLEAN_CMD = rm -f $(TARGET)
endif

SRCS = src/main.c \
       src/chunk.c \
       src/memory.c \
       src/debug.c \
       src/value.c \
       src/vm.c \
       src/scanner.c \
       src/compiler.c \
       src/object.c \
       src/table.c

OBJS = $(SRCS:.c=.o)

all: $(TARGET)
	$(CLEAN_CMD)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS) $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(CLEAN_CMD)

fclean: clean
	$(FCLEAN_CMD)

.PHONY: all clean fclean