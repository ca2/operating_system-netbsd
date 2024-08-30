#pragma once


#include "apex/_.h"
#include "apex_posix/_.h"
#include "acme_netbsd/_.h"


#if defined(_apex_netbsd_project)
#define CLASS_DECL_APEX_NETBSD  CLASS_DECL_EXPORT
#else
#define CLASS_DECL_APEX_NETBSD  CLASS_DECL_IMPORT
#endif


namespace apex_netbsd
{


   class dir_context;
   class dir_system;

   class file_context;
   class file_system;

   class node;


} // namespace apex_netbsd



