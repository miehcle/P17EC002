/* 
 * File:   clip.h
 * Author: Yosuke
 *
 * Created on 2015/10/04, 0:35
 */

#ifndef CLIP_H
#define	CLIP_H

#ifdef	__cplusplus
extern "C" {
#endif

#define MAX(a,b) ((a) > (b) ? (a):(b))
#define MIN(a,b) ((a) > (b) ? (b):(a))
#define CLIP(a,b,c) (MAX( MIN( (b) , (c) ), (a) ))


#ifdef	__cplusplus
}
#endif

#endif	/* CLIP_H */

