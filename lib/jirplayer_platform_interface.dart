import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'jirplayer_method_channel.dart';

abstract class JirplayerPlatform extends PlatformInterface {
  /// Constructs a JirplayerPlatform.
  JirplayerPlatform() : super(token: _token);

  static final Object _token = Object();

  static JirplayerPlatform _instance = MethodChannelJirplayer();

  /// The default instance of [JirplayerPlatform] to use.
  ///
  /// Defaults to [MethodChannelJirplayer].
  static JirplayerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [JirplayerPlatform] when
  /// they register themselves.
  static set instance(JirplayerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
