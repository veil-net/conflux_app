import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_member.freezed.dart';
part 'team_member.g.dart';

@freezed
abstract class TeamMember with _$TeamMember {
  factory TeamMember({
    required String id,
    required DateTime created_at,
    required String team_id,
    required String user_id,
  }) = _TeamMember;
  factory TeamMember.fromJson(Map<String, dynamic> json) => _$TeamMemberFromJson(json);
}