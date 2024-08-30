#pragma once


#include "aura/_.h"
#include "aura_posix/_.h"
#include "apex_netbsd/_.h"


#if defined(_AURA_NETBSD_LIBRARY)
#define CLASS_DECL_AURA_NETBSD  CLASS_DECL_EXPORT
#else
#define CLASS_DECL_AURA_NETBSD  CLASS_DECL_IMPORT
#endif



