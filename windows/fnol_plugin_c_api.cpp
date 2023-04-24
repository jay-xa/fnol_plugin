#include "include/fnol_plugin/fnol_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "fnol_plugin.h"

void FnolPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  fnol_plugin::FnolPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
