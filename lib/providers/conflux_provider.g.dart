// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conflux_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Confluxes)
const confluxesProvider = ConfluxesProvider._();

final class ConfluxesProvider
    extends $AsyncNotifierProvider<Confluxes, List<Conflux>> {
  const ConfluxesProvider._()
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

String _$confluxesHash() => r'f2b17e6380b9bb9514306a01df1c69df400b75a3';

abstract class _$Confluxes extends $AsyncNotifier<List<Conflux>> {
  FutureOr<List<Conflux>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Conflux>>, List<Conflux>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Conflux>>, List<Conflux>>,
              AsyncValue<List<Conflux>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(confluxByID)
const confluxByIDProvider = ConfluxByIDFamily._();

final class ConfluxByIDProvider
    extends
        $FunctionalProvider<AsyncValue<Conflux?>, Conflux?, Stream<Conflux?>>
    with $FutureModifier<Conflux?>, $StreamProvider<Conflux?> {
  const ConfluxByIDProvider._({
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
  $StreamProviderElement<Conflux?> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<Conflux?> create(Ref ref) {
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

String _$confluxByIDHash() => r'62f4be6e235150e05dd358962cf3559b2f1e9650';

final class ConfluxByIDFamily extends $Family
    with $FunctionalFamilyOverride<Stream<Conflux?>, String> {
  const ConfluxByIDFamily._()
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
const confluxRiftsProvider = ConfluxRiftsProvider._();

final class ConfluxRiftsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Conflux>>,
          List<Conflux>,
          FutureOr<List<Conflux>>
        >
    with $FutureModifier<List<Conflux>>, $FutureProvider<List<Conflux>> {
  const ConfluxRiftsProvider._()
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

String _$confluxRiftsHash() => r'3a847ef0074849725edd0442a33a341bf74ff96f';

@ProviderFor(confluxPortals)
const confluxPortalsProvider = ConfluxPortalsProvider._();

final class ConfluxPortalsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Conflux>>,
          List<Conflux>,
          FutureOr<List<Conflux>>
        >
    with $FutureModifier<List<Conflux>>, $FutureProvider<List<Conflux>> {
  const ConfluxPortalsProvider._()
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
