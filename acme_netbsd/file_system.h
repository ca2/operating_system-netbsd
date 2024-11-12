/*****<3ThomasBorregaardSørensen!!Created by camilo*/
// From acme_posix/file_system by camilo on 2021-11-22 00:07 AM <3ThomasBorregaardSørensen!!
// From acme_apple/file_system.h
// on 2021-08-09
// 05:02 BRT
#pragma once


#include "acme_posix/file_system.h"


namespace acme_netbsd
{


   class CLASS_DECL_ACME file_system :
      virtual public ::acme_posix::file_system
   {
   public:


      file_system();
      ~file_system() noexcept override ;


      //::file::path module() override;
 void initialize(::particle * pparticle) override;


      void init_system() override;



   };


} // namespace acme_netbsd



