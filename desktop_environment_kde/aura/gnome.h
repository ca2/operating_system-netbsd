#pragma once


// GDK, GTK :: C

extern "C"
{


   void netbsd_g_direct_init();
   void netbsd_g_direct_term();
   //void * netbsd_g_direct_app_indicator_new(const char * pszId, const char * pszIcon, const char * pszFolder, struct user_notify_icon_bridge * pbridge);
   void netbsd_g_direct_step(void * pind);
   //void netbsd_g_direct_app_indicator_term(void * pind);


} // extern "C"




#include "gnome_shared.h"




