
//{{BLOCK(mountains)

//======================================================================
//
//	mountains, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 144 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 4608 + 4096 = 9216
//
//	Time-stamp: 2019-11-12, 18:37:59
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MOUNTAINS_H
#define GRIT_MOUNTAINS_H

#define mountainsTilesLen 4608
extern const unsigned short mountainsTiles[2304];

#define mountainsMapLen 4096
extern const unsigned short mountainsMap[2048];

#define mountainsPalLen 512
extern const unsigned short mountainsPal[256];

#endif // GRIT_MOUNTAINS_H

//}}BLOCK(mountains)
