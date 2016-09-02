CC = gcc
CFLAGS =  -Wall -Werror
FILE ?= sum
OUT ?= out

all: unit assembly object
	@echo '>>> Building all'

unit: $(DEFAULT_PATH)$(FILE).c
	@echo '>>> Building translation unit.'
	$(CC) $(CFLAGS) -E $(FILE).c > $(FILE).i

assembly: $(DEFAULT_PATH)$(FILE).i
	@echo '>>> Building assembly.'
	$(CC) $(CFLAGS) -S $(FILE).i

object: $(DEFAULT_PATH)$(FILE).s
	@echo '>>> Building object file.'
	$(CC) $(CFLAGS) -c $(FILE).s

executable: $(DEFAULT_PATH)$(FILE)
	@echo '>>> Building executable.'
	$(CC) $(CFLAGS) $(DEFAULT_PATH)$(FILE) -o $(OUT)

clean:
	rm -rfv *.o *.i *.s

.PHONY: clean