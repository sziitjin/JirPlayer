#include "include/jirplayer/jirplayer_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "jirplayer_plugin.h"

void JirplayerPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  jirplayer::JirplayerPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
