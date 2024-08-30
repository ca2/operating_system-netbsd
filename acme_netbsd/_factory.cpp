#include "framework.h"
#include "node.h"
#include "acme_directory.h"
#include "acme_file.h"
#include "acme_path.h"
#include "dir_system.h"
#include "file_system.h"
#include "dir_context.h"
#include "file_context.h"
//#include "file.h"


__FACTORY_EXPORT void acme_posix_factory(::factory::factory * pfactory);


__FACTORY_EXPORT void acme_netbsd_factory(::factory::factory * pfactory)
{

   acme_posix_factory(pfactory);

   pfactory->add_factory_item < ::acme_netbsd::node, ::acme::node >();
   pfactory->add_factory_item < ::acme_netbsd::acme_directory, ::acme_directory >();
   pfactory->add_factory_item < ::acme_netbsd::acme_file, ::acme_file >();
   pfactory->add_factory_item < ::acme_netbsd::acme_path, ::acme_path >();
   
   pfactory->add_factory_item < ::acme_netbsd::dir_system, ::dir_system >();
   pfactory->add_factory_item < ::acme_netbsd::file_system, ::file_system >();

   pfactory->add_factory_item < ::acme_netbsd::dir_context, ::dir_context >();
   pfactory->add_factory_item < ::acme_netbsd::file_context, ::file_context >();

//   pfactory->add_factory_item < ::acme_netbsd::file, ::file::file >();


}


