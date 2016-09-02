CC = gcc
CFLAGS =  -Wall -Werror
FILE ?= sum

all: unit assembly object executable
	@echo '>>> Building all'

unit: $(DEFAULT_PATH)$(FILE).c
	@echo '>>> Building translation unit.'
	$(CC) $(CFLAGS) -E $(FILE).c > $(FILE).i

assembly: $(DEFAULT_PATH)$(FILE).i
	@echo '>>> Building assembly.'
	$(CC) $(CFLAGS) -S $(FILE).i

object: $(DEFAULT_PATH)$(FILE).s
	@echo '>>> Building object file.'
	$(CC) $(CFLAGS) -C $(FILE).s

executable: $(DEFAULT_PATH)$(FILE).o
	@echo '>>> Building executable.'
	$(CC) $(CFLAGS) $(DEFAULT_PATH)$(FILE).o -E $(FILE)

clean:
	rm -rfv *.o *.i *.s

.PHONY: clean