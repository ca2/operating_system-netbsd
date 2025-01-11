#pragma once


#include "operating_system-posix/acme_posix/_.h"


#if defined(_acme_netbsd_project)
#define CLASS_DECL_ACME_NETBSD  CLASS_DECL_EXPORT
#else
#define CLASS_DECL_ACME_NETBSD  CLASS_DECL_IMPORT
#endif


//namespace windowing
//{


//   CLASS_DECL_ACME ::windowing::enum_desktop get_edesktop();


//} // namespace windowing



