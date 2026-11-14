/* NetBSD configuration for the bundled Independent JPEG Group library. */
#ifndef CA2_NETBSD_JCONFIG_H
#define CA2_NETBSD_JCONFIG_H

#include <limits.h>

#define HAVE_PROTOTYPES 1
#define HAVE_UNSIGNED_CHAR 1
#define HAVE_UNSIGNED_SHORT 1
#define HAVE_STDDEF_H 1
/* TIFF already defines TRUE/FALSE, so avoid JPEG's enum member names. */
#ifndef HAVE_BOOLEAN
typedef int boolean;
#define HAVE_BOOLEAN 1
#endif
#ifndef HAVE_STDLIB_H
#define HAVE_STDLIB_H 1
#endif

#if CHAR_MIN == 0
#define CHAR_IS_UNSIGNED 1
#endif

/* GCC uses arithmetic right shifts; NetBSD provides ANSI C headers. */

#ifdef JPEG_CJPEG_DJPEG
#define BMP_SUPPORTED 1
#define GIF_SUPPORTED 1
#define PPM_SUPPORTED 1
#define TARGA_SUPPORTED 1
#endif

#endif
