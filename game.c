#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "spritesheet.h"
#include "sound.h"
#include "Laser.h"

// Variables
PLAYER player;
enum {STRAIGHT, LEFTTILT, RIGHTTILT};

BULLET bullets[BULLETCOUNT];
BULLET1 bullets1[BULLET1COUNT];
LASER laser[LASERCOUNT];
UFO ufos[UFOCOUNT];
STAR stars[STARCOUNT];
STAR star;

SMALLCLOUD clouds[SMALLCLOUDCOUNT];
BIGCLOUD clouds1[BIGCLOUDCOUNT];
// LIVES lives[LIFECOUNT];

// LIVES life1;
// LIVES life2;
// LIVES life3;

BIGCLOUD cloud1;
BIGCLOUD cloud2;
BIGCLOUD cloud3;

SMALLCLOUD cloudA;
SMALLCLOUD cloudB;
SMALLCLOUD cloudC;

int ufosRemaining;
int livesRemaining; //3

int cloud1Timer;
int cloud2Timer;
int cloud3Timer;
int cloudATimer;
int cloudBTimer;
int cloudCTimer;
int starTimer;
int bgTimer;

int cloudsActive;
int numFrames;
//extern int hOff;
unsigned short hOff;

// // Initialize the game
void initGame() {

    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen/2);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);

	cloudsActive = 1;

	initPlayer();
	//initLives();
    initBullet();
	initBullet1();
	initLaser();
	initCloud();
	initCloud1();
	initStar();
    initUfo();

	ufosRemaining = UFOCOUNT;
    livesRemaining = LIFECOUNT;

	cloud1Timer = 0;
	// cloud2Timer = -5;
	// cloud3Timer = -10;

	cloudATimer = 0;
	// cloudBTimer = 0;
	// cloudCTimer = 0;

	starTimer = 0;

	numFrames = 0;

	bgTimer = 0;
	hOff = 0;

}

// // Updates the game each frame
void updateGame() {

	cloud1Timer++;
	// cloud2Timer++;
	// cloud3Timer++;
	cloudATimer++;
	// cloudBTimer++;
	// cloudCTimer++;
	starTimer++;

	bgTimer++;

	numFrames++;

	updatePlayer();

	// for (int i = 0; i < STARCOUNT; i++) //change back to lifecount maybe
	//  	//updateLives(&lives[i], &stars[i]); //hmmm
	// 	updateLives(&life3, &stars[i]);
	// 	// updateLives(&life2, &stars[i]);
	// 	// updateLives(&life1, &stars[i]); //whyyyy


	for (int i = 0; i < BULLETCOUNT; i++)
		updateBullet(&bullets[i]);

	for (int i = 0; i < BULLET1COUNT; i++)
		updateBullet1(&bullets1[i]);

	for (int i = 0; i < LASERCOUNT; i++)
		updateLaser(&laser[i]);

	for (int i = 0; i < UFOCOUNT; i++)
		updateUfo(&ufos[i], &bullets1[i]);
	
	// for (int i = 0; i < STARCOUNT; i++)
	// 	updateStar(&stars[i]);

	updateStar();

	//if (cloudATimer == 3) {
		// for (int i = 0; i < SMALLCLOUDCOUNT; i++)
		// 	updateCloud(&clouds[i]);
		updateCloud(&cloudA);
		updateCloud(&cloudB);
		updateCloud(&cloudC);
		//cloudATimer == 0;
	//}
	// if (cloudBTimer == 6) {
	// 	updateCloud(&cloudB);
	// 	cloudBTimer == 0;
	// }
	// if (cloudCTimer == 9) {
	// 	updateCloud(&cloudC);
	// 	cloudCTimer == 0;
	// }

	// maybe add timer here (like timer == 20) for slower cloud movement
	if (cloud1Timer == 5) {
		// for (int i = 0; i < BIGCLOUDCOUNT; i++) {
		// 	updateCloud1(&clouds1[i]);
		// }
		updateCloud1(&cloud1);
		updateCloud1(&cloud2);
		updateCloud1(&cloud3);
		cloud1Timer = 0;
	}
	// if (cloud2Timer == 0) {
	// 	updateCloud1(&cloud2);
	// 	cloud2Timer = -5;
	// }
	// if (cloud3Timer == -5) {
	// 	updateCloud1(&cloud3);
	// 	cloud3Timer = -10;
	// }
	if (starTimer % 199 == 0) {
		shootStar();
	}
	if (bgTimer == 2) {
		hOff--;
		bgTimer = 0;
	}
}

