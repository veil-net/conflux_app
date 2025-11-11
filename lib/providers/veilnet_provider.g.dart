// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'veilnet_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ConfluxService)
const confluxServiceProvider = ConfluxServiceProvider._();

final class ConfluxServiceProvider
    extends $AsyncNotifierProvider<ConfluxService, ConfluxService> {
  const ConfluxServiceProvider._()
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

String _$confluxServiceHash() => r'5f8b14bc357a3d9407c8e4e6861d5b1fde4897e4';

abstract class _$ConfluxService extends $AsyncNotifier<ConfluxService> {
  FutureOr<ConfluxService> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<ConfluxService>, ConfluxService>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ConfluxService>, ConfluxService>,
              AsyncValue<ConfluxService>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(VeilNet)
const veilNetProvider = VeilNetProvider._();

final class VeilNetProvider extends $NotifierProvider<VeilNet, VeilNetState> {
  const VeilNetProvider._()
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

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(VeilNetState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<VeilNetState>(value),
    );
  }
}

String _$veilNetHash() => r'6ad16aeb0598eafffde01c560483c59dd4ddba26';

abstract class _$VeilNet extends $Notifier<VeilNetState> {
  VeilNetState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<VeilNetState, VeilNetState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<VeilNetState, VeilNetState>,
              VeilNetState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
