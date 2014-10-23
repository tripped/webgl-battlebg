.PHONY: all clean

all: test.purs.js

test.purs.js: test.purs
	psc test.purs > test.purs.js

clean:
	rm test.purs.js
