// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_tier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(serviceTier)
const serviceTierProvider = ServiceTierProvider._();

final class ServiceTierProvider
    extends $FunctionalProvider<AsyncValue<int>, int, FutureOr<int>>
    with $FutureModifier<int>, $FutureProvider<int> {
  const ServiceTierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'serviceTierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$serviceTierHash();

  @$internal
  @override
  $FutureProviderElement<int> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<int> create(Ref ref) {
    return serviceTier(ref);
  }
}

String _$serviceTierHash() => r'314ebf439ab8f193df4315f29a0daa7f62df7914';
