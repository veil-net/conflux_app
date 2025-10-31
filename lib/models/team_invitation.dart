import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_invitation.g.dart';
part 'team_invitation.freezed.dart';

@freezed
abstract class TeamInvitation with _$TeamInvitation {
  factory TeamInvitation({
    required String id,
    required DateTime created_at,
    required String user_id,
    required String organisation_id,
    required String organisation_name,
    required String team_id,
    required String team_name,
    required String invited_user,
    required String invited_user_email,
    required String user_email,
    required String status,
  }) = _TeamInvitation;

  factory TeamInvitation.fromJson(Map<String, dynamic> json) => _$TeamInvitationFromJson(json);
}
