.PHONY: all, clean
CC = gcc
LDLIBS = -lredisApi
CFLAGS = -Wall -g -Wextra -std=c99 -D_GNU_SOURCE
LDFLAGS = -Llib/api/ -Wl,-rpath,lib/api/
LIB = 
SRC = src/features.c src/main.c src/etrie.c src/viz_functions.c src/testables.c
# IMPL = viz_draft.c
OBJ = shell

all: #implementation
	make -C lib/api
	$(CC) $(LDFLAGS) $(CFLAGS) $(SRC) -o $(OBJ) -lreadline $(LDLIBS)
# implementation:
#	$(CC) $(CLFLAGS) -c $(IMPL) -o implementation
viz:
	$(CC) $(CFLAGS) $(VIZ_SRC) -o $(VIZ_OBJ)

clean:
	rm $(OBJ)
