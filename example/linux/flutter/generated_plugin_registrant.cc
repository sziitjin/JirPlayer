//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <jirplayer/jirplayer_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) jirplayer_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "JirplayerPlugin");
  jirplayer_plugin_register_with_registrar(jirplayer_registrar);
}
