//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <fnol_plugin/fnol_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) fnol_plugin_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FnolPlugin");
  fnol_plugin_register_with_registrar(fnol_plugin_registrar);
}
