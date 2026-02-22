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

@ProviderFor(Veilnet)
final veilnetProvider = VeilnetProvider._();

final class VeilnetProvider
    extends $AsyncNotifierProvider<Veilnet, VeilnetState> {
  VeilnetProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'veilnetProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$veilnetHash();

  @$internal
  @override
  Veilnet create() => Veilnet();
}

String _$veilnetHash() => r'568770b4e01642d03df6d947c400fe061da5bb47';

abstract class _$Veilnet extends $AsyncNotifier<VeilnetState> {
  FutureOr<VeilnetState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<VeilnetState>, VeilnetState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<VeilnetState>, VeilnetState>,
              AsyncValue<VeilnetState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
