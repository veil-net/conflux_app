// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'realm_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Realms)
final realmsProvider = RealmsProvider._();

final class RealmsProvider extends $AsyncNotifierProvider<Realms, List<Realm>> {
  RealmsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'realmsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$realmsHash();

  @$internal
  @override
  Realms create() => Realms();
}

String _$realmsHash() => r'd3a2b4c63c9439d4934e18903c3ccf9648a6aa8e';

abstract class _$Realms extends $AsyncNotifier<List<Realm>> {
  FutureOr<List<Realm>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Realm>>, List<Realm>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Realm>>, List<Realm>>,
              AsyncValue<List<Realm>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(privateRealms)
final privateRealmsProvider = PrivateRealmsProvider._();

final class PrivateRealmsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Realm>>,
          List<Realm>,
          FutureOr<List<Realm>>
        >
    with $FutureModifier<List<Realm>>, $FutureProvider<List<Realm>> {
  PrivateRealmsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'privateRealmsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$privateRealmsHash();

  @$internal
  @override
  $FutureProviderElement<List<Realm>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Realm>> create(Ref ref) {
    return privateRealms(ref);
  }
}

String _$privateRealmsHash() => r'dd80236661087fc6f5efb1576a43b84af6af1b5e';

@ProviderFor(publicRealms)
final publicRealmsProvider = PublicRealmsProvider._();

final class PublicRealmsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Realm>>,
          List<Realm>,
          FutureOr<List<Realm>>
        >
    with $FutureModifier<List<Realm>>, $FutureProvider<List<Realm>> {
  PublicRealmsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'publicRealmsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$publicRealmsHash();

  @$internal
  @override
  $FutureProviderElement<List<Realm>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Realm>> create(Ref ref) {
    return publicRealms(ref);
  }
}

String _$publicRealmsHash() => r'7e0cdcdd5be8d78cd01bb82abcc4ac5b613d4d13';

@ProviderFor(realm)
final realmProvider = RealmFamily._();

final class RealmProvider
    extends $FunctionalProvider<AsyncValue<Realm?>, Realm?, FutureOr<Realm?>>
    with $FutureModifier<Realm?>, $FutureProvider<Realm?> {
  RealmProvider._({
    required RealmFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'realmProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$realmHash();

  @override
  String toString() {
    return r'realmProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Realm?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Realm?> create(Ref ref) {
    final argument = this.argument as String;
    return realm(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is RealmProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$realmHash() => r'62c49eb33d61707790aa1c911a1b4051b9b24db8';

final class RealmFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Realm?>, String> {
  RealmFamily._()
    : super(
        retry: null,
        name: r'realmProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RealmProvider call(String id) => RealmProvider._(argument: id, from: this);

  @override
  String toString() => r'realmProvider';
}

@ProviderFor(SelectedRealm)
final selectedRealmProvider = SelectedRealmProvider._();

final class SelectedRealmProvider
    extends $AsyncNotifierProvider<SelectedRealm, Realm?> {
  SelectedRealmProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedRealmProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedRealmHash();

  @$internal
  @override
  SelectedRealm create() => SelectedRealm();
}

String _$selectedRealmHash() => r'87af5d40f405862814a84aafb3729377e4f8ade7';

abstract class _$SelectedRealm extends $AsyncNotifier<Realm?> {
  FutureOr<Realm?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<Realm?>, Realm?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Realm?>, Realm?>,
              AsyncValue<Realm?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(RealmFilter)
final realmFilterProvider = RealmFilterProvider._();

final class RealmFilterProvider extends $NotifierProvider<RealmFilter, String> {
  RealmFilterProvider._()
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
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(RealmPublicity)
final realmPublicityProvider = RealmPublicityProvider._();

final class RealmPublicityProvider
    extends $NotifierProvider<RealmPublicity, bool?> {
  RealmPublicityProvider._()
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
    final ref = this.ref as $Ref<bool?, bool?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool?, bool?>,
              bool?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
