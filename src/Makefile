CC = gcc
CFLAGS =  -Wall -Werror
FILE ?= sum
OUT ?= out

all: $(FILE).o
	@echo '>>> Building all'

$(FILE).o: $(FILE).c
	$(CC) $(CFLAGS) -E $(FILE).c > $(FILE).i
	$(CC) $(CFLAGS) -S $(FILE).i
	$(CC) $(CFLAGS) -c $(FILE).s

executable: $(FILE)
	@echo '>>> Building executable.'
	$(CC) $(CFLAGS) $(FILE) -o $(OUT)

clean:
	rm -rfv *.o *.i *.s

.PHONY: clean