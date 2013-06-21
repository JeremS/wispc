MAIN = wispc.js

all: main

main:
	cat ./src/wispc.wisp | wisp > $(MAIN)

clean:
	rm $(MAIN)
