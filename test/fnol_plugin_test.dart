import 'package:flutter_test/flutter_test.dart';
import 'package:fnol_plugin/fnol_plugin.dart';
import 'package:fnol_plugin/fnol_plugin_platform_interface.dart';
import 'package:fnol_plugin/fnol_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFnolPluginPlatform
    with MockPlatformInterfaceMixin
    implements FnolPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FnolPluginPlatform initialPlatform = FnolPluginPlatform.instance;

  test('$MethodChannelFnolPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFnolPlugin>());
  });

  test('getPlatformVersion', () async {
    FnolPlugin fnolPlugin = FnolPlugin();
    MockFnolPluginPlatform fakePlatform = MockFnolPluginPlatform();
    FnolPluginPlatform.instance = fakePlatform;

    expect(await fnolPlugin.getPlatformVersion(), '42');
  });
}
