// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applinks_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appLinks)
final appLinksProvider = AppLinksProvider._();

final class AppLinksProvider
    extends $FunctionalProvider<AppLinks, AppLinks, AppLinks>
    with $Provider<AppLinks> {
  AppLinksProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appLinksProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appLinksHash();

  @$internal
  @override
  $ProviderElement<AppLinks> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppLinks create(Ref ref) {
    return appLinks(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppLinks value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppLinks>(value),
    );
  }
}

String _$appLinksHash() => r'510b8289889572276e2055a12c51aaec6c8bd163';
