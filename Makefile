program := ./CITY.BAS

# port := /dev/tty.usbserial-A601ZXQ7  
port := /dev/tty.SLAB_USBtoUART
basic-1 := /Users/johan/Projects/BASIC/experiments/upload/basic-1

load := $(basic-1) load --port=$(port) --progress
exec := $(basic-1) exec --port=$(port)

.PHONY: all new load run list

all: new load run

new:
	$(exec) "NEW"


run:
	$(exec) "RUN"


list:
	$(exec) "LIST"


load:
	$(load) $(program)
