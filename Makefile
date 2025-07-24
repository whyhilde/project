# Copyright (c) 2025 whyhilde, sakuyma1337
# SPDX-License-Identifier: MIT


APP_NAME = app


$(APP_NAME): obj/main.o obj/qsort.o
	gcc obj/main.o obj/qsort.o -o $(APP_NAME)

obj/main.o: main.c
	@mkdir -p obj
	gcc -c main.c -Iinclude -o obj/main.o

obj/qsort.o: src/qsort.c
	@mkdir -p obj
	gcc -c src/qsort.c -Iinclude -o obj/qsort.o

clean:
	rm -rf obj $(APP_NAME)
