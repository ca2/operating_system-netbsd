// created by Camilo <3CamiloSasukeThomasBorregaardSoerensen
// recreated by Camilo 2021-01-28 22:35 <3TBS, Mummi and bilbo!!
// hi5 contribution...
#include "framework.h"
#include "xfce_xfce.h"


namespace node_xfce
{


   windowing::windowing()
   {

      m_pWindowing2 = this;

   }


   windowing::~windowing()
   {


   }


   ::e_status windowing::user_start(const ::procedure & procedure)
   {

      gdk_fork([routine]()
               {

                  routine();

               });

      return success;

   }


   bool windowing::aaa_message_loop_step()
   {

      if(!aaa_x11_message_loop_step())
      {

         return false;

      }

      return true;

   }


} // namespace node_xfce



