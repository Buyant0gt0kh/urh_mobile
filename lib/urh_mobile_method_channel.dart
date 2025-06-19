import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'urh_mobile_platform_interface.dart';

/// An implementation of [UrhMobilePlatform] that uses method channels.
class MethodChannelUrhMobile extends UrhMobilePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('urh_mobile');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
