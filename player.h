#ifndef __PLAYER_H__
#define __PLAYER_H__

#include "board.h"
#include "debug.h"

#define PLAYERNAME_SIZE 15

// struct to store player information
typedef struct Player {
    char *name;
    Field token;
    int score;

} Player;

#endif

int playerInit(Player *player);