// Create on 2021-03-22 09:12 <3ThomasBS_
#pragma once


#include "acme_posix/acme_path.h"


namespace acme_netbsd
{


   class CLASS_DECL_ACME_NETBSD acme_path :
      virtual public ::acme_posix::acme_path
   {
   public:


      acme_path();
      ~acme_path() override;


      //virtual ::file::path app_module() override;


   };


} // namespace acme_netbsd



