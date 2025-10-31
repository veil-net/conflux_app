// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_invitations_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TeamInvitations)
const teamInvitationsProvider = TeamInvitationsProvider._();

final class TeamInvitationsProvider
    extends $StreamNotifierProvider<TeamInvitations, List<TeamInvitation>> {
  const TeamInvitationsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'teamInvitationsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$teamInvitationsHash();

  @$internal
  @override
  TeamInvitations create() => TeamInvitations();
}

String _$teamInvitationsHash() => r'c47e832934f7c34d453294878d1a4f60a8a2df4e';

abstract class _$TeamInvitations extends $StreamNotifier<List<TeamInvitation>> {
  Stream<List<TeamInvitation>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<AsyncValue<List<TeamInvitation>>, List<TeamInvitation>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<TeamInvitation>>,
                List<TeamInvitation>
              >,
              AsyncValue<List<TeamInvitation>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
