#include "framework.h"
#include "node.h"
#include "directory_system.h"
#include "file_system.h"
#include "path_system.h"
#include "directory_system.h"
#include "file_system.h"
#include "directory_context.h"
#include "file_context.h"
//#include "file.h"


__FACTORY_EXPORT void acme_posix_factory(::factory::factory * pfactory);


__FACTORY_EXPORT void acme_netbsd_factory(::factory::factory * pfactory)
{

   acme_posix_factory(pfactory);

   pfactory->add_factory_item < ::acme_netbsd::node, ::platform::node >();
   pfactory->add_factory_item < ::acme_netbsd::directory_system, ::directory_system >();
   pfactory->add_factory_item < ::acme_netbsd::file_system, ::file_system >();
   pfactory->add_factory_item < ::acme_netbsd::path_system, ::path_system >();
   
   pfactory->add_factory_item < ::acme_netbsd::directory_system, ::directory_system >();
   pfactory->add_factory_item < ::acme_netbsd::file_system, ::file_system >();

   pfactory->add_factory_item < ::acme_netbsd::directory_context, ::directory_context >();
   pfactory->add_factory_item < ::acme_netbsd::file_context, ::file_context >();

//   pfactory->add_factory_item < ::acme_netbsd::file, ::file::file >();


}


