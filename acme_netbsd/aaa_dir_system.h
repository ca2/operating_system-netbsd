#pragma once


#include "acme/filesystem/filesystem/directory_system.h"


namespace acme_netbsd
{


   class CLASS_DECL_ACME_NETBSD directory_system :
      virtual public ::directory_system
   {
   public:


      directory_system();
      ~directory_system() override;


      void initialize(::particle * pparticle) override;


      void init_system() override;


   };


} // namespace acme_netbsd



