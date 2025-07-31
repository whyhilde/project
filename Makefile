# Copyright (c) 2025 whyhilde, sakuyma1337
# SPDX-License-Identifier: MIT


APP_NAME = app


bin/$(APP_NAME): obj/main.o obj/.o
	@mkdir -p bin
	gcc obj/main.o obj/.o -o $(APP_NAME)

obj/main.o: main.c
	@mkdir -p obj
	gcc -c main.c -Iinclude -o obj/main.o

obj/.o: src/.c
	@mkdir -p obj
	gcc -c src/.c -Iinclude -o obj/.o

clean:
	rm -rf obj bin $(APP_NAME)
