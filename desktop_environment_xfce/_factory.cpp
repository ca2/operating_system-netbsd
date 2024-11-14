#include "framework.h"
#include "node.h"


//__FACTORY_EXPORT aura_netbsd_factory(::factory::factory * pfactory);



__FACTORY_EXPORT void node_xfce_factory(::factory::factory * pfactory);



__FACTORY_EXPORT void desktop_environment_xfce_factory(::factory::factory * pfactory)
{

   //aura_netbsd_factory(pfactory);

   node_xfce_factory(pfactory);

   pfactory->add_factory_item < ::desktop_environment_xfce::node, ::platform::node > ();


}



