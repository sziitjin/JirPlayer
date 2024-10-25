import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jirplayer/jirplayer_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelJirplayer platform = MethodChannelJirplayer();
  const MethodChannel channel = MethodChannel('jirplayer');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {

  });
}
