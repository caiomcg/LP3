CC = gcc
CFLAGS =  -Wall -Werror -pedantic -O2 -std=c99
FILE ?= sum
OUT ?= executable
WAT = -fno-asynchronous-unwind-tables

all: $(FILE).o
	@echo '>>> Building all'

$(FILE).o: $(FILE).c
	$(CC) $(CFLAGS) -E $(FILE).c > $(FILE).i
	$(CC) $(CFLAGS) $(WAT) -S $(FILE).i
	$(CC) $(CFLAGS) -c $(FILE).s

executable:
	@echo '>>> Building executable.'
	$(CC) $(CFLAGS) $(FILE) -o $(OUT)

clean:
	rm -rfv *.o *.i *.s

.PHONY: clean