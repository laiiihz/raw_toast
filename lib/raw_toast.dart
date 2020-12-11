import 'dart:async';

import 'package:flutter/services.dart';

class RawToast {
  static const MethodChannel _channel = const MethodChannel('raw_toast');

  static Future toast(String text) async {
    final bool state = await _channel.invokeMethod('toast', {"text": text});
    return state;
  }
}
