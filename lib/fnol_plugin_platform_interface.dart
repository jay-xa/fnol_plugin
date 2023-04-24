import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'fnol_plugin_method_channel.dart';

abstract class FnolPluginPlatform extends PlatformInterface {
  /// Constructs a FnolPluginPlatform.
  FnolPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static FnolPluginPlatform _instance = MethodChannelFnolPlugin();

  /// The default instance of [FnolPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelFnolPlugin].
  static FnolPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FnolPluginPlatform] when
  /// they register themselves.
  static set instance(FnolPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
