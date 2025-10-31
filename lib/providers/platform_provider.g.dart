// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Platform)
const platformProvider = PlatformProvider._();

final class PlatformProvider extends $AsyncNotifierProvider<Platform, String> {
  const PlatformProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'platformProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$platformHash();

  @$internal
  @override
  Platform create() => Platform();
}

String _$platformHash() => r'00c04dc3e058140a2ddc117e18c0d3d7431d0fee';

abstract class _$Platform extends $AsyncNotifier<String> {
  FutureOr<String> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<String>, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<String>, String>,
              AsyncValue<String>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
