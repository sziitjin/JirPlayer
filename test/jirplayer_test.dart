import 'package:flutter_test/flutter_test.dart';
import 'package:jirplayer/jirplayer.dart';
import 'package:jirplayer/jirplayer_platform_interface.dart';
import 'package:jirplayer/jirplayer_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockJirplayerPlatform
    with MockPlatformInterfaceMixin
    implements JirplayerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final JirplayerPlatform initialPlatform = JirplayerPlatform.instance;

  test('$MethodChannelJirplayer is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelJirplayer>());
  });

  test('getPlatformVersion', () async {

  });
}
