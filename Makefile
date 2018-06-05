.PHONY: all, clean
CC = gcc
LDLIBs = -lredisApi
CFLAGS = -Wall -g -Wextra -std=c99 -D_GNU_SOURCE
LDFLAGS = -L./lib/api -Wl,-rpath,./lib/api/
SRC = src/features.c src/main.c src/etrie.c src/viz_functions.c src/testables.c
# IMPL = viz_draft.c
OBJ = shell

all: #implementation
	make -C api
	$(CC) $(LDFLAGS) $(CFLAGS) $(SRC) -o $(OBJ) -lreadline $(LDLIBS)
# implementation:
#	$(CC) $(CLFLAGS) -c $(IMPL) -o implementation
viz:
	$(CC) $(CFLAGS) $(VIZ_SRC) -o $(VIZ_OBJ)

clean:
	rm $(OBJ)
