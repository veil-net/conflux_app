// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'veilnet_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ConfluxService)
final confluxServiceProvider = ConfluxServiceProvider._();

final class ConfluxServiceProvider
    extends $AsyncNotifierProvider<ConfluxService, ConfluxService> {
  ConfluxServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'confluxServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$confluxServiceHash();

  @$internal
  @override
  ConfluxService create() => ConfluxService();
}

String _$confluxServiceHash() => r'b49bb3d0e33a36ce542d19d41b80ceb91e6bacc4';

abstract class _$ConfluxService extends $AsyncNotifier<ConfluxService> {
  FutureOr<ConfluxService> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<ConfluxService>, ConfluxService>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ConfluxService>, ConfluxService>,
              AsyncValue<ConfluxService>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(VeilNet)
final veilNetProvider = VeilNetProvider._();

final class VeilNetProvider extends $AsyncNotifierProvider<VeilNet, Conflux?> {
  VeilNetProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'veilNetProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$veilNetHash();

  @$internal
  @override
  VeilNet create() => VeilNet();
}

String _$veilNetHash() => r'9c7d0bc617778abfc52b7923fec4a235f6c1479b';

abstract class _$VeilNet extends $AsyncNotifier<Conflux?> {
  FutureOr<Conflux?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<Conflux?>, Conflux?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Conflux?>, Conflux?>,
              AsyncValue<Conflux?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