// // Draws the game each frame
void drawGame() {

	drawPlayer();
	drawLives();

	// for (int i = 0; i < LIFECOUNT; i++)
	// 	// drawLives(&life1);
	// 	// drawLives(&life2);
	// 	// drawLives(&life3);
	// 	drawLives(&lives[i]);

	for (int i = 0; i < BULLETCOUNT; i++)
		drawBullet(&bullets[i]);

	for (int i = 0; i < BULLET1COUNT; i++)
		drawBullet1(&bullets1[i]);

	for (int i= 0; i < LASERCOUNT; i++)
		drawLaser(&laser[i]);

	for (int i = 0; i < UFOCOUNT; i++)
		drawUfo(&ufos[i]);

	// for (int i = 0; i < STARCOUNT; i++)
	// 	drawStar(&stars[i]);
	drawStar();
	
	//for (int i = 0; i < SMALLCLOUDCOUNT; i++)
		drawCloud(&cloudA);
		drawCloud(&cloudB);
		drawCloud(&cloudC);

	//for (int i = 0; i < BIGCLOUDCOUNT; i++) {
		drawCloud1(&cloud1);
		drawCloud1(&cloud2);
		drawCloud1(&cloud3);
	

	
}

void initPlayer() {

	player.row = 140;
	player.col = 120;
	player.rdel = 1;
	player.cdel = 1;
	player.height = 16;
	player.width = 16;
	player.aniCounter = 0;
	player.curFrame = 0; //column
	player.numFrames = 3; //left, straight, right
	player.aniState = STRAIGHT;
	player.timer = 20;
	player.lives = LIFECOUNT; //3
    player.active = 1;
}

// // Handle every-frame actions of the player
void updatePlayer() {

	if (player.aniState != STRAIGHT) {
		player.prevAniState = player.aniState;
	}
	player.aniState = STRAIGHT;

	// Move the player //find away to change the angle, not the column
	if (BUTTON_HELD(BUTTON_LEFT)
		&& player.col >= ((16 * 3) + 1)) {

		player.col -= player.cdel;
		player.direction = -1;

	} else if (BUTTON_HELD(BUTTON_RIGHT)
		&& player.col + player.width - 1 < SCREENWIDTH - player.cdel) {

		player.col += player.cdel;
		player.direction = 1;

	} else {
		player.direction = 0;
	}

	if (BUTTON_PRESSED(BUTTON_LEFT)) {
		if (player.aniState == STRAIGHT) {
			player.prevAniState = player.aniState;
			player.aniState = LEFTTILT;
			if (player.curFrame < player.numFrames - 1) {
				player.curFrame++;
			} else {
				player.curFrame = 0;
			}
			//change direction stuff
		} else if (player.aniState == RIGHTTILT) {
			player.prevAniState = player.aniState;
			player.aniState = STRAIGHT;
			if (player.curFrame < player.numFrames - 1) {
				player.curFrame++;
			} else {
				player.curFrame = 0;
			}
			//direction stuff
		} else {
			return; //else what
		}
	}
	if (BUTTON_PRESSED(BUTTON_RIGHT)) {
		if (player.aniState == STRAIGHT) {
			player.prevAniState = player.aniState;
			player.aniState = RIGHTTILT;
			if (player.curFrame < player.numFrames - 1) {
				player.curFrame++;
			} else {
				player.curFrame = 0;
			}
		} else if (player.aniState == LEFTTILT) {
			player.prevAniState = player.aniState;
			player.aniState = STRAIGHT;
			if (player.curFrame < player.numFrames - 1) {
				player.curFrame++;
			} else {
				player.curFrame = 0;
			}
		}
	}

	// Fire bullets
	if (BUTTON_PRESSED(BUTTON_A) && player.timer >= 13) {

		fireBullet();
		player.timer = 0;
	}
	if (BUTTON_PRESSED(BUTTON_B) && player.timer >= 13) {
		fireLaser();
		player.timer = 0;
	}

	player.timer++;

	
}

