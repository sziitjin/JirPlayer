#ifndef FLUTTER_PLUGIN_JIRPLAYER_PLUGIN_H_
#define FLUTTER_PLUGIN_JIRPLAYER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace jirplayer {

class JirplayerPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  JirplayerPlugin();

  virtual ~JirplayerPlugin();

  // Disallow copy and assign.
  JirplayerPlugin(const JirplayerPlugin&) = delete;
  JirplayerPlugin& operator=(const JirplayerPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace jirplayer

#endif  // FLUTTER_PLUGIN_JIRPLAYER_PLUGIN_H_
