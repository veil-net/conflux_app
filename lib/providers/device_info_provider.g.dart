// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_info_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(deviceHostname)
const deviceHostnameProvider = DeviceHostnameProvider._();

final class DeviceHostnameProvider
    extends $FunctionalProvider<AsyncValue<String>, String, FutureOr<String>>
    with $FutureModifier<String>, $FutureProvider<String> {
  const DeviceHostnameProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deviceHostnameProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deviceHostnameHash();

  @$internal
  @override
  $FutureProviderElement<String> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<String> create(Ref ref) {
    return deviceHostname(ref);
  }
}

String _$deviceHostnameHash() => r'aafeb909eae6d92fee110075e6798dd5541245e8';