// // Draw the player
void drawPlayer() {

    //if (player.active == 1) {
        shadowOAM[0].attr0 = player.row | ATTR0_SQUARE  | ATTR0_4BPP;
	    shadowOAM[0].attr1 = player.col | ATTR1_SMALL; //16x16
	    shadowOAM[0].attr2 = ATTR2_TILEID(0, 6 * 2);
		//shadowOAM[0].attr2 = ATTR2_TILEID(player.aniState * 2, 6 * 2);
    //} else {
        //shadowOAM[0].attr0 = ATTR0_HIDE;
    //}
}

// void initLives() {

// 	for (int i = 0; i < LIFECOUNT; i++) {

// 		lives[i].row = 142;
// 		lives[i].col = (16 * i);
// 		lives[i].height = 16;
// 		lives[i].width = 16;
// 		lives[i].active = 1;
// 		lives[i].animated = 1;
// 		lives[i].index = i + 1;
// 		lives[i].curFrame = (i / 3);
//         lives[i].aniState = 0;
//         lives[i].numFrames = 3;
// 	}

// 	// life1.row = 142;
// 	// life1.col = 32;
// 	// life1.height = 16;
// 	// life1.width = 16;
// 	// life1.active = 1;

// 	// life2.row = 142;
// 	// life2.col = 32 + 16;
// 	// life2.height = 16;
// 	// life2.width = 16;
// 	// life2.active = 1;

// 	// life3.row = 142;
// 	// life3.col = 32 + 16 + 16;
// 	// life3.height = 16;
// 	// life3.width = 16;
// 	// life3.active = 1;
// }

// void updateLives(LIVES *l) {

// 	// if (l->animated) {
// 	// 	l->aniCounter++;
// 	// 	if (l->aniCounter % 37 == 0) {
// 	// 		l->aniState = (l->aniState + 1) % 2;
// 	// 	}
// 	// }

// 	for (int i = 0; i < LASERCOUNT; i++) {
// 		if (collision(laser[i].col, laser[i].row, laser[i].width, laser[i].height, star.col, star.row, star.width, star.height)) {

// 			// if (livesRemaining < 3 && livesRemaining > 0) {
// 			// 	life2.active = 1;
// 			// 	livesRemaining++;
// 			// } else if (livesRemaining == 2) {
// 			// 	life3.active = 1;
// 			// 	livesRemaining++;
// 			// } else {
// 			// 	break;
// 			// }
// 		}
// 	}
	
// }

// // Initialize the pool of bullets
void initBullet() {

	for (int i = 0; i < BULLETCOUNT; i++) {

		bullets[i].height = 8;
		bullets[i].width = 8;
		bullets[i].row = -bullets[i].height;
		bullets[i].col = 0;
		bullets[i].rdel = -2;
        bullets[i].cdel = 0;
		bullets[i].active = 0;
        bullets[i].index = i + 1 + LIFECOUNT;
	}
}

void fireBullet() { //use for both enemies and player?

	for (int i = 0; i < BULLETCOUNT; i++) {
		if (!bullets[i].active) { //if inactive

			bullets[i].row = player.row;
			bullets[i].col = player.col + player.width/2
				- bullets[i].width/2;

			bullets[i].cdel = player.direction;
			bullets[i].active = 1;
			playSoundB(Laser, LASERLEN, LASERFREQ, 0);

			break;
		}
	}
}

