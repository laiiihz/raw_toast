#import "RawToastPlugin.h"
#if __has_include(<raw_toast/raw_toast-Swift.h>)
#import <raw_toast/raw_toast-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "raw_toast-Swift.h"
#endif

@implementation RawToastPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftRawToastPlugin registerWithRegistrar:registrar];
}
@end
