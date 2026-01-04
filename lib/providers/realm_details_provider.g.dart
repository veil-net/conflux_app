// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'realm_details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(realmsDetails)
const realmsDetailsProvider = RealmsDetailsProvider._();

final class RealmsDetailsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<RealmDetails>>,
          List<RealmDetails>,
          FutureOr<List<RealmDetails>>
        >
    with
        $FutureModifier<List<RealmDetails>>,
        $FutureProvider<List<RealmDetails>> {
  const RealmsDetailsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'realmsDetailsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$realmsDetailsHash();

  @$internal
  @override
  $FutureProviderElement<List<RealmDetails>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<RealmDetails>> create(Ref ref) {
    return realmsDetails(ref);
  }
}

String _$realmsDetailsHash() => r'09be74ffd40b8ecf95bcc5c57088a3792fd128a2';

@ProviderFor(realmDetails)
const realmDetailsProvider = RealmDetailsFamily._();

final class RealmDetailsProvider
    extends
        $FunctionalProvider<
          AsyncValue<RealmDetails?>,
          RealmDetails?,
          FutureOr<RealmDetails?>
        >
    with $FutureModifier<RealmDetails?>, $FutureProvider<RealmDetails?> {
  const RealmDetailsProvider._({
    required RealmDetailsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'realmDetailsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$realmDetailsHash();

  @override
  String toString() {
    return r'realmDetailsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<RealmDetails?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<RealmDetails?> create(Ref ref) {
    final argument = this.argument as String;
    return realmDetails(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is RealmDetailsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$realmDetailsHash() => r'69d4788d4321d24cc82631f5e4c86196bf118f0b';

final class RealmDetailsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<RealmDetails?>, String> {
  const RealmDetailsFamily._()
    : super(
        retry: null,
        name: r'realmDetailsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RealmDetailsProvider call(String id) =>
      RealmDetailsProvider._(argument: id, from: this);

  @override
  String toString() => r'realmDetailsProvider';
}

@ProviderFor(privateRealmDetails)
const privateRealmDetailsProvider = PrivateRealmDetailsProvider._();

final class PrivateRealmDetailsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<RealmDetails>>,
          List<RealmDetails>,
          FutureOr<List<RealmDetails>>
        >
    with
        $FutureModifier<List<RealmDetails>>,
        $FutureProvider<List<RealmDetails>> {
  const PrivateRealmDetailsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'privateRealmDetailsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$privateRealmDetailsHash();

  @$internal
  @override
  $FutureProviderElement<List<RealmDetails>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<RealmDetails>> create(Ref ref) {
    return privateRealmDetails(ref);
  }
}

String _$privateRealmDetailsHash() =>
    r'282020668f09eea4307bbdcf11b44629be293678';

@ProviderFor(publicRealmDetails)
const publicRealmDetailsProvider = PublicRealmDetailsProvider._();

final class PublicRealmDetailsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<RealmDetails>>,
          List<RealmDetails>,
          FutureOr<List<RealmDetails>>
        >
    with
        $FutureModifier<List<RealmDetails>>,
        $FutureProvider<List<RealmDetails>> {
  const PublicRealmDetailsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'publicRealmDetailsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$publicRealmDetailsHash();

  @$internal
  @override
  $FutureProviderElement<List<RealmDetails>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<RealmDetails>> create(Ref ref) {
    return publicRealmDetails(ref);
  }
}

String _$publicRealmDetailsHash() =>
    r'e6da8ac2670c52bd68d064386fd6649eb2a49810';

@ProviderFor(SelectedRealmDetails)
const selectedRealmDetailsProvider = SelectedRealmDetailsProvider._();

final class SelectedRealmDetailsProvider
    extends $AsyncNotifierProvider<SelectedRealmDetails, RealmDetails?> {
  const SelectedRealmDetailsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedRealmDetailsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedRealmDetailsHash();

  @$internal
  @override
  SelectedRealmDetails create() => SelectedRealmDetails();
}

String _$selectedRealmDetailsHash() =>
    r'4e20513b1840756f6f0f7af55b3593ebf6302f62';

abstract class _$SelectedRealmDetails extends $AsyncNotifier<RealmDetails?> {
  FutureOr<RealmDetails?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<RealmDetails?>, RealmDetails?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<RealmDetails?>, RealmDetails?>,
              AsyncValue<RealmDetails?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(RealmFilter)
const realmFilterProvider = RealmFilterProvider._();

final class RealmFilterProvider extends $NotifierProvider<RealmFilter, String> {
  const RealmFilterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'realmFilterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$realmFilterHash();

  @$internal
  @override
  RealmFilter create() => RealmFilter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$realmFilterHash() => r'bba52094e6d711eddf8e82fc5c56a08a93f415cd';

abstract class _$RealmFilter extends $Notifier<String> {
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

@ProviderFor(RealmPublicity)
const realmPublicityProvider = RealmPublicityProvider._();

final class RealmPublicityProvider
    extends $NotifierProvider<RealmPublicity, bool?> {
  const RealmPublicityProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'realmPublicityProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$realmPublicityHash();

  @$internal
  @override
  RealmPublicity create() => RealmPublicity();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool?>(value),
    );
  }
}

String _$realmPublicityHash() => r'c4a05f0b278bec6e0cdf46fcda86511f36227b5f';

abstract class _$RealmPublicity extends $Notifier<bool?> {
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
