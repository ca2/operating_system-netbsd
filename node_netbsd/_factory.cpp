#include "framework.h"
#include "acme/platform/system.h"


//namespace windowing
//{


//   CLASS_DECL_ACME ::windowing::enum_desktop get_edesktop();


//} // namespace windowing



__FACTORY_EXPORT void aura_netbsd_factory(::factory::factory * pfactory);


__FACTORY_EXPORT void node_netbsd_factory(::factory::factory * pfactory)
{
   
   aura_netbsd_factory(pfactory);

}



