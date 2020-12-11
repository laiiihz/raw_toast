import Flutter
import UIKit
import Toaster

public class SwiftRawToastPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "raw_toast", binaryMessenger: registrar.messenger())
    let instance = SwiftRawToastPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if(call.method=="toast"){
        let arguments:Dictionary<String,Any> = call.arguments as! Dictionary
        let text:String = arguments["text"] as! String
        Toast(text: text).show()
        result(true)
    }else{
        result(FlutterMethodNotImplemented)
    }
  }
}
