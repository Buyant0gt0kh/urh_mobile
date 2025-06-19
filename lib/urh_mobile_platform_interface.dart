import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'urh_mobile_method_channel.dart';

abstract class UrhMobilePlatform extends PlatformInterface {
  /// Constructs a UrhMobilePlatform.
  UrhMobilePlatform() : super(token: _token);

  static final Object _token = Object();

  static UrhMobilePlatform _instance = MethodChannelUrhMobile();

  /// The default instance of [UrhMobilePlatform] to use.
  ///
  /// Defaults to [MethodChannelUrhMobile].
  static UrhMobilePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [UrhMobilePlatform] when
  /// they register themselves.
  static set instance(UrhMobilePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
