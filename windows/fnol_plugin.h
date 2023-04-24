#ifndef FLUTTER_PLUGIN_FNOL_PLUGIN_H_
#define FLUTTER_PLUGIN_FNOL_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace fnol_plugin {

class FnolPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FnolPlugin();

  virtual ~FnolPlugin();

  // Disallow copy and assign.
  FnolPlugin(const FnolPlugin&) = delete;
  FnolPlugin& operator=(const FnolPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace fnol_plugin

#endif  // FLUTTER_PLUGIN_FNOL_PLUGIN_H_
