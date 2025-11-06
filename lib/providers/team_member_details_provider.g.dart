// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_member_details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(teamMemberDetails)
const teamMemberDetailsProvider = TeamMemberDetailsFamily._();

final class TeamMemberDetailsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<TeamMemberDetails>>,
          List<TeamMemberDetails>,
          FutureOr<List<TeamMemberDetails>>
        >
    with
        $FutureModifier<List<TeamMemberDetails>>,
        $FutureProvider<List<TeamMemberDetails>> {
  const TeamMemberDetailsProvider._({
    required TeamMemberDetailsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'teamMemberDetailsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$teamMemberDetailsHash();

  @override
  String toString() {
    return r'teamMemberDetailsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<TeamMemberDetails>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<TeamMemberDetails>> create(Ref ref) {
    final argument = this.argument as String;
    return teamMemberDetails(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is TeamMemberDetailsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$teamMemberDetailsHash() => r'a03bcb414d60164421ea5e3c04d9e175cab0f323';

final class TeamMemberDetailsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<TeamMemberDetails>>, String> {
  const TeamMemberDetailsFamily._()
    : super(
        retry: null,
        name: r'teamMemberDetailsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TeamMemberDetailsProvider call(String team_id) =>
      TeamMemberDetailsProvider._(argument: team_id, from: this);

  @override
  String toString() => r'teamMemberDetailsProvider';
}
