import 'package:device_info_plus/device_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'device_info_provider.g.dart';

@riverpod
Future<String> deviceHostname(Ref ref) async {
  ref.keepAlive();
  final deviceInfo = await DeviceInfoPlugin().deviceInfo;
  
  if (deviceInfo is AndroidDeviceInfo) {
    return deviceInfo.model; // Android device model name
  } else if (deviceInfo is IosDeviceInfo) {
    return deviceInfo.name; // iOS device name
  } else if (deviceInfo is WindowsDeviceInfo) {
    return deviceInfo.computerName; // Windows computer name
  } else if (deviceInfo is MacOsDeviceInfo) {
    return deviceInfo.computerName; // macOS computer name
  } else if (deviceInfo is LinuxDeviceInfo) {
    return deviceInfo.name; // Linux hostname
  } else if (deviceInfo is WebBrowserInfo) {
    return deviceInfo.browserName.name; // Web browser name
  }
  
  return 'Unknown Device';
}