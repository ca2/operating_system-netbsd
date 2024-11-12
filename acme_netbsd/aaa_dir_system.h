#pragma once


#include "acme/filesystem/filesystem/dir_system.h"


namespace acme_netbsd
{


   class CLASS_DECL_ACME_NETBSD dir_system :
      virtual public ::dir_system
   {
   public:


      dir_system();
      ~dir_system() override;


      void initialize(::particle * pparticle) override;


      void init_system() override;


   };


} // namespace acme_netbsd



