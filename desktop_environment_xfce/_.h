#pragma once


#include "aura_netbsd/_.h"
#include "node_xfce/_.h"


#if defined(_desktop_environment_xfce_project)
   #define CLASS_DECL_DESKTOP_ENVIRONMENT_XFCE  CLASS_DECL_EXPORT
#else
   #define CLASS_DECL_DESKTOP_ENVIRONMENT_XFCE  CLASS_DECL_IMPORT
#endif


namespace desktop_environment_xfce
{


   class node;


} // namespace desktop_environment_xfce