void updateBullet(BULLET* b) { //add cDirection stuff

    // If active, update; otherwise ignore
    if (b->active) {
		//if colliding with cloud then set bullet to inactive
        if (b->row + b->height-1 >= b->height
            && b->col + b->cdel > 0
            && b->col + b->cdel < SCREENWIDTH) {

            b->row += b->rdel;
            b->col += b->cdel;
        } else {
            b->active = 0;
        }

		if (collision(b->col, b->row, b->width, b->height, cloud1.col, cloud1.row, cloud1.width, cloud1.height) && cloudsActive) {
			b->active = 0;
		}
		if (collision(b->col, b->row, b->width, b->height, cloud2.col, cloud2.row, cloud2.width, cloud2.height) && cloudsActive) {
			b->active = 0;
		}
		if (collision(b->col, b->row, b->width, b->height, cloud3.col, cloud3.row, cloud3.width, cloud3.height) && cloudsActive) {
			b->active = 0;
		}
		if (collision(b->col, b->row, b->width, b->height, cloudA.col, cloudA.row, cloudA.width, cloudA.height) && cloudsActive) {
			b->active = 0;
		}
		if (collision(b->col, b->row, b->width, b->height, cloudB.col, cloudB.row, cloudB.width, cloudB.height) && cloudsActive) {
			b->active = 0;
		}
		if (collision(b->col, b->row, b->width, b->height, cloudC.col, cloudC.row, cloudC.width, cloudC.height) && cloudsActive) {
			b->active = 0;
		}
	}
     
}

void drawBullet(BULLET* b) {

	if(b->active) {
		shadowOAM[b->index].attr0 = ATTR0_SQUARE  | ATTR0_4BPP | b->row;
	    shadowOAM[b->index].attr1 = ATTR1_TINY | b->col;
	    shadowOAM[b->index].attr2 = ATTR2_TILEID(0, 14);
	} else {
        shadowOAM[b->index].attr0 = ATTR0_HIDE;
    }
}

void initBullet1() {

	for (int i = 0; i < BULLET1COUNT; i++) {

		bullets1[i].height = 8;
		bullets1[i].width = 8;
		bullets1[i].row = -bullets1[i].height;
		bullets1[i].col = 0;
		bullets1[i].rdel = 2;
        bullets1[i].cdel = 0;
		bullets1[i].active = 0;
        bullets1[i].index = i + 1 + BULLETCOUNT + UFOCOUNT + LIFECOUNT + SMALLCLOUDCOUNT + BIGCLOUDCOUNT + STARCOUNT;
	}
}

void fireBullet1(UFO* u, BULLET1* b) {
		//if (e->animated = 1) {
		if (b->active == 0) { //if inactive

			b->row = u->row;
			b->col = u->col + (u->width)/2
				- (b->width)/2;

			b->active = 1;
		}
		//}
}

void updateBullet1(BULLET1* b) {
	if (b->active) {
        if (b->row + b->height-1 >= b->height
            && b->col + b->cdel > 0
            && b->col + b->cdel < SCREENWIDTH) {

            b->row += b->rdel;
            b->col += b->cdel;
        }

		if (collision(b->col, b->row, b->width, b->height, player.col, player.row, player.width, player.height)) {

			b->active = 0;
			player.lives--;
			livesRemaining = player.lives;

		}
    }
	if (b->row >= 160) { // why not working ?
		b->active = 0;
	} 
} 

void drawBullet1(BULLET1* b) {
	if(b->active) {
		shadowOAM[b->index].attr0 = ATTR0_SQUARE  | ATTR0_4BPP | b->row;
	    shadowOAM[b->index].attr1 = ATTR1_TINY | b->col;
	    shadowOAM[b->index].attr2 = ATTR2_TILEID(0, 14);
	} else {
        shadowOAM[b->index].attr0 = ATTR0_HIDE;
	}
}

