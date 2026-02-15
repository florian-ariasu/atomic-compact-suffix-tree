SOURCE_FILES := STree.c STreeComp.c
HEADERS := STree.h STreeComp.h

build: main.c $(SOURCE_FILES) $(HEADERS)
	gcc -Wall -g main.c $(SOURCE_FILES) -o tema2

run: build
	./tema2

clean:
	rm -rf tema2 rezultat_valgrind.txt

check:
	bash ./checker.sh