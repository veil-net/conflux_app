// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conflux_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Confluxes)
final confluxesProvider = ConfluxesProvider._();

final class ConfluxesProvider
    extends $AsyncNotifierProvider<Confluxes, List<Conflux>> {
  ConfluxesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'confluxesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$confluxesHash();

  @$internal
  @override
  Confluxes create() => Confluxes();
}

String _$confluxesHash() => r'a847686fe78c836abf983dccb2478dc683a39221';

abstract class _$Confluxes extends $AsyncNotifier<List<Conflux>> {
  FutureOr<List<Conflux>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Conflux>>, List<Conflux>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Conflux>>, List<Conflux>>,
              AsyncValue<List<Conflux>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(confluxByID)
final confluxByIDProvider = ConfluxByIDFamily._();

final class ConfluxByIDProvider
    extends $FunctionalProvider<AsyncValue<Conflux>, Conflux, FutureOr<Conflux>>
    with $FutureModifier<Conflux>, $FutureProvider<Conflux> {
  ConfluxByIDProvider._({
    required ConfluxByIDFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'confluxByIDProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$confluxByIDHash();

  @override
  String toString() {
    return r'confluxByIDProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Conflux> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Conflux> create(Ref ref) {
    final argument = this.argument as String;
    return confluxByID(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ConfluxByIDProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$confluxByIDHash() => r'5016b0cc2688247c590201bd32e706b5f5a051ca';

final class ConfluxByIDFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Conflux>, String> {
  ConfluxByIDFamily._()
    : super(
        retry: null,
        name: r'confluxByIDProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ConfluxByIDProvider call(String id) =>
      ConfluxByIDProvider._(argument: id, from: this);

  @override
  String toString() => r'confluxByIDProvider';
}

@ProviderFor(confluxRifts)
final confluxRiftsProvider = ConfluxRiftsProvider._();

final class ConfluxRiftsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Conflux>>,
          List<Conflux>,
          FutureOr<List<Conflux>>
        >
    with $FutureModifier<List<Conflux>>, $FutureProvider<List<Conflux>> {
  ConfluxRiftsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'confluxRiftsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$confluxRiftsHash();

  @$internal
  @override
  $FutureProviderElement<List<Conflux>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Conflux>> create(Ref ref) {
    return confluxRifts(ref);
  }
}

String _$confluxRiftsHash() => r'e9aa63ecfe1051a158fe7f51ea379c649cc198be';

@ProviderFor(confluxPortals)
final confluxPortalsProvider = ConfluxPortalsProvider._();

final class ConfluxPortalsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Conflux>>,
          List<Conflux>,
          FutureOr<List<Conflux>>
        >
    with $FutureModifier<List<Conflux>>, $FutureProvider<List<Conflux>> {
  ConfluxPortalsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'confluxPortalsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$confluxPortalsHash();

  @$internal
  @override
  $FutureProviderElement<List<Conflux>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Conflux>> create(Ref ref) {
    return confluxPortals(ref);
  }
}

String _$confluxPortalsHash() => r'c2a34225388bfc0aa0d5995adc2de3d7dbf804c4';
