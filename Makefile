.PHONY: build

build-clean:
	make clean
	make build

build:
	gcc -o build/main src/main.c

clean:
	rm -f build/main