void drawLives() {
	// for (int i = 0; i < player.lives; i++) {
	// 	shadowOAM[1 + i].attr0 = 142 | ATTR0_SQUARE  | ATTR0_4BPP;
	//     shadowOAM[1 + i].attr1 = player.width * i | ATTR1_SMALL; //16x16
	//     //shadowOAM[l->index].attr2 = ATTR2_TILEID(0, 2 * 2);
	// 	shadowOAM[1 + i].attr2 = ATTR2_TILEID(0, 4);
	// }
	for (int i = 0; i < LIFECOUNT; i++) {
		shadowOAM[1 + i].attr0 = 142 | ATTR0_SQUARE  | ATTR0_4BPP;
	    shadowOAM[1 + i].attr1 = player.width * i | ATTR1_SMALL; //16x16
	    //shadowOAM[l->index].attr2 = ATTR2_TILEID(0, 2 * 2);
		//shadowOAM[1 + i].attr2 = ATTR2_TILEID(0, 4);
		if (numFrames % 64 == 0) {
			shadowOAM[1 + i].attr2 = ATTR2_TILEID(0, 4);
		} else if (numFrames % 64 == 8) {
			shadowOAM[1 + i].attr2 = ATTR2_TILEID(2, 4);
		} else if (numFrames % 64 == 32) {
			shadowOAM[1 + i].attr2 = ATTR2_TILEID(4, 4);
		}

		if (i >= player.lives) {
			shadowOAM[1 + i].attr0 = ATTR0_HIDE;
		}
	}
}

void initLaser() {
	for (int i = 0; i < LASERCOUNT; i++) {

		laser[i].height = 8;
		laser[i].width = 8;
		laser[i].row = -laser[i].height;
		laser[i].col = 0;
		laser[i].rdel = -2;
        laser[i].cdel = 0;
		laser[i].active = 0;
        laser[i].index = i + 1 + BULLETCOUNT + UFOCOUNT + LIFECOUNT + SMALLCLOUDCOUNT + BIGCLOUDCOUNT + STARCOUNT + BULLET1COUNT;
	}
}

void fireLaser() {
	for (int i = 0; i < LASERCOUNT; i++) {
		if (!laser[i].active) { //if inactive

			laser[i].row = player.row;
			laser[i].col = player.col + player.width/2
				- laser[i].width/2;

			laser[i].cdel = player.direction;
			laser[i].active = 1;
			//playSoundB(Laser, LASERLEN, LASERFREQ, 0);

			break;
		}
	}
}

void updateLaser(LASER* l) {
	if (l->active) {
		//if colliding with cloud then set bullet to inactive
        if (l->row + l->height-1 >= l->height
            && l->col + l->cdel > 0
            && l->col + l->cdel < SCREENWIDTH) {

            l->row += l->rdel;
            l->col += l->cdel;
        } else {
            l->active = 0;
        }
		if (collision(l->col, l->row, l->width, l->height, cloud1.col, cloud1.row, cloud1.width, cloud1.height) && cloudsActive) {
			l->active = 0;
		}
		if (collision(l->col, l->row, l->width, l->height, cloud2.col, cloud2.row, cloud2.width, cloud2.height) && cloudsActive) {
			l->active = 0;
		}
		if (collision(l->col, l->row, l->width, l->height, cloud3.col, cloud3.row, cloud3.width, cloud3.height) && cloudsActive) {
			l->active = 0;
		}
		if (collision(l->col, l->row, l->width, l->height, cloudA.col, cloudA.row, cloudA.width, cloudA.height) && cloudsActive) {
			l->active = 0;
		}
		if (collision(l->col, l->row, l->width, l->height, cloudB.col, cloudB.row, cloudB.width, cloudB.height) && cloudsActive) {
			l->active = 0;
		}
		if (collision(l->col, l->row, l->width, l->height, cloudC.col, cloudC.row, cloudC.width, cloudC.height) && cloudsActive) {
			l->active = 0;
		}

		if (collision(l->col, l->row, l->width, l->height, star.col, star.row, star.width, star.height)) {

			l->active = 0;
			if (livesRemaining < 3) {
				player.lives++;
				livesRemaining = player.lives;
			}

		}
    }

}

void drawLaser(LASER* l) {
	if(l->active) {
		shadowOAM[l->index].attr0 = ATTR0_SQUARE  | ATTR0_4BPP | l->row;
	    shadowOAM[l->index].attr1 = ATTR1_TINY | l->col;
	    shadowOAM[l->index].attr2 = ATTR2_TILEID(0, 15);
	} else {
        shadowOAM[l->index].attr0 = ATTR0_HIDE;
	}
}

