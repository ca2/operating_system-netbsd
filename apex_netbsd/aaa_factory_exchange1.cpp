#include "framework.h"


extern "C"
void node_netbsd_factory(::factory::factory * pfactory)
{

   add_factory_item < node_netbsd::node, ::platform::node >();

}



