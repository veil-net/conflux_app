// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plane_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(planes)
const planesProvider = PlanesProvider._();

final class PlanesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Plane>>,
          List<Plane>,
          Stream<List<Plane>>
        >
    with $FutureModifier<List<Plane>>, $StreamProvider<List<Plane>> {
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
  $StreamProviderElement<List<Plane>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<Plane>> create(Ref ref) {
    return planes(ref);
  }
}

String _$planesHash() => r'3e83428f97ccabb68d2b32c933163511e950ea88';

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

String _$planeHash() => r'eace0285d6e294bbc458250340b39e4695ffe25a';

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
          Stream<List<Plane>>
        >
    with $FutureModifier<List<Plane>>, $StreamProvider<List<Plane>> {
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
  $StreamProviderElement<List<Plane>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<Plane>> create(Ref ref) {
    return ownedPlanes(ref);
  }
}

String _$ownedPlanesHash() => r'86820c172433a8c36123070cba24b0eefa384c8d';

@ProviderFor(privatePlane)
const privatePlaneProvider = PrivatePlaneProvider._();

final class PrivatePlaneProvider
    extends $FunctionalProvider<AsyncValue<Plane>, Plane, Stream<Plane>>
    with $FutureModifier<Plane>, $StreamProvider<Plane> {
  const PrivatePlaneProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'privatePlaneProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$privatePlaneHash();

  @$internal
  @override
  $StreamProviderElement<Plane> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<Plane> create(Ref ref) {
    return privatePlane(ref);
  }
}

String _$privatePlaneHash() => r'f80c8a07bc1e4c112fefa76dc27a340c09f66800';

@ProviderFor(publicPlane)
const publicPlaneProvider = PublicPlaneProvider._();

final class PublicPlaneProvider
    extends $FunctionalProvider<AsyncValue<Plane>, Plane, Stream<Plane>>
    with $FutureModifier<Plane>, $StreamProvider<Plane> {
  const PublicPlaneProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'publicPlaneProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$publicPlaneHash();

  @$internal
  @override
  $StreamProviderElement<Plane> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<Plane> create(Ref ref) {
    return publicPlane(ref);
  }
}

String _$publicPlaneHash() => r'1b8edc7e20d0c21090278853e587ab7d568dbaf9';
