program := ./FLAPPY.BAS

# port := /dev/tty.usbserial-A601ZXQ7  
port := /dev/tty.SLAB_USBtoUART
basic-1 := /Users/johan/Projects/BASIC/experiments/upload/basic-1

load := $(basic-1) load --port=$(port) --progress
exec := $(basic-1) exec --port=$(port)

.PHONY: all new load run list

all: setup new load run

setup:
	$(exec) "OVERFLOW(1)"
	$(exec) "CURSOR(1)"
	$(exec) "CLS"

new:
	$(exec) "NEW"


run:
	$(exec) "RUN"


list:
	$(exec) "LIST"


load:
	$(load) $(program)
