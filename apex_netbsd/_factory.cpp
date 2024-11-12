#include "framework.h"
#include "apex/platform/launcher.h"
#include "launcher.h"
//#include "directory_system.h"
//#include "file_system.h"
//#include "directory_context.h"
//#include "file_context.h"
//#include "os_context.h"
//#include "ip_enum.h"
//#include "interprocess_communication.h"
//#include "file_context.h"
#include "service_handler.h"
#include "node.h"
#include "apex/parallelization/service.h"
#include "apex/parallelization/service_handler.h"
#include "service_handler.h"


DECLARE_FACTORY(apex_posix);


DECLARE_FACTORY(acme_netbsd);


IMPLEMENT_FACTORY(apex_netbsd)
{

   apex_posix_factory(pfactory);

   acme_netbsd_factory(pfactory);

   //pfactory->add_factory_item < ::apex_netbsd::directory_system, ::directory_system >();
   //pfactory->add_factory_item < ::apex_netbsd::file_system, ::file_system >();

   //pfactory->add_factory_item < ::apex_netbsd::directory_context, ::directory_context >();
   //pfactory->add_factory_item < ::apex_netbsd::file_context, ::file_context >();

   //add_factory_item < ::netbsd::stdio_file, ::file::text_file >();
   //add_factory_item < ::netbsd::file, ::file::file >();
   //pfactory->add_factory_item < ::apex_netbsd::os_context, ::os_context >();
   //pfactory->add_factory_item < ::netbsd::pipe, ::process::pipe >();
   //pfactory->add_factory_item < ::netbsd::process, ::process::process >();

   //add_factory_item < ::netbsd::console, ::console::console >();
   //pfactory->add_factory_item < ::netbsd::crypto, ::crypto::crypto >();
   //pfactory->add_factory_item < ::apex_netbsd::ip_enum, ::networking::ip_enum >();


   //pfactory->add_factory_item < ::apex_netbsd::interprocess_communication_base, ::interprocess_communication::base >();
   //pfactory->add_factory_item < ::apex_netbsd::interprocess_communication_rx, ::interprocess_communication::rx >();
   //pfactory->add_factory_item < ::apex_netbsd::interprocess_communication_tx, ::interprocess_communication::tx >();
   //add_factory_item < ::netbsd::interprocess_communication, ::interprocess_communication::interprocess_communication >();


   //add_factory_item < ::netbsd::buffer, ::graphics::graphics >();
   //add_factory_item < ::netbsd::interaction_impl, ::user::interaction_impl >();

   //pfactory->add_factory_item < ::file::os_watcher, ::file::watcher >();
   //pfactory->add_factory_item < ::file::os_watch, ::file::watch >();

   //pfactory->add_factory_item < ::apex_netbsd::file_context, ::file_context >();
   pfactory->add_factory_item < ::apex_netbsd::service_handler, ::service_handler >();

   pfactory->add_factory_item < ::apex_netbsd::node, ::platform::node >();

   //add_factory_item < ::netbsd::copydesk, ::user::cop
   // 
   // 
   // ydesk >();
   ////add_factory_item < ::netbsd::shell, ::user::shell >();


}




