CC = gcc

SDL_LIB = -lncurses -I/usr/include
CFLAGS = -g -Wall -Wextra -std=c11

DEPS = board.h logic.h player.h debug.h stringParser.h records.h debug.h render.h
OBJ = game.o logic.o player.o board.o stringParser.o records.o render.o render.o
OTHELLO = othello

all: $(OTHELLO)

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

$(OTHELLO): $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(SDL_LIB)

clean:
	rm -f $(OBJ)
