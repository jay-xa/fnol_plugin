import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'fnol_plugin_platform_interface.dart';

/// An implementation of [FnolPluginPlatform] that uses method channels.
class MethodChannelFnolPlugin extends FnolPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('fnol_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
