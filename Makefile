MAIN = wispc.js

all: 
	cat ./src/wispc.wisp | wisp > $(MAIN)

clean:
	rm $(MAIN)
