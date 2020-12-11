import 'dart:async';

import 'package:flutter/services.dart';

///# RawToast
///
/// example:
/// ```
/// RawToast.toast('here your text')
/// ```
class RawToast {
  static const MethodChannel _channel = const MethodChannel('raw_toast');

  ///make a Toast
  /// example:
  /// ```
  /// RawToast.toast('here your text')
  /// ```
  static Future toast(String text) async {
    final bool state = await _channel.invokeMethod('toast', {"text": text});
    return state;
  }
}
