// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organisation_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(organisations)
const organisationsProvider = OrganisationsProvider._();

final class OrganisationsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Organisation>>,
          List<Organisation>,
          Stream<List<Organisation>>
        >
    with
        $FutureModifier<List<Organisation>>,
        $StreamProvider<List<Organisation>> {
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
  $StreamProviderElement<List<Organisation>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<Organisation>> create(Ref ref) {
    return organisations(ref);
  }
}

String _$organisationsHash() => r'2daafd2c2ee1a3da607c8b0a8b09686346ac4fef';

@ProviderFor(ownedOrganisation)
const ownedOrganisationProvider = OwnedOrganisationProvider._();

final class OwnedOrganisationProvider
    extends
        $FunctionalProvider<
          AsyncValue<Organisation?>,
          Organisation?,
          Stream<Organisation?>
        >
    with $FutureModifier<Organisation?>, $StreamProvider<Organisation?> {
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
  $StreamProviderElement<Organisation?> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<Organisation?> create(Ref ref) {
    return ownedOrganisation(ref);
  }
}

String _$ownedOrganisationHash() => r'83a1c9d8876d08324c52e5eba2b0a62ac037d1c3';
