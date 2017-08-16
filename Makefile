CC = gcc
RM = rm -rf
HEADER_PATH = -I ./include
LIB_PATH = -L ./lib
LIBNICE = -lnice

CFLAGS += `pkg-config --cflags glib-2.0`
LDFLAGS += `pkg-config --libs glib-2.0`


test: test.o
	$(CC) $^ -o $@ $(LIB_PATH) $(LIBNICE)

test.o: test.c
	$(CC) $(CFLAGS) -c $^ $(HEADER_PATH)

.PHONY: clean
clean:
	$(RM) test *.o
