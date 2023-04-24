
import 'fnol_plugin_platform_interface.dart';

class FnolPlugin {
  Future<String?> getPlatformVersion() {
    return FnolPluginPlatform.instance.getPlatformVersion();
  }
}
