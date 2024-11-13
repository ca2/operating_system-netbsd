#include "framework.h"
#include "node.h"
//#include "interaction_impl.h"


__FACTORY_IMPORT void apex_netbsd_factory(::factory::factory * pfactory);


__FACTORY_IMPORT void aura_posix_factory(::factory::factory * pfactory);


__FACTORY_EXPORT void aura_netbsd_factory(::factory::factory * pfactory)
{

   apex_netbsd_factory( pfactory);

   aura_posix_factory(pfactory);

   pfactory->add_factory_item < ::aura_netbsd::node, ::platform::node >();
   //pfactory->add_factory_item < ::aura_netbsd::interaction_impl, ::user::interaction_impl >();

}



