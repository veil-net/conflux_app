// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teams_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(teams)
const teamsProvider = TeamsProvider._();

final class TeamsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Team>>,
          List<Team>,
          Stream<List<Team>>
        >
    with $FutureModifier<List<Team>>, $StreamProvider<List<Team>> {
  const TeamsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'teamsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$teamsHash();

  @$internal
  @override
  $StreamProviderElement<List<Team>> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<Team>> create(Ref ref) {
    return teams(ref);
  }
}

String _$teamsHash() => r'12e209166bae6c94095f8b4ef82595ac7171aca1';

@ProviderFor(ownedTeams)
const ownedTeamsProvider = OwnedTeamsProvider._();

final class OwnedTeamsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Team>>,
          List<Team>,
          Stream<List<Team>>
        >
    with $FutureModifier<List<Team>>, $StreamProvider<List<Team>> {
  const OwnedTeamsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ownedTeamsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ownedTeamsHash();

  @$internal
  @override
  $StreamProviderElement<List<Team>> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<Team>> create(Ref ref) {
    return ownedTeams(ref);
  }
}

String _$ownedTeamsHash() => r'3f8de6dd8c790d3ae2abc96cf9445549230ddf23';