void initUfo() {

	for (int i = 0; i < UFOCOUNT; i++) {

		ufos[i].height = 16;
		ufos[i].width = 16;
		ufos[i].row = rand() % 110;
		ufos[i].col = rand() % 130 + 10;
		ufos[i].rdel = 1;
		ufos[i].cdel = 1;
		ufos[i].active = 1;
        ufos[i].curFrame = (i / 4);
        ufos[i].aniState = 0;
        ufos[i].numFrames = 4;
		ufos[i].animated = 1;
        ufos[i].index = i + 1 + LIFECOUNT + BULLETCOUNT + BIGCLOUDCOUNT + SMALLCLOUDCOUNT + STARCOUNT;
	}
}

void updateUfo(UFO* u, BULLET1 * b) {

	if (u->active) {

	if (u->row <= 1 || u->row + u->height-1 >= 90)
			u->rdel *= -1;
		if (u->col <= 1 || u->col + u->width-1 >= SCREENWIDTH-2)
			u->cdel *= -1;

		// Move the ball
		u->row += u->rdel;
		u->col += u->cdel;

		// if (u->animated) {
		// 	u->aniCounter++;
		// 	if (u->aniCounter % 23 == 0) {
		// 		u->aniState = (u->aniState + 1) % 2;
		// 	}
		// }

		for (int i = 0; i < BULLETCOUNT; i++) {
			if (bullets[i].active && collision(u->col, u->row, u->width, u->height,
				bullets[i].col, bullets[i].row, bullets[i].width, bullets[i].height)) {

				bullets[i].active = 0;
				u->active = 0;
				u->animated = 0;

				ufosRemaining--;
			}
		}

		//if (u->col >= 110 && u->col <= 130) {
			if (rand() % 89 == 0) { //maybe make even less frequent
				fireBullet1(u, b);
			} 
		//}
	}
}

void drawUfo(UFO* u) {

	if(u->active) {
            
        shadowOAM[u->index].attr0 = ATTR0_SQUARE  | ATTR0_4BPP | u->row & 0xFF;
	    shadowOAM[u->index].attr1 = ATTR1_SMALL | u->col & 0x1FF;
		//shadowOAM[u->index].attr2 = ATTR2_TILEID(u->aniState * 2, 0);
		if (numFrames % 64 == 0) {
			shadowOAM[u->index].attr2 = ATTR2_TILEID(0, 0);
		} else if (numFrames % 64 == 8) {
			shadowOAM[u->index].attr2 = ATTR2_TILEID(2, 0);
		} else if (numFrames % 64 == 32) {
			shadowOAM[u->index].attr2 = ATTR2_TILEID(4, 0);
		}
		// else if (numFrames % 64 == 16) {
		// 	shadowOAM[u->index].attr2 = ATTR2_TILEID(6, 0);
		// }

    
	} else {
        shadowOAM[u->index].attr0 = ATTR0_HIDE;
    }
}

void initCloud() {
	// for (int i = 0; i < SMALLCLOUDCOUNT; i++) {
	// 	clouds[i].height = 16;
	// 	clouds[i].width = 32;
	// 	clouds[i].row = (rand() % 65) * i;
	// 	clouds[i].col = SCREENWIDTH + clouds[i].width;
	// 	clouds[i].rdel = 1;
	// 	clouds[i].cdel = 1;
	// 	clouds[i].active = 1;
	// 	clouds[i].index = i + 1 + LIFECOUNT + BULLETCOUNT + BIGCLOUDCOUNT;
	// }
	cloudA.height = 16;
	cloudA.width = 32;
	cloudA.row = 30;
	cloudA.col = cloudA.width;
	cloudA.rdel = 1;
	cloudA.cdel = 1;
	cloudA.active = cloudsActive;
	cloudA.index = 1 + LIFECOUNT + BULLETCOUNT + BIGCLOUDCOUNT;

	cloudB.height = 16;
	cloudB.width = 32;
	cloudB.row = 15;
	cloudB.col = -cloudB.width - 15;
	cloudB.rdel = 1;
	cloudB.cdel = 1;
	cloudB.active = cloudsActive;
	cloudB.index = 2 + LIFECOUNT + BULLETCOUNT + BIGCLOUDCOUNT;

	cloudC.height = 16;
	cloudC.width = 32;
	cloudC.row = 35;
	cloudC.col = -cloudC.width - 30;
	cloudC.rdel = 1;
	cloudC.cdel = 1;
	cloudC.active = cloudsActive;
	cloudC.index = 3 + LIFECOUNT + BULLETCOUNT + BIGCLOUDCOUNT;
}

