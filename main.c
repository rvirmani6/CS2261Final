//so right now, my life sprites don't disappear off the screen when the player loses a life.
//but the variable does go down so that you can still lose the game when lives = 0
//also, you can regain lives when you shoot a shooting star, but again, because my 
//life sprites aren't disappearing and appearing as i should, it's just not visually
//apparent.

//also, I just don't have my cheat implemented yet

//but other than that, a player can reach the win and lose states by following the instructions:)!!


#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "sound.h"

#include "spritesheet.h"
#include "start.h"
#include "nightBg.h"
#include "mountains.h"
#include "lives.h"
#include "win.h"
#include "lose.h"
#include "pause.h"
#include "instructions.h"

#include "SpaceSong.h"
#include "GlassAnimals.h"
#include "Laser.h"

// Prototypes
void initialize();

// State Prototypes
void goToStart();
void start();
void goToInstructions();
void instructions();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();

// States
enum {START, INSTRUCTIONS, GAME, PAUSE, WIN, LOSE};
int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Player Variables
int row;
int col;
int oldRow;
int oldCol;
int rDel;
int cDel;

unsigned short hOff;

// int hOff = 0;
// int vOff = 0;

OBJ_ATTR shadowOAM[128];

char score[41];

int main() {

    initialize();

    while(1) {

        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;

        setupInterrupts();
	    setupSounds();	
                
        // State Machine
        switch(state) {

            case START:
                start();
                break;
            case INSTRUCTIONS:
                instructions();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
        }
               
    }
}

// Sets up GBA
void initialize() {

    REG_DISPCTL = MODE0 | BG2_ENABLE | SPRITE_ENABLE;
    REG_BG2CNT = BG_SIZE_SMALL | BG_4BPP | BG_CHARBLOCK(3) | BG_SCREENBLOCK(31);


    DMANow(3, startPal, PALETTE, 256);
    DMANow(3, startTiles,&CHARBLOCK[3], startTilesLen/2);
    DMANow(3, startMap, &SCREENBLOCK[31], startMapLen/2);
    
    playSoundA(SpaceSong,SPACESONGLEN,SPACESONGFREQ, 1);

    buttons = BUTTONS;

    goToStart();
}

// Sets up the start state
void goToStart() {

    
    hideSprites();
	waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    state = START;

}

// Runs every frame of the start state
void start() {

    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {

        stopSound();
        playSoundA(GlassAnimals, GLASSANIMALSLEN, GLASSANIMALSFREQ, 1);

        initGame();
        goToGame();        
    }
    if (BUTTON_PRESSED(BUTTON_A)) {
        goToInstructions();
    }
}

void goToInstructions() {
    REG_DISPCTL = MODE0 | BG2_ENABLE | SPRITE_ENABLE;

    DMANow(3, instructionsPal, PALETTE, 256);
    DMANow(3, instructionsTiles,&CHARBLOCK[3], instructionsTilesLen/2);
    DMANow(3, instructionsMap, &SCREENBLOCK[31], instructionsMapLen/2);

    hideSprites();
	waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    state = INSTRUCTIONS;
}

void instructions() {
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {

        stopSound();
        playSoundA(GlassAnimals, GLASSANIMALSLEN, GLASSANIMALSFREQ, 1);

        initGame();
        goToGame();
        
    }
}

// Sets up the game state
void goToGame() {

    //game backgrounds
    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | BG3_ENABLE | SPRITE_ENABLE;

    //REG_BG3CNT = BG_SIZE_SMALL | BG_4BPP | BG_CHARBLOCK(1) | BG_SCREENBLOCK(29);
    REG_BG1CNT = BG_SIZE_WIDE | BG_4BPP | BG_CHARBLOCK(0) | BG_SCREENBLOCK(30);
    REG_BG0CNT = BG_SIZE_WIDE | BG_4BPP | BG_CHARBLOCK(2) | BG_SCREENBLOCK(28);

    hOff = 0;

    DMANow(3, nightBgPal, PALETTE, 256);
    DMANow(3, nightBgTiles,&CHARBLOCK[0], nightBgTilesLen/2);
    DMANow(3, nightBgMap, &SCREENBLOCK[30], nightBgMapLen/2);

    DMANow(3, mountainsTiles, &CHARBLOCK[2], mountainsTilesLen/2);
    DMANow(3, mountainsMap, &SCREENBLOCK[28], mountainsMapLen/2);

    //DMANow(3, livesTiles, &CHARBLOCK[1], livesTilesLen/2);
    //DMANow(3, livesMap, &SCREENBLOCK[29], livesMapLen/2);


    state = GAME;
}

// Runs every frame of the game state
void game() {

    updateGame();
    drawGame();

    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 128 * 4);

    if (ufosRemaining == 0) {
        stopSound();
        goToWin();
    }
    if (livesRemaining == 0) {
        stopSound();
        goToLose();
    }
    if (BUTTON_PRESSED(BUTTON_START)) {
        pauseSound();
        goToPause();
    }

    REG_BG1HOFF = hOff;
    REG_BG0HOFF = hOff/2;

}

// Sets up the pause state
void goToPause() {
    REG_DISPCTL = MODE0 | BG2_ENABLE | SPRITE_ENABLE;

    DMANow(3, pausePal, PALETTE, 256);
    DMANow(3, pauseTiles,&CHARBLOCK[3], pauseTilesLen/2);
    DMANow(3, pauseMap, &SCREENBLOCK[31], pauseMapLen/2);

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);


    state = PAUSE;
}

// Runs every frame of the pause state
void pause() {
    
    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        unpauseSound();
        goToGame();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}

// Sets up the win state
void goToWin() {
    REG_DISPCTL = MODE0 | BG2_ENABLE | SPRITE_ENABLE;

    DMANow(3, winPal, PALETTE, 256);
    DMANow(3, winTiles,&CHARBLOCK[3], winTilesLen/2);
    DMANow(3, winMap, &SCREENBLOCK[31], winMapLen/2);

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    state = WIN;
}

// Runs every frame of the win state
void win() {
    
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) //doesn't work?
        //playSoundA(Andromeda, ANDROMEDALEN, ANDROMEDAFREQ, 1);
        //goToStart();
        initialize();
}

// Sets up the lose state
void goToLose() {
    REG_DISPCTL = MODE0 | BG2_ENABLE | SPRITE_ENABLE;

    DMANow(3, losePal, PALETTE, 256);
    DMANow(3, loseTiles,&CHARBLOCK[3], loseTilesLen/2);
    DMANow(3, loseMap, &SCREENBLOCK[31], loseMapLen/2);

    hideSprites();
    waitForVBlank();    
    DMANow(3, shadowOAM, OAM, 128 * 4);

    state = LOSE;
}

// Runs every frame of the lose state
void lose() {
     
    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) 
        //goToStart();
        initialize();
}