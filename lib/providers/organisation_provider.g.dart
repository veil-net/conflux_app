// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organisation_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Organisations)
const organisationsProvider = OrganisationsProvider._();

final class OrganisationsProvider
    extends $AsyncNotifierProvider<Organisations, List<Organisation>> {
  const OrganisationsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'organisationsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$organisationsHash();

  @$internal
  @override
  Organisations create() => Organisations();
}

String _$organisationsHash() => r'1b7b3d974707e4ef5ec7770b8c8c05785cb2f22e';

abstract class _$Organisations extends $AsyncNotifier<List<Organisation>> {
  FutureOr<List<Organisation>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<Organisation>>, List<Organisation>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Organisation>>, List<Organisation>>,
              AsyncValue<List<Organisation>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ownedOrganisation)
const ownedOrganisationProvider = OwnedOrganisationProvider._();

final class OwnedOrganisationProvider
    extends
        $FunctionalProvider<
          AsyncValue<Organisation?>,
          Organisation?,
          FutureOr<Organisation?>
        >
    with $FutureModifier<Organisation?>, $FutureProvider<Organisation?> {
  const OwnedOrganisationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ownedOrganisationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ownedOrganisationHash();

  @$internal
  @override
  $FutureProviderElement<Organisation?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<Organisation?> create(Ref ref) {
    return ownedOrganisation(ref);
  }
}

String _$ownedOrganisationHash() => r'156ec890f78ee0673c947fe1ec3d46ba25fde221';
