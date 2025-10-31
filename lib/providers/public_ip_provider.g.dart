// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_ip_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(publicIP)
const publicIPProvider = PublicIPProvider._();

final class PublicIPProvider
    extends $FunctionalProvider<AsyncValue<String>, String, FutureOr<String>>
    with $FutureModifier<String>, $FutureProvider<String> {
  const PublicIPProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'publicIPProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$publicIPHash();

  @$internal
  @override
  $FutureProviderElement<String> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<String> create(Ref ref) {
    return publicIP(ref);
  }
}

String _$publicIPHash() => r'8dd9a34b36a348980bb88fd7250b3461f87cb898';
