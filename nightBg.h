
//{{BLOCK(nightBg)

//======================================================================
//
//	nightBg, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 630 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 20160 + 4096 = 24768
//
//	Time-stamp: 2019-11-12, 18:57:03
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_NIGHTBG_H
#define GRIT_NIGHTBG_H

#define nightBgTilesLen 20160
extern const unsigned short nightBgTiles[10080];

#define nightBgMapLen 4096
extern const unsigned short nightBgMap[2048];

#define nightBgPalLen 512
extern const unsigned short nightBgPal[256];

#endif // GRIT_NIGHTBG_H

//}}BLOCK(nightBg)
