// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_member_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TeamMembers)
const teamMembersProvider = TeamMembersFamily._();

final class TeamMembersProvider
    extends $StreamNotifierProvider<TeamMembers, List<TeamMember>> {
  const TeamMembersProvider._({
    required TeamMembersFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'teamMembersProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$teamMembersHash();

  @override
  String toString() {
    return r'teamMembersProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  TeamMembers create() => TeamMembers();

  @override
  bool operator ==(Object other) {
    return other is TeamMembersProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$teamMembersHash() => r'99624e354921371d93eee12803b5a695d967ad6e';

final class TeamMembersFamily extends $Family
    with
        $ClassFamilyOverride<
          TeamMembers,
          AsyncValue<List<TeamMember>>,
          List<TeamMember>,
          Stream<List<TeamMember>>,
          String
        > {
  const TeamMembersFamily._()
    : super(
        retry: null,
        name: r'teamMembersProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TeamMembersProvider call(String team_id) =>
      TeamMembersProvider._(argument: team_id, from: this);

  @override
  String toString() => r'teamMembersProvider';
}

abstract class _$TeamMembers extends $StreamNotifier<List<TeamMember>> {
  late final _$args = ref.$arg as String;
  String get team_id => _$args;

  Stream<List<TeamMember>> build(String team_id);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref as $Ref<AsyncValue<List<TeamMember>>, List<TeamMember>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<TeamMember>>, List<TeamMember>>,
              AsyncValue<List<TeamMember>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