void updateCloud(SMALLCLOUD* c) {
	if (c->active) {

		c->active = cloudsActive;

		if (c->col <= 0) {
			c->cdel = 1;
		}
		if (c->col > SCREENWIDTH - 1) {
			c->col = -1 * c->width;
		}
		c->col += c->cdel;

	}
	if (BUTTON_PRESSED(BUTTON_UP)) {
		cloudsActive = 0;
		//c->active = cloudsActive;
	}
	
}

void drawCloud(SMALLCLOUD* c) {
	if (c->active && cloudsActive) {
		shadowOAM[c->index].attr0 = ATTR0_WIDE | ATTR0_4BPP | (c->row & ROWMASK);
		shadowOAM[c->index].attr1 = ATTR1_MEDIUM | (c->col & COLMASK);
		shadowOAM[c->index].attr2 = ATTR2_TILEID(0, 3 * 2); 
	} else {
		shadowOAM[c->index].attr0 = ATTR0_HIDE;
	}
}

void initCloud1() {
	// for (int i = 0; i < BIGCLOUDCOUNT; i++) {
	// 	clouds1[i].height = 32;
	// 	clouds1[i].width = 64;
	// 	clouds1[i].row = 90;
	// 	clouds1[i].col = -clouds1[i].width;
	// 	clouds1[i].rdel = 1;
	// 	clouds1[i].cdel = 1;
	// 	clouds1[i].active = 1;
	// 	clouds1[i].index = i + 1 + LIFECOUNT + BULLETCOUNT;
	// }
	cloud1.height = 32;
	cloud1.width = 64;
	cloud1.row = 90;
	cloud1.col = -cloud1.width;
	cloud1.rdel = 1;
	cloud1.cdel = 1;
	cloud1.active = cloudsActive;
	cloud1.index = 1 + LIFECOUNT + BULLETCOUNT;

	cloud2.height = 32;
	cloud2.width = 64;
	cloud2.row = 90;
	cloud2.col = (-cloud2.width * 2) - 15;
	cloud2.rdel = 1;
	cloud2.cdel = 1;
	cloud2.active = cloudsActive;
	cloud2.index = 2 + LIFECOUNT + BULLETCOUNT;

	cloud3.height = 32;
	cloud3.width = 64;
	cloud3.row = 90;
	cloud3.col = (-cloud3.width * 3) - 30;
	cloud3.rdel = 1;
	cloud3.cdel = 1;
	cloud3.active = cloudsActive;
	cloud3.index = 3 + LIFECOUNT + BULLETCOUNT;
}

void updateCloud1(BIGCLOUD* c) {
	if (c->active) {

		c->active = cloudsActive;

		if (c->col <= 0) {
			c->cdel = 1;
		}
		if (c->col > SCREENWIDTH - 1) {
			c->col = -1 * c->width;
		}
		c->col += c->cdel;
	}
	if (BUTTON_PRESSED(BUTTON_UP)) {
		cloudsActive = 0;
		//c->active = cloudsActive;
	}

}

void drawCloud1(BIGCLOUD* c) {
	if (c->active && cloudsActive) {
		shadowOAM[c->index].attr0 = ATTR0_WIDE | ATTR0_4BPP | (c->row & ROWMASK) ;
		shadowOAM[c->index].attr1 = ATTR1_LARGE | (c->col & COLMASK);
		shadowOAM[c->index].attr2 = ATTR2_TILEID(1, 8); 
	} else {
		shadowOAM[c->index].attr0 = ATTR0_HIDE;
	}

}

