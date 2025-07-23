APP_NAME = app


$(APP_NAME): obj/main.o obj/func.o
	gcc obj/main.o obj/func.o -o $(APP_NAME)

obj/main.o: main.c
	@mkdir -p obj
	gcc -c main.c -Iinclude -o obj/main.o

obj/func.o: src/func.c
	@mkdir -p obj
	gcc -c src/func.c -Iinclude -o obj/func.o

clean:
	rm -rf obj $(APP_NAME)
