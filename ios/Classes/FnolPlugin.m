#import "FnolPlugin.h"
#if __has_include(<fnol_plugin/fnol_plugin-Swift.h>)
#import <fnol_plugin/fnol_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "fnol_plugin-Swift.h"
#endif

@implementation FnolPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFnolPlugin registerWithRegistrar:registrar];
}
@end
