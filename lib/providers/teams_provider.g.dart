// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teams_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(teams)
final teamsProvider = TeamsProvider._();

final class TeamsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Team>>,
          List<Team>,
          Stream<List<Team>>
        >
    with $FutureModifier<List<Team>>, $StreamProvider<List<Team>> {
  TeamsProvider._()
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

String _$teamsHash() => r'a712dbfb8efdc0cb8ed0eb6361e6e76abbd869d3';

@ProviderFor(ownedTeams)
final ownedTeamsProvider = OwnedTeamsProvider._();

final class OwnedTeamsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Team>>,
          List<Team>,
          Stream<List<Team>>
        >
    with $FutureModifier<List<Team>>, $StreamProvider<List<Team>> {
  OwnedTeamsProvider._()
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

String _$ownedTeamsHash() => r'1bf2f8c22372ab9f2e6d2c9b9e8bad6bbd274762';
