typedef struct {
	int row;
	int col;
	int rdel;
	int cdel;
	int height;
	int width;
	int aniCounter;
	int aniState;
	int prevAniState;
	int curFrame;
	int numFrames;
	int direction;
	int timer;
	int lives;
    int active;
} PLAYER;

typedef struct {
	int row;
	int col;
	int rdel;
	int cdel;
	int height;
	int width;
	int active;
    int index;
} BULLET;

typedef struct {
	int row;
	int col;
	int rdel;
	int cdel;
	int height;
	int width;
	int active;
    int index;
} BULLET1;

typedef struct {
	int row;
	int col;
	int rdel;
	int cdel;
	int height;
	int width;
	int active;
    int index;
} LASER;

typedef struct {
	int row;
	int col;
    int rdel;
    int cdel;
	int width;
    int height;
    //int timer; //Same as player
    int aniCounter; //NO
    int aniState; //col of tiles on spritesheet
    int prevAniState; //NO
    int curFrame; //row of tiles on spritesheet
    int numFrames;
	int animated;
    int active;
    int index; //so each sprite is in sepatate OAM
} UFO;

typedef struct {
	int row;
	int col;
	int rdel;
	int cdel;
	int height;
	int width;
	int active;
	int timer;
	int aniState;
	int aniCounter;
	int curFrame;
	int numFrames;
	int animated;
	int index;
} STAR;

typedef struct {
	int row;
	int col;
	int height;
	int width;
	int rdel;
	int cdel;
	int active;
	int index;
} SMALLCLOUD;

typedef struct {
	int row;
	int col;
	int height;
	int width;
	int rdel;
	int cdel;
	int active;
	int index;
} BIGCLOUD;

// typedef struct {
// 	int row;
// 	int col;
// 	int height;
// 	int width;
//     int active;
// 	int animated;
// 	int numFrames;
// 	int curFrame;
// 	int aniState;
// 	int aniCounter;
// 	int index;
// } LIVES;


#define BULLETCOUNT 5
#define BULLET1COUNT 5
#define LASERCOUNT 5
#define UFOCOUNT 5
#define STARCOUNT 2
#define SMALLCLOUDCOUNT 3
#define BIGCLOUDCOUNT 3
#define LIFECOUNT 3

// Variables
extern PLAYER player;

extern BULLET bullets[BULLETCOUNT];
extern BULLET1 bullets1[BULLET1COUNT];
extern LASER laser[LASERCOUNT];

extern UFO ufos[UFOCOUNT];
extern STAR stars[STARCOUNT];
extern STAR star;
extern SMALLCLOUD clouds[SMALLCLOUDCOUNT];
extern BIGCLOUD clouds1[BIGCLOUDCOUNT];

// extern LIVES lives[LIFECOUNT];

// extern LIVES life1;
// extern LIVES life2;
// extern LIVES life3;

extern BIGCLOUD cloud1;
extern BIGCLOUD cloud2;
extern BIGCLOUD cloud3;

extern SMALLCLOUD cloudA;
extern SMALLCLOUD cloudB;
extern SMALLCLOUD cloudC;

extern int ufosRemaining;
extern int starsRemaining;
extern int livesRemaining;

// Prototypes
void initGame();
void updateGame();
void drawGame();

//void initLives();
// void updateLives(LIVES *); //check parameters
void drawLives();

void initPlayer();
void updatePlayer();
void drawPlayer();

void initBullet();
void fireBullet();
void updateBullet(BULLET *);
void drawBullet(BULLET *);

void initBullet1();
void fireBullet1(UFO *, BULLET1 *);
void updateBullet1(BULLET1 *);
void drawBullet1(BULLET1 *);

void initLaser();
void fireLaser();
void updateLaser(LASER *);
void drawLaser(LASER *);

void initUfo();
void updateUfo(UFO *, BULLET1 *);
void drawUfo(UFO *);

void initStar();
void shootStar();
void updateStar();
void drawStar();

//small clouds
void initCloud();
void updateCloud();
void drawCloud();

//big clouds
void initCloud1();
void updateCloud1();
void drawCloud1();
 