void initStar() {

	// for (int i = 0; i < STARCOUNT; i++) {
	// 	stars[i].row = 35;
	// 	stars[i].col = stars[i].width + SCREENWIDTH;
	// 	stars[i].height = 8;
	// 	stars[i].width = 16;
	// 	stars[i].rdel = 1;
	// 	stars[i].cdel = -1;
	// 	stars[i].active = 0;
	// 	stars[i].curFrame = (i / 2);
    //     stars[i].aniState = 0;
    //     stars[i].numFrames = 2;
	// 	stars[i].animated = 1;
	// 	stars[i].timer = 20; //bro idek how
	// 	//stars[i].index = i + 9;
	// 	stars[i].index = i + 1 + LIFECOUNT + BULLETCOUNT + BIGCLOUDCOUNT + SMALLCLOUDCOUNT;
	// }
		star.row = 35;
		star.col = star.width + SCREENWIDTH;
		star.height = 8;
		star.width = 16;
		star.rdel = 1;
		star.cdel = -1;
		star.active = 0;
		star.curFrame = 0;
        star.aniState = 0;
        star.numFrames = 2;
		star.animated = 1;
		//stars[i].index = i + 9;
		star.index = 1 + LIFECOUNT + BULLETCOUNT + BIGCLOUDCOUNT + SMALLCLOUDCOUNT;
}

void shootStar() {
	// for (int i = 0; i < STARCOUNT; i++) {
	// 	if (!stars[i].active) { //if inactive

	// 		//stars[i].row = rand() % 100;
	// 		stars[i].col = stars[i].width + SCREENWIDTH;
	// 		stars[i].active = 1;

	// 		break;
	// 	}
	// }
	if (!star.active) {
		star.col = star.width + SCREENWIDTH;
		star.active = 1;
	}
}

void updateStar() {
	// if (s->active) {
    //     // if (s->col + s->width - 1 >= SCREENWIDTH
    //     //     && s->row + s->rdel > 0
    //     //     && s->row + s->rdel < SCREENHEIGHT) {

    //         //s->row += s->rdel;
    //         s->col += s->cdel;
        
	// 	if (s->col < 0) {
	// 		s->col = SCREENWIDTH + s->width;
	// 	// fix to set inactive if shot
	// 	// } else {
    //     //     s->active = 0;
    //     // }
    // 	}	
	// 	for (int i = 0; i < LASERCOUNT; i++) {
	// 		if (collision(laser[i].col, laser[i].row, laser[i].width, laser[i].height, s->col, s->row, s->width, s->height)) {

	// 			s->active = 0;
	// 		}
	// 	}

	// 	if (s->animated) {
	// 		s->aniCounter++;
	// 		if (s->aniCounter % 23 == 0) {
	// 			s->aniState = (s->aniState + 1) % 2;
	// 		}
	// 	}
	// }
	if (star.active) {
		star.col += star.cdel;

		if (star.col < 0) {
			star.col = SCREENWIDTH + star.width;
		}
		for (int i = 0; i < LASERCOUNT; i++) {
			if (collision(laser[i].col, laser[i].row, laser[i].width, laser[i].height, star.col, star.row, star.width, star.height)) {
				star.active = 0;
			}
		}
	}
}

void drawStar() {
	if (star.active) {
		shadowOAM[star.index].attr0 = ATTR0_WIDE | ATTR0_4BPP | (star.row & ROWMASK);
		shadowOAM[star.index].attr1 = ATTR1_TINY | (star.col & COLMASK);
		//shadowOAM[star.index].attr2 = ATTR2_TILEID(0, 2);	
		if (numFrames % 64 == 0) {
			shadowOAM[star.index].attr2 = ATTR2_TILEID(0, 2);
		} else if (numFrames % 64 == 8) {
			shadowOAM[star.index].attr2 = ATTR2_TILEID(2, 2);
		}
	} else {
		shadowOAM[star.index].attr0 = ATTR0_HIDE;
	}
}