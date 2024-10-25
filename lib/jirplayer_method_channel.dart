import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'jirplayer_platform_interface.dart';

/// An implementation of [JirplayerPlatform] that uses method channels.
class MethodChannelJirplayer extends JirplayerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('jirplayer');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
