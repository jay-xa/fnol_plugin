import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fnol_plugin/fnol_plugin.dart';

class PluginSampleScreen extends StatefulWidget {
  const PluginSampleScreen({Key? key}) : super(key: key);

  @override
  State<PluginSampleScreen> createState() => _PluginSampleScreenState();
}

class _PluginSampleScreenState extends State<PluginSampleScreen> {
  String _platformVersion = 'Unknown';
  final _fnolPlugin = FnolPlugin();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      platformVersion =
          await _fnolPlugin.getPlatformVersion() ?? 'Unknown platform version';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Plugin example screen 2')),
        body: Center(child: Text('Platform Version : $_platformVersion')));
  }
}
