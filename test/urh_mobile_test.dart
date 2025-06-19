import 'package:flutter_test/flutter_test.dart';
import 'package:urh_mobile/urh_mobile.dart';
import 'package:urh_mobile/urh_mobile_platform_interface.dart';
import 'package:urh_mobile/urh_mobile_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockUrhMobilePlatform
    with MockPlatformInterfaceMixin
    implements UrhMobilePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final UrhMobilePlatform initialPlatform = UrhMobilePlatform.instance;

  test('$MethodChannelUrhMobile is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelUrhMobile>());
  });

  test('getPlatformVersion', () async {
    UrhMobile urhMobilePlugin = UrhMobile();
    MockUrhMobilePlatform fakePlatform = MockUrhMobilePlatform();
    UrhMobilePlatform.instance = fakePlatform;

    expect(await urhMobilePlugin.getPlatformVersion(), '42');
  });
}
