
//{{BLOCK(lives)

//======================================================================
//
//	lives, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 19 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 608 + 2048 = 3168
//
//	Time-stamp: 2019-11-12, 18:58:48
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LIVES_H
#define GRIT_LIVES_H

#define livesTilesLen 608
extern const unsigned short livesTiles[304];

#define livesMapLen 2048
extern const unsigned short livesMap[1024];

#define livesPalLen 512
extern const unsigned short livesPal[256];

#endif // GRIT_LIVES_H

//}}BLOCK(lives)
