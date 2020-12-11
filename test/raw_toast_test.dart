import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:raw_toast/raw_toast.dart';

void main() {
  const MethodChannel channel = MethodChannel('raw_toast');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await RawToast.platformVersion, '42');
  });
}
