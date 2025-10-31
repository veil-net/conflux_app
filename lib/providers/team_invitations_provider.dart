import 'package:conflux/main.dart';
import 'package:conflux/models/team_invitation.dart';
import 'package:conflux/providers/api_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'team_invitations_provider.g.dart';

@riverpod
class TeamInvitations extends _$TeamInvitations {
  @override
  Stream<List<TeamInvitation>> build() {
    ref.keepAlive();
    return supabase
        .from('team_invitations')
        .stream(primaryKey: ['id'])
        .map(
          (event) =>
              event.map((data) => TeamInvitation.fromJson(data)).toList(),
        );
  }

  Future<void> acceptInvitation(String invitationId) async {
    final api = ref.read(apiProvider);
    await api.post('/org/team/invite/accept', queryParameters: {'invitation_id': invitationId});
    ref.invalidateSelf();
  }

  Future<void> rejectInvitation(String invitationId) async {
    final api = ref.read(apiProvider);
    await api.post('/org/team/invite/reject', queryParameters: {'invitation_id': invitationId});
    ref.invalidateSelf();
  }

  Future<void> cancelInvitation(String invitationId) async {
    final api = ref.read(apiProvider);
    await api.delete('/org/team/invite', queryParameters: {'invitation_id': invitationId});
    ref.invalidateSelf();
  }
}
