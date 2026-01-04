// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'realm_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Realms)
const realmsProvider = RealmsProvider._();

final class RealmsProvider
    extends $StreamNotifierProvider<Realms, List<Realm>> {
  const RealmsProvider._()
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

String _$realmsHash() => r'330083f1407dead78dffe8d0c9ee3e2687e4a057';

abstract class _$Realms extends $StreamNotifier<List<Realm>> {
  Stream<List<Realm>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Realm>>, List<Realm>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Realm>>, List<Realm>>,
              AsyncValue<List<Realm>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(realm)
const realmProvider = RealmFamily._();

final class RealmProvider
    extends $FunctionalProvider<AsyncValue<Realm?>, Realm?, Stream<Realm?>>
    with $FutureModifier<Realm?>, $StreamProvider<Realm?> {
  const RealmProvider._({
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
  $StreamProviderElement<Realm?> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<Realm?> create(Ref ref) {
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

String _$realmHash() => r'c24168b236f7d6b6c6e6632908d0c0ba2e996800';

final class RealmFamily extends $Family
    with $FunctionalFamilyOverride<Stream<Realm?>, String> {
  const RealmFamily._()
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

@ProviderFor(ownedRealms)
const ownedRealmsProvider = OwnedRealmsProvider._();

final class OwnedRealmsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Realm>>,
          List<Realm>,
          FutureOr<List<Realm>>
        >
    with $FutureModifier<List<Realm>>, $FutureProvider<List<Realm>> {
  const OwnedRealmsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ownedRealmsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ownedRealmsHash();

  @$internal
  @override
  $FutureProviderElement<List<Realm>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Realm>> create(Ref ref) {
    return ownedRealms(ref);
  }
}

String _$ownedRealmsHash() => r'82702e6f4164e7acc90c5a33ac729a71ddc6dcb2';

@ProviderFor(privateRealms)
const privateRealmsProvider = PrivateRealmsProvider._();

final class PrivateRealmsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Realm>>,
          List<Realm>,
          FutureOr<List<Realm>>
        >
    with $FutureModifier<List<Realm>>, $FutureProvider<List<Realm>> {
  const PrivateRealmsProvider._()
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
const publicRealmsProvider = PublicRealmsProvider._();

final class PublicRealmsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Realm>>,
          List<Realm>,
          FutureOr<List<Realm>>
        >
    with $FutureModifier<List<Realm>>, $FutureProvider<List<Realm>> {
  const PublicRealmsProvider._()
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
