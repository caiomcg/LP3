CC ?= gcc
FILE ?= sum
OUT ?= executable
WAT = -fno-asynchronous-unwind-tables

ifeq ($(CC), g++)
CFLAGS = -Wall -Werror -pedantic -O2 -std=c++11
TAIL = cpp
else
CFLAGS = -Wall -Werror -pedantic -O2 -std=c99
TAIL = c
endif

all: $(FILE).o
	@echo '>>> Building all'

$(FILE).o: $(FILE).$(TAIL)
	$(CC) $(CFLAGS) -E $(FILE).$(TAIL) > $(FILE).i
	$(CC) $(CFLAGS) $(WAT) -S $(FILE).i
	$(CC) $(CFLAGS) -c $(FILE).s

executable:
	@echo '>>> Building executable.'
	$(CC) $(CFLAGS) $(FILE) -o $(OUT)

clean:
	rm -rfv *.o *.i *.s

.PHONY: clean