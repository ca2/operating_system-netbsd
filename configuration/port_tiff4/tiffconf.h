/* NetBSD configuration for the bundled TIFF library. */
#ifndef CA2_NETBSD_TIFFCONF_H
#define CA2_NETBSD_TIFFCONF_H

#include <sys/types.h>
#include <sys/endian.h>
#include <stddef.h>
#include <stdint.h>
#include <inttypes.h>
#include <common/config.h>

/* Share the codec selection and TIFF types with the bundled library. */
#include <port/imaging/port_tiff4/tiffconf1.h>

#define HAVE_ASSERT_H 1
#define HAVE_SYS_TYPES_H 1
#define HAVE_STDINT_H 1
#define HAVE_SEARCH_H 1
#define HAVE_LFIND 1
#define HAVE_MMAP 1
#define HAVE_MEMMOVE 1
#define HAVE_MEMSET 1

#define TIFF_INT32_FORMAT "%" PRId32
#define TIFF_UINT32_FORMAT "%" PRIu32
#define TIFF_INT64_FORMAT "%" PRId64
#define TIFF_UINT64_FORMAT "%" PRIu64
#define TIFF_SSIZE_FORMAT "%ld"
#define TIFF_PTRDIFF_FORMAT "%td"

#endif
