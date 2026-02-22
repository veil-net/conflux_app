// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conflux_token_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ConfluxToken)
final confluxTokenProvider = ConfluxTokenProvider._();

final class ConfluxTokenProvider
    extends $AsyncNotifierProvider<ConfluxToken, String?> {
  ConfluxTokenProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'confluxTokenProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$confluxTokenHash();

  @$internal
  @override
  ConfluxToken create() => ConfluxToken();
}

String _$confluxTokenHash() => r'3be1782eca17df6fed001e12a6e9ba1b7cd978e4';

abstract class _$ConfluxToken extends $AsyncNotifier<String?> {
  FutureOr<String?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<String?>, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<String?>, String?>,
              AsyncValue<String?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
