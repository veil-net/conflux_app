// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plane_details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(planesDetails)
const planesDetailsProvider = PlanesDetailsProvider._();

final class PlanesDetailsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<PlaneDetails>>,
          List<PlaneDetails>,
          FutureOr<List<PlaneDetails>>
        >
    with
        $FutureModifier<List<PlaneDetails>>,
        $FutureProvider<List<PlaneDetails>> {
  const PlanesDetailsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'planesDetailsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$planesDetailsHash();

  @$internal
  @override
  $FutureProviderElement<List<PlaneDetails>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<PlaneDetails>> create(Ref ref) {
    return planesDetails(ref);
  }
}

String _$planesDetailsHash() => r'3cd1b91147e0613d8581bd370d4219ade7e3b266';

@ProviderFor(planeDetails)
const planeDetailsProvider = PlaneDetailsFamily._();

final class PlaneDetailsProvider
    extends
        $FunctionalProvider<
          AsyncValue<PlaneDetails?>,
          PlaneDetails?,
          FutureOr<PlaneDetails?>
        >
    with $FutureModifier<PlaneDetails?>, $FutureProvider<PlaneDetails?> {
  const PlaneDetailsProvider._({
    required PlaneDetailsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'planeDetailsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$planeDetailsHash();

  @override
  String toString() {
    return r'planeDetailsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<PlaneDetails?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<PlaneDetails?> create(Ref ref) {
    final argument = this.argument as String;
    return planeDetails(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is PlaneDetailsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$planeDetailsHash() => r'1e9a87b1b4d24a16b45da5d53a29e912675c8fb7';

final class PlaneDetailsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<PlaneDetails?>, String> {
  const PlaneDetailsFamily._()
    : super(
        retry: null,
        name: r'planeDetailsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PlaneDetailsProvider call(String id) =>
      PlaneDetailsProvider._(argument: id, from: this);

  @override
  String toString() => r'planeDetailsProvider';
}

@ProviderFor(privatePlaneDetails)
const privatePlaneDetailsProvider = PrivatePlaneDetailsProvider._();

final class PrivatePlaneDetailsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<PlaneDetails>>,
          List<PlaneDetails>,
          FutureOr<List<PlaneDetails>>
        >
    with
        $FutureModifier<List<PlaneDetails>>,
        $FutureProvider<List<PlaneDetails>> {
  const PrivatePlaneDetailsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'privatePlaneDetailsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$privatePlaneDetailsHash();

  @$internal
  @override
  $FutureProviderElement<List<PlaneDetails>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<PlaneDetails>> create(Ref ref) {
    return privatePlaneDetails(ref);
  }
}

String _$privatePlaneDetailsHash() =>
    r'07d1fe458577b05fac97a03172f18faa1deb16af';

@ProviderFor(publicPlaneDetails)
const publicPlaneDetailsProvider = PublicPlaneDetailsProvider._();

final class PublicPlaneDetailsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<PlaneDetails>>,
          List<PlaneDetails>,
          FutureOr<List<PlaneDetails>>
        >
    with
        $FutureModifier<List<PlaneDetails>>,
        $FutureProvider<List<PlaneDetails>> {
  const PublicPlaneDetailsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'publicPlaneDetailsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$publicPlaneDetailsHash();

  @$internal
  @override
  $FutureProviderElement<List<PlaneDetails>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<PlaneDetails>> create(Ref ref) {
    return publicPlaneDetails(ref);
  }
}

String _$publicPlaneDetailsHash() =>
    r'bcb31983f0609bfa614446d5fb12d18c263ef512';

@ProviderFor(SelectedPlaneDetails)
const selectedPlaneDetailsProvider = SelectedPlaneDetailsProvider._();

final class SelectedPlaneDetailsProvider
    extends $AsyncNotifierProvider<SelectedPlaneDetails, PlaneDetails?> {
  const SelectedPlaneDetailsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedPlaneDetailsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedPlaneDetailsHash();

  @$internal
  @override
  SelectedPlaneDetails create() => SelectedPlaneDetails();
}

String _$selectedPlaneDetailsHash() =>
    r'37562c30281d95eddd8d72dffc945ae5858a1137';

abstract class _$SelectedPlaneDetails extends $AsyncNotifier<PlaneDetails?> {
  FutureOr<PlaneDetails?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<PlaneDetails?>, PlaneDetails?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<PlaneDetails?>, PlaneDetails?>,
              AsyncValue<PlaneDetails?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(PlaneFilter)
const planeFilterProvider = PlaneFilterProvider._();

final class PlaneFilterProvider extends $NotifierProvider<PlaneFilter, String> {
  const PlaneFilterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'planeFilterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$planeFilterHash();

  @$internal
  @override
  PlaneFilter create() => PlaneFilter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$planeFilterHash() => r'3cf58b5b93980c63995ac1aaf7949bac9f2e27a1';

abstract class _$PlaneFilter extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(PlanePublicity)
const planePublicityProvider = PlanePublicityProvider._();

final class PlanePublicityProvider
    extends $NotifierProvider<PlanePublicity, bool?> {
  const PlanePublicityProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'planePublicityProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$planePublicityHash();

  @$internal
  @override
  PlanePublicity create() => PlanePublicity();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool?>(value),
    );
  }
}

String _$planePublicityHash() => r'1d40e7b8fb2d32bc93428f476e4e11054a2ef9c9';

abstract class _$PlanePublicity extends $Notifier<bool?> {
  bool? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<bool?, bool?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool?, bool?>,
              bool?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
