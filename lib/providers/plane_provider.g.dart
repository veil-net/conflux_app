// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plane_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Planes)
const planesProvider = PlanesProvider._();

final class PlanesProvider
    extends $StreamNotifierProvider<Planes, List<Plane>> {
  const PlanesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'planesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$planesHash();

  @$internal
  @override
  Planes create() => Planes();
}

String _$planesHash() => r'e698eb074612b436a032f990acadc3286b842906';

abstract class _$Planes extends $StreamNotifier<List<Plane>> {
  Stream<List<Plane>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Plane>>, List<Plane>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Plane>>, List<Plane>>,
              AsyncValue<List<Plane>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(plane)
const planeProvider = PlaneFamily._();

final class PlaneProvider
    extends $FunctionalProvider<AsyncValue<Plane?>, Plane?, Stream<Plane?>>
    with $FutureModifier<Plane?>, $StreamProvider<Plane?> {
  const PlaneProvider._({
    required PlaneFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'planeProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$planeHash();

  @override
  String toString() {
    return r'planeProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<Plane?> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<Plane?> create(Ref ref) {
    final argument = this.argument as String;
    return plane(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is PlaneProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$planeHash() => r'593c529874e659be2ecd65c248ad6f21ea6f78f1';

final class PlaneFamily extends $Family
    with $FunctionalFamilyOverride<Stream<Plane?>, String> {
  const PlaneFamily._()
    : super(
        retry: null,
        name: r'planeProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PlaneProvider call(String id) => PlaneProvider._(argument: id, from: this);

  @override
  String toString() => r'planeProvider';
}

@ProviderFor(ownedPlanes)
const ownedPlanesProvider = OwnedPlanesProvider._();

final class OwnedPlanesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Plane>>,
          List<Plane>,
          FutureOr<List<Plane>>
        >
    with $FutureModifier<List<Plane>>, $FutureProvider<List<Plane>> {
  const OwnedPlanesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ownedPlanesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ownedPlanesHash();

  @$internal
  @override
  $FutureProviderElement<List<Plane>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Plane>> create(Ref ref) {
    return ownedPlanes(ref);
  }
}

String _$ownedPlanesHash() => r'c1caac5db25cdf177434c4c5cb612cb11bb25e45';

@ProviderFor(privatePlanes)
const privatePlanesProvider = PrivatePlanesProvider._();

final class PrivatePlanesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Plane>>,
          List<Plane>,
          FutureOr<List<Plane>>
        >
    with $FutureModifier<List<Plane>>, $FutureProvider<List<Plane>> {
  const PrivatePlanesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'privatePlanesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$privatePlanesHash();

  @$internal
  @override
  $FutureProviderElement<List<Plane>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Plane>> create(Ref ref) {
    return privatePlanes(ref);
  }
}

String _$privatePlanesHash() => r'ac23b5685dbc46936d2a0230ee5f07cef0cf5dbe';

@ProviderFor(publicPlanes)
const publicPlanesProvider = PublicPlanesProvider._();

final class PublicPlanesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Plane>>,
          List<Plane>,
          FutureOr<List<Plane>>
        >
    with $FutureModifier<List<Plane>>, $FutureProvider<List<Plane>> {
  const PublicPlanesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'publicPlanesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$publicPlanesHash();

  @$internal
  @override
  $FutureProviderElement<List<Plane>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Plane>> create(Ref ref) {
    return publicPlanes(ref);
  }
}

String _$publicPlanesHash() => r'9eefafc4a10f595d8e325f9b2b8b328e1e2bf32a